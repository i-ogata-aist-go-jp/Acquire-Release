use std::sync::Arc;
use std::sync::atomic::{AtomicUsize,Ordering};
use std::sync::mpsc::channel;
use std::thread;
use num_format::{Locale, ToFormattedString};

const MAX :u64 = 0x0000_ffff_ffff_ffff_u64;

fn main () {
    let mut detected: u64 = 0;
    // shared variables
    let x = Arc::new(AtomicUsize::new(0));
    let y = Arc::new(AtomicUsize::new(0));
    let r1 = Arc::new(AtomicUsize::new(0));
    let r2 = Arc::new(AtomicUsize::new(0));
    let x_c1 = Arc::clone(&x);
    let x_c2 = Arc::clone(&x);
    let y_c1 = Arc::clone(&y);
    let y_c2 = Arc::clone(&y);
    let r1_c1 = Arc::clone(&r1);
    let r2_c2 = Arc::clone(&r2);
    // channels
    let (stx_c1,srx_c1) = channel();
    let (stx_c2,srx_c2) = channel();
    let (etx_c1,erx_c1) = channel();
    let (etx_c2,erx_c2) = channel();
    // threads
    let t1 = thread::spawn(move|| {
        loop {
         srx_c1.recv().expect("Could not receive (1) start signal");  // Wait for signal
         while rand::random::<usize>() % 8 != 0 {}  // Random delay
         x_c1.store(1,Ordering::Relaxed);
         let r = y_c1.load(Ordering::Relaxed);
         r1_c1.store(r,Ordering::Relaxed);
         etx_c1.send(()).expect("Could not send (1) end signal");  // notify
        }
    });
    let t2 = thread::spawn(move|| {
        loop {
         srx_c2.recv().expect("Could not receive (2) start signal");  // Wait for signal
         while rand::random::<usize>() % 8 != 0 {}  // Random delay
         y_c2.store(1,Ordering::Relaxed);
         let r = x_c2.load(Ordering::Relaxed);
         r2_c2.store(r,Ordering::Relaxed);
         etx_c2.send(()).expect("Could not send (2) end signal");  // notify
        }

    });
    // Repeat the experiment ad infinitum
    for iterations in 1..MAX {
        // Reset X and Y
        x.store(0,Ordering::Relaxed);
        y.store(0,Ordering::Relaxed);
        // Signal both threads
        stx_c1.send(()).expect("Could not send (1) start signal");
        stx_c2.send(()).expect("Could not send (2) start signal");
        // Wait for both threads
        erx_c1.recv().expect("Could not receive (1) end signal");
        erx_c2.recv().expect("Could not receive (2) end signal");
        // Check if there was a simultaneous reorder
        if r1.load(Ordering::Relaxed) == 0 && r2.load(Ordering::Relaxed) == 0 {
            detected += 1;
            let sss = iterations.to_formatted_string(&Locale::en);
            println!("{:?} reorders detected after {:?} iterations", detected, sss);
        }
/* 
        if iterations % 1_000_000 == 0 {
           println!(".");
      }
*/
    }
    let _res1 = t1.join();
    let _res2 = t2.join();
}
