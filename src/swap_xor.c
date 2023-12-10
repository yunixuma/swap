
void	swap(int *a, int *b)
{
	*a = *a ^ *b;
	*b = *a ^ *b;
	*a = *a ^ *b;
}
/*
	a' = a ^ b
	b' = a' ^ b
	   = (a ^ b) ^ b
	   = a ^ (b ^ b)
	   = a ^ 0
	   = a
	a'' = a' ^ b'
		= (a ^ b) ^ a
		= (a ^ a) ^ b
		= 0 ^ b
		= b
*/
