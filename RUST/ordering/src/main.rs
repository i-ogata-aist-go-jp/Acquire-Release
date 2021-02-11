use std::sync::Arc;
use std::sync::atomic::{AtomicUsize,AtomicBool,Ordering};
use std::sync::mpsc::{Sender,channel};
use std::thread;
use num_format::{Locale, ToFormattedString};
use std::time::Instant;

const MAX: i32 = 1_000_000;

fn main () {
    let mut detected: i32 = 0;
    // shared variables
    let exit = Arc::new(AtomicBool::new(false));
    let x = Arc::new(AtomicUsize::new(0));
    let y = Arc::new(AtomicUsize::new(0));
    let r1 = Arc::new(AtomicUsize::new(0));
    let r2 = Arc::new(AtomicUsize::new(0));
    // clones
    let exit_c1 = Arc::clone(&exit);
    let exit_c2 = Arc::clone(&exit);
    let x_c1 = Arc::clone(&x);
    let x_c2 = Arc::clone(&x);
    let y_c1 = Arc::clone(&y);
    let y_c2 = Arc::clone(&y);
    let r1_c1 = Arc::clone(&r1);
    let r2_c2 = Arc::clone(&r2);
    // a mpsc channels for start
    let (stx_c1,srx_c1) = channel();
    let (stx_c2,srx_c2) = channel();
    // a mpsc channel for end
    let (etx_c1,erx) = channel();
    let etx_c2 = Sender::clone(&etx_c1);
    // threads
    let t1 = thread::spawn(move|| {
        loop {
            let _ = srx_c1.recv().expect("Could not receive (1) start signal");  // Wait for signal
            if exit_c1.load(Ordering::Acquire) { break }
            while rand::random::<usize>() % 8 != 0 {}  // Random delay
            x_c1.store(1,Ordering::Relaxed);
            let r = y_c1.load(Ordering::Relaxed);
            r1_c1.store(r,Ordering::Relaxed);
            etx_c1.send(()).expect("Could not send (1) end signal");  // notify
        }
    });
    let t2 = thread::spawn(move|| {
        loop {
            let _ = srx_c2.recv().expect("Could not receive (2) start signal");  // Wait for signal
            if exit_c2.load(Ordering::Acquire) { break }
            while rand::random::<usize>() % 8 != 0 {}  // Random delay
            y_c2.store(1,Ordering::Relaxed);
            let r = x_c2.load(Ordering::Relaxed);
            r2_c2.store(r,Ordering::Relaxed);
            etx_c2.send(()).expect("Could not send (2) end signal");  // notify
        }
    });
    // Start measuring the elapsed time
    let start = Instant::now();
    // Repeat the experiment ad infinitum
    for iterations in 1..MAX {
        // Reset X and Y
        x.store(0,Ordering::Relaxed);
        y.store(0,Ordering::Relaxed);
        // Send start signal
        stx_c1.send(()).expect("Could not send (1) start signal");  // notify
        stx_c2.send(()).expect("Could not send (2) start signal");  // notify
        // Wait for both threads
        erx.recv().expect("Could not receive first end signal");
        erx.recv().expect("Could not receive second end signal");
        // Check if there was a simultaneous reorder
        if r1.load(Ordering::Relaxed) == 0 && r2.load(Ordering::Relaxed) == 0 {
            detected += 1;
            let sss = iterations.to_formatted_string(&Locale::en);
            println!("{:?} reorders detected after {:?} iterations", detected, sss);
        }
    }
    let end = start.elapsed();
    println!("{}.{:03}sec elapsed.", end.as_secs(), end.subsec_nanos() / 1_000_000);
    exit.store(true,Ordering::Release);
    stx_c1.send(()).expect("Could not send (1) exit signal");  // notify
    stx_c2.send(()).expect("Could not send (2) exit signal");  // notify
    let _res1 = t1.join();
    let _res2 = t2.join();
}
