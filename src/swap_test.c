# include <stdio.h>
# include <stdlib.h>
# include <time.h>

#define N_CYCLES	CLOCKS_PER_SEC

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

void	test(int *a, int *b, void (*f)(int *, int *))
{
	clock_t	clock_begin;
	clock_t	clock_end;

	clock_begin = clock();
	for (int i = 0; i < N_CYCLES; i++)
		f(a, b);
	clock_end = clock();
	printf("[%p]\t%ld clocks\n", f, clock_end - clock_begin);
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
	test(&a, &b, &swap_tmp);
	test(&a, &b, &swap_xor);
	test(&a, &b, &swap_dif);
	return (0);
}
