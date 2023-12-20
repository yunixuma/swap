
void	my_swap(int *a, int *b)
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
