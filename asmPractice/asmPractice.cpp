
#include <iostream>

extern "C" void prac();
extern "C" int addThree(int a, int b, int c);

int main()
{
	prac();
	int res = addThree(1, 2, 3);
	std::cout << "addThree result: " << res << std::endl;
}
