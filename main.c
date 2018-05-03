# include <stdio.h>
# include <string.h>
# include <unistd.h>
# include "libfta.h"

int		main()
{
	//int			a;
	short int	a;
	char		dst[12] = "hello ";
	char		src[6] = "world";

	a = 55;
	printf("a before bzero: %d\n", a);
	ft_bzero(&a, sizeof(a));
	printf("a after bzero: %d\n", a);

	printf("src: %s\n", src);
	printf("dst: %s\n", dst);
	//strcat(dst, src);
	ft_strcat(dst, src);
	printf("dst after strcat: %s\n", dst);
	return (0);
}
