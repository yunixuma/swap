# include <stdio.h>

void	swap(int *a, int *b)
{
	*a = *a - *b;
	*b = *a + *b;
	*a = *b - *a;
}
/*
	a' = a - b
	b' = a' + b
	   = (a - b) + b
	   = a
	a'' = b' - a'
		= a - (a - b)
		= b
*/

int	main(void)
{
	int	a;
	int	b;

	a = 3;
	b = -4;
	swap(&a, &b);
	printf("a = %d, b = %d\n", a, b);
	return (0);
}
