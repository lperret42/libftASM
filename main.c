# include <ctype.h>
# include <stdio.h>
# include <string.h>
# include <unistd.h>
# include "libfta.h"

void	test_isalpha(void)
{
	int		i;
	int		nb_tested;
	int		is_alpha;
	int		c[11] = {'a', 'r', 'z', 'A', 'a', 'r', 'z', 23, 92, 193, 321};

	nb_tested = sizeof(c) / sizeof(*c);
	printf("************************ test_isalpha ************************\n\n");
	i = 0;
	while (i < nb_tested)
	{
		printf("c as integer: %d\n", c[i]);
		is_alpha = ft_isalpha(c[i]);
		printf("c is %s\n", is_alpha ? "alpha" : "not alpha");
		printf("c print as char: %c\n\n", c[i]);
		i++;
	}
	printf("**************************************************************\n");
}

void	test_isdigit(void)
{
	int		i;
	int		nb_tested;
	int		is_digit;
	int		c[9] = {'0', '4', '9', 47, 58, 23, 92, 193, 321};

	nb_tested = sizeof(c) / sizeof(*c);
	printf("************************ test_isdigit ************************\n\n");
	i = 0;
	while (i < nb_tested)
	{
		printf("c as integer: %d\n", c[i]);
		is_digit = ft_isdigit(c[i]);
		printf("c is %s\n", is_digit ? "digit" : "not digit");
		printf("c print as char: %c\n\n", c[i]);
		i++;
	}
	printf("**************************************************************\n");
}

void	test_isalnum(void)
{
	int		i;
	int		nb_tested;
	int		is_alnum;
	int		c[16] = {'a', 'r', 'z', 'A', 'a', 'r', 'z', 23, 92, 193, 321,
						'0', '4', '9', 47, 58};

	nb_tested = sizeof(c) / sizeof(*c);
	printf("************************ test_isalnum ************************\n\n");
	i = 0;
	while (i < nb_tested)
	{
		printf("c as integer: %d\n", c[i]);
		is_alnum = ft_isalnum(c[i]);
		printf("c is %s\n", is_alnum ? "alnum" : "not alnum");
		printf("c print as char: %c\n\n", c[i]);
		i++;
	}
	printf("**************************************************************\n");
}

void	test_isascii(void)
{
	int		i;
	int		nb_tested;
	int		is_ascii;
	int		c[10] = {0, 23, 47, 73, 96, 127, -1, 128, -531544, 21354653};

	nb_tested = sizeof(c) / sizeof(*c);
	printf("************************ test_isascii ************************\n\n");
	i = 0;
	while (i < nb_tested)
	{
		printf("c as integer: %d\n", c[i]);
		is_ascii = ft_isascii(c[i]);
		printf("c is %s\n\n", is_ascii ? "ascii" : "not ascii");
		i++;
	}
	printf("**************************************************************\n");
}

void	test_isprint(void)
{
	int		i;
	int		nb_tested;
	int		is_print;
	int		c[9] = {36, 50, 70, 100, 126, -1, -5132154, 127, 125634};

	nb_tested = sizeof(c) / sizeof(*c);
	printf("************************ test_isprint ************************\n\n");
	i = 0;
	while (i < nb_tested)
	{
		printf("c as integer: %d\n", c[i]);
		is_print = ft_isprint(c[i]);
		printf("c is %s\n", is_print ? "print" : "not print");
		printf("c print as char: %c\n\n", c[i]);
		i++;
	}
	printf("**************************************************************\n");
}

int		main()
{
	short int	a;
	char		dst[12] = "hello ";
	char		src[6] = "world";

	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	return 0;
	printf("a before bzero: %d\n", a);
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
