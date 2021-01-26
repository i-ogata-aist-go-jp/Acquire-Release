#include <atomic>
#include <thread>
#include <cassert>

std::atomic<bool> flag {false};
int any_value {0};

void set()
{
  any_value = 42;
  flag.store(true, std::memory_order_release);
}

void get()
{
  while (!flag.load(std::memory_order_acquire));
  assert(any_value == 42);
}

int main()
{
  std::thread a (set);
  get();
  a.join();
}
