#include <iostream>
#include <atomic>
#include <thread>

int main()
{
	std::atomic<bool> ready(false);
	std::atomic<int> data(0);

	std::thread t([&ready,&data]{
		data.store(42, std::memory_order_relaxed); // must be executed before next "store release"
		ready.store(true, std::memory_order_release);
		});

	while (!ready.load(std::memory_order_acquire)) {}
	int r = data.load(std::memory_order_relaxed);  // must be executed after previous "load acquire"
	printf("data = %d\n",r);

	t.join();
}
