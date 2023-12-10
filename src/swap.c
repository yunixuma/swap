# include <stdio.h>
# include <stdlib.h>

void	swap_tmp(int *a, int *b)
{
	int	tmp;

	tmp = *a;
	*a = *b;
	*b = tmp;
}

void	swap_xor(int *a, int *b)
{
	*a = *a ^ *b;
	*b = *a ^ *b;
	*a = *a ^ *b;
}

void	swap_dif(int *a, int *b)
{
	*a = *a - *b;
	*b = *a + *b;
	*a = *b - *a;
}

int	main(int argc, char *argv[])
{
	int	a;
	int	b;

	a = 3;
	b = -4;
	if (argc == 3)
	{
		a = atoi(argv[1]);
		b = atoi(argv[2]);
	}
	printf("a = %d, b = %d\n", a, b);
	swap_tmp(&a, &b);
	printf("a = %d, b = %d\n", a, b);
	swap_xor(&a, &b);
	printf("a = %d, b = %d\n", a, b);
	swap_dif(&a, &b);
	printf("a = %d, b = %d\n", a, b);
	return (0);
}
