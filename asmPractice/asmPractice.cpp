
#include <iostream>

extern "C" void prac();
extern "C" int addThree(int a, int b, int c);
extern "C" int _mul(int a, int b);
extern "C" int _div(int a, int b);
extern "C" int allocate();
extern "C" int fib(int i, int* v1);
extern "C" int fibLen;

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
	*/
	int v1 = 0;
	for (int i = 0; i < fibLen; i++) {
		fib(i, &v1);
		std::cout << i << " : " << v1 << std::endl;
	}
}
