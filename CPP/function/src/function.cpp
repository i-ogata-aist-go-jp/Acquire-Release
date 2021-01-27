#include <iostream>
#include <atomic>
#include <thread>

void producer(std::atomic<bool>& r, std::atomic<int>& d) {
	d.store(42, std::memory_order_relaxed); // must be executed before next "store release"
	r.store(true, std::memory_order_release);
}

void consumer(std::atomic<bool>& r, std::atomic<int>& d) {
	int reg;
	while (!r.load(std::memory_order_acquire)) {
	}
	reg = d.load(std::memory_order_relaxed);  // must be executed after previous "load acquire"
	printf("data = %d\n",reg);
}

int main()
{
	std::atomic<bool> ready(false);
	std::atomic<int> data(0);

	std::thread t(producer,std::ref(ready),std::ref(data));
	consumer(std::ref(ready),std::ref(data));
	t.join();
}
