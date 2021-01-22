use std::sync::Arc;
use std::sync::atomic::{AtomicBool,AtomicI64,Ordering};
use std::thread;

fn main() {
    let ready = Arc::new(AtomicBool::new(false));
    let ready_clone = Arc::clone(&ready);
    let data = Arc::new(AtomicI64::new(0));
    let data_clone = Arc::clone(&data);
    // producer
    let producer = thread::spawn(move|| {
        data_clone.store(42,Ordering::Relaxed);
        ready_clone.store(true, Ordering::Release);
    });
    // consumer
    let consumer = thread::spawn(move|| {
        // Wait for the producer thread to release the lock
        while !ready.load(Ordering::Acquire) {}
        let r = data.load(Ordering::Relaxed);
        println!("Data is {:?}",r);
    });
    let _resp = producer.join();
    let _resc = consumer.join();
}
