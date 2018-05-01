# include <stdio.h>
# include "libfta.h"

int		main()
{
	//int			a;
	short int	a;

	printf("a before bzero: %d\n", a);
	ft_bzero(&a, sizeof(a));
	printf("a after bzero: %d\n", a);
	return (0);
}
