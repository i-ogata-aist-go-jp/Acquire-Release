#include <atomic>
std::atomic<int> data(0);
std::atomic<int> ready(0);
void producer() {
  data.store(42, std::memory_order_relaxed); // must be executed before next "store release"
  ready.store(1, std::memory_order_release);
}
void consumer() {
  while (!ready.load(std::memory_order_acquire)) {
  }
  int r = data.load(std::memory_order_relaxed);  // must be executed after previous "load acquire"
}
