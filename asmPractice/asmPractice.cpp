
#include <iostream>

extern "C" {
	void prac();
	int addThree(int a, int b, int c);
	int _mul(int a, int b);
	int _div(int a, int b);
	int allocate();
	int fib(int i, int* v1);
	//int fibLen;
	// useGlob
	long long gLongLong = 0x00FFFFFFFFFFFFFF;
	void glob(long long a);
	int getMin(int a, int b);
}

int main()
{
	/*
	prac();
	int res = addThree(1, 2, 3);
	std::cout << "addThree result: " << res << std::endl;
	res = _mul(2, 3); // supppose to be 6
	std::cout << "2 * 3 = " << res << std::endl;

	res = _div(6, 2); 
	std::cout << "6/2 = " << res << std::endl;

	res = allocate();
	std::cout << "0xffffffff xor 0xaaaaaaaa = " << std::hex  << res << std::endl;
	
	int v1 = 0;
	for (int i = 0; i < fibLen; i++) {
		fib(i, &v1);
		std::cout << i << " : " << v1 << std::endl;
	}
	// ============================================================
	glob(1);
	std::cout << "gLongLong : " << std::hex  << gLongLong << std::endl;
	// ============================================================

	int a = 2;
	int b = 4;
	std::cout << "min(2,4) = " << getMin(a, b) << std::endl;
	*/
}
