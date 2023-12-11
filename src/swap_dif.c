
void	my_swap(int *a, int *b)
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
