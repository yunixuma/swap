# include <stdio.h>
# include <stdlib.h>
# include <time.h>

#define N_CYCLES	CLOCKS_PER_SEC * 1000
#define BITS_INT	32

void	swap_tmp(int *a, int *b)
{
	int	tmp;

	tmp = *a;
	*a = *b;
	*b = tmp;
}

void	swap_tmps(int *a, int *b)
{
	int	tmp0;
	int	tmp1;
	int	tmp2;
	int	tmp3;
	int	tmp4;
	int	tmp5;

	tmp0 = *a;
	tmp1 = tmp0;
	tmp2 = tmp1;
	tmp3 = tmp2;
	tmp4 = tmp3;
	tmp5 = tmp4;
	*a = *b;
	*b = tmp5;
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

void	swap_sum(int *a, int *b)
{
	*a = *a + *b;
	*b = *a - *b;
	*a = *a - *b;
}

int	my_sqrt(int n)
{
	int	ret;
	int	square;
	int	scale;

	scale = (BITS_INT >> 1);
	ret = (1 << scale);
	while (scale)
	{
		square = ret * ret;
		if (square == n)
			return (ret);
		if (square < n)
			ret += (1 << scale);
		else
			ret -= (1 << scale);
		scale--;
	}
	return (ret);
}

static void	test(int *a, int *b, void (*f)(int *, int *))
{
	clock_t	clock_begin;
	clock_t	clock_end;
	time_t	time_begin;
	time_t	time_end;

	for (int i = 0; i < my_sqrt(N_CYCLES); i++)
		f(a, b);
	time_begin = time(NULL);
	clock_begin = clock();
	for (int i = 0; i < N_CYCLES; i++)
		f(a, b);
	clock_end = clock();
	time_end = time(NULL);
	printf("[%p]\t%ld clocks\n", f, clock_end - clock_begin);
	printf("[%p]\t%ld seconds\n", f, time_end - time_begin);
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
	test(&a, &b, &swap_tmps);
	test(&a, &b, &swap_xor);
	test(&a, &b, &swap_dif);
	return (0);
}
