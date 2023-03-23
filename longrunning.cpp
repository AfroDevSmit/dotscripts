#include <iostream>
using namespace std;

int main() {
	for (int i = 0; i < 100000000000000000000000; i++) {
		if (i % 10000 == 0)
			cout << "Current status:" << i << endl;
	}
	return 0;
}
