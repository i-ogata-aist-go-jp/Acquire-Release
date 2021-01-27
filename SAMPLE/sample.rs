use std::sync::atomic::AtomicUsize;
use std::sync::atomic::Ordering::{Acquire, Relaxed, Release};
pub fn producer(p: &mut AtomicUsize, q: &mut AtomicUsize) ->  () {
    p.store(42,Relaxed);
    q.store(1,Release)
}
pub fn consumer(p: &mut AtomicUsize, q: &mut AtomicUsize) ->  usize {
    p.load(Acquire);
    q.load(Relaxed)
}
