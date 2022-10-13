
#include <iostream>

extern "C" int AdderASM(int a, int b, int c);
extern "C" void MsgBoxA();

int main()
{

	//Some Edit



	int a = 1;
	int b = 1;
	int c = 1;
	int sum = AdderASM(a, b, c);

	MsgBoxA();

	printf("a: %d\n", a);
	printf("b: %d\n", b);
	printf("c: %d\n", c);
	printf("sum: %d\n", sum);
	system("pause");

	return 0;

}

