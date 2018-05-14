# include <ctype.h>
# include <stdio.h>
# include <string.h>
# include <unistd.h>
# include "libfta.h"

void	test_strcat(void)
{
	char		dst[12] = "hello ";
	char		*dst_after_cat;
	char		src[6] = "world";

	printf("************************ test_strcat *************************\n\n");
	printf("src: %s\n", src);
	printf("dst: %s\n", dst);
	dst_after_cat = ft_strcat(dst, src);
	printf("dst after strcat: %s\n", dst_after_cat);
	printf("**************************************************************\n");
}

void	test_bzero(void)
{
	unsigned long	nb;

	printf("************************ test_bzero **************************\n\n");
	nb = 15549323115;
	printf("nb before bzero: %ld\n", nb);
	ft_bzero(&nb, sizeof(nb));
	printf("nb after bzero: %ld\n", nb);
	printf("**************************************************************\n");
}

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

void	test_toupper(void)
{
	int		i;
	int		nb_tested;
	int		to_upper;
	int		c[12] = {'a', 'r', 'z', 'z' + 1, 'A' -1, 'A', 'J', 'Z', 'Z' + 1, 0,
															-154653, 12563};

	nb_tested = sizeof(c) / sizeof(*c);
	printf("************************ test_toupper ************************\n\n");
	i = 0;
	while (i < nb_tested)
	{
		to_upper = ft_toupper(c[i]);
		printf("c as integer: %d\n", c[i]);
		printf("ft_toupper(c) as integer: %d\n", to_upper);
		printf("c print as char: %c\n", c[i]);
		printf("ft_toupper(c) print as char: %c\n\n", to_upper);
		i++;
	}
	printf("**************************************************************\n");
}

void	test_tolower(void)
{
	int		i;
	int		nb_tested;
	int		to_upper;
	int		c[12] = {'A', 'R', 'Z', 'Z' + 1, 'a' -1, 'a', 'j', 'z', 'z' + 1, 0,
															-154653, 12563};

	nb_tested = sizeof(c) / sizeof(*c);
	printf("************************ test_tolower ************************\n\n");
	i = 0;
	while (i < nb_tested)
	{
		to_upper = ft_tolower(c[i]);
		printf("c as integer: %d\n", c[i]);
		printf("ft_tolower(c) as integer: %d\n", to_upper);
		printf("c print as char: %c\n", c[i]);
		printf("ft_tolower(c) print as char: %c\n\n", to_upper);
		i++;
	}
	printf("**************************************************************\n");
}

void	test_strlen(void)
{
	char	str[6] = "hello";
	char	str2[22] = "hello all 42 students";

	printf("************************ test_strlen ************************\n\n");
	printf("%s: %ld\n", str, ft_strlen(str));
	printf("%s: %ld\n", str2, ft_strlen(str2));
	printf("**************************************************************\n");
}

void	test_puts(void)
{
	int		n;

	printf("************************ test_puts **************************\n\n");
	n = puts("I am puts");
	printf("n from puts(I am puts): %d\n", n);
	n = puts("42");
	printf("n from puts(42): %d\n", n);
	n = puts(NULL);
	printf("n from puts(NULL): %d\n\n", n);
	n = ft_puts("I am puts");
	printf("n from ft_puts(I am puts): %d\n", n);
	n = ft_puts("42");
	printf("n from ft_puts(42): %d\n", n);
	n = ft_puts(NULL);
	printf("n from ft_puts(NULL): %d\n", n);
	printf("EOF: %d\n", EOF);
	printf("**************************************************************\n");
}

int		main()
{
	int		var_main;

	var_main = 15263;
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_strlen();
	test_puts();
	printf("var_main: %d\n", var_main);
	return (0);
}
