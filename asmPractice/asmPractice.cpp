
#include <iostream>

extern "C" void prac();
extern "C" int addThree(int a, int b, int c);
extern "C" int _mul(int a, int b);
extern "C" int _div(int a, int b);

int main()
{
	prac();
	int res = addThree(1, 2, 3);
	std::cout << "addThree result: " << res << std::endl;
	res = _mul(2, 3); // supppose to be 6
	std::cout << "2 * 3 = " << res << std::endl;

	res = _div(6, 2); 
	std::cout << "6/2 = " << res << std::endl;
}
