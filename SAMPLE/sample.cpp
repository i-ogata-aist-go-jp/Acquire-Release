#include <atomic>

void producer(std::atomic<int> &data,std::atomic<int> &ready) {
  data.store(42, std::memory_order_relaxed); // must be executed before next "store release"
  ready.store(1, std::memory_order_release);
}

void consumer(std::atomic<int> &data,std::atomic<int> &ready) {
  int p = ready.load(std::memory_order_acquire);
  int q = data.load(std::memory_order_relaxed);  // must be executed after previous "load acquire"
}
