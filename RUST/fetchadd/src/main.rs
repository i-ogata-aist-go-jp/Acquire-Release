use std::time::Instant;
use std::sync::atomic::{AtomicI64,Ordering};

const K: i64 = 1000;
const G: i64 = K * K * K;
const LOOP: i64 =  10 * G ;

fn count_up(k:Ordering) {
    let c = AtomicI64::new(0);
    let start = Instant::now();
    for _ in 0..LOOP {
        c.fetch_add(1,k);
        }
    let end = start.elapsed();
    println!("{}.{:03}sec elapsed.", end.as_secs(), end.subsec_nanos() / 1_000_000);
}

fn main() {
    count_up(Ordering::SeqCst);
    count_up(Ordering::Acquire);
    count_up(Ordering::Release);
    count_up(Ordering::Relaxed);
}
