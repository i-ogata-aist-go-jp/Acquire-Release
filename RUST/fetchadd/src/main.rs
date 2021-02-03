use std::sync::Arc;
use std::sync::atomic::{AtomicI64,Ordering};
use std::thread;

const G: i64 = 1000 * 1000 * 1000;
const LOOP: i64 =  10 * G ;

fn main() {
    let c = Arc::new(AtomicI64::new(0));
    let c_clone = Arc::clone(&c);
    let t = thread::spawn(move|| {
        for _ in 0..LOOP {
            c_clone.fetch_add(1,Ordering::Relaxed);
            }
        });
    t.join().unwrap();
    eprintln!("counter = {}G", c.load(Ordering::SeqCst) / G);
}
