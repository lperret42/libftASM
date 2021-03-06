/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lperret <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/16 13:19:57 by lperret           #+#    #+#             */
/*   Updated: 2018/05/16 13:42:57 by lperret          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include <ctype.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include "libfta.h"

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

void	test_strcat(void)
{
	char		*dst;
	char		*src;

	printf("************************ test_strcat *************************\n\n");
	dst = ft_strdup("hello      ");
	dst[5] = 0;
	src = ft_strdup("world");
	printf("src: %s\n", src);
	printf("dst: %s\n", dst);
	ft_strcat(dst, src);
	printf("dst after ft_strcat: %s\n", dst);
	dst[5] = 0;
	printf("ft_strcat: %s\n", ft_strcat(dst, src));

	dst = ft_strdup("hello 42");
	src = ft_strdup("");
	printf("src: %s\n", src);
	printf("dst: %s\n", dst);
	ft_strcat(dst, src);
	printf("dst after ft_strcat: %s\n", dst);
	printf("ft_strcat: %s\n", ft_strcat(dst, src));
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
		printf("c print as ascii: %c\n\n", c[i]);
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
		printf("c print as ascii: %c\n\n", c[i]);
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
		printf("c print as ascii: %c\n\n", c[i]);
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
		printf("c print as ascii: %c\n\n", c[i]);
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
		printf("c print as ascii: %c\n", c[i]);
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
		printf("c print as ascii: %c\n", c[i]);
		printf("ft_tolower(c) print as char: %c\n\n", to_upper);
		i++;
	}
	printf("**************************************************************\n");
}

void	test_strlen(void)
{
	char	str[6] = "hello";
	char	str2[22] = "hello all 42 students";
	char	str3[0] = "";

	printf("************************ test_strlen ************************\n\n");
	printf("%s: %ld\n", str, ft_strlen(str));
	printf("%s: %ld\n", str2, ft_strlen(str2));
	printf("%s: %ld\n", str3, ft_strlen(str3));
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
	printf("**************************************************************\n");
}

void	test_memset(void)
{
	int		n;
	int		*n2;
	char	*ret;

	printf("************************ test_memset ************************\n\n");
	n = 0;
	printf("n before memset: %d\n", n);
	n2 = ft_memset(&n, 1, sizeof(n));
	printf("n after memset: %d\n", n);
	printf("ret of memset: %d\n", *n2);
	ret = ft_memset(0, 65, 0);
	printf("ret: %s\n", ret);
	printf("**************************************************************\n");
}

void	test_memcpy(void)
{
	size_t		src;
	size_t		dst;
	size_t		*dst2;

	printf("************************ test_memcpy ************************\n\n");
	src = 1234567891011121314;
	printf("src: %lu\n", src);
	printf("dst before memcpy: %lu\n", dst);
	dst2 = ft_memcpy(&dst, &src, sizeof(dst));
	printf("dst after memcpy: %lu\n", dst);
	printf("ret of memcpy: %lu\n", *dst2);
	printf("**************************************************************\n");
}

void	test_strdup(void)
{
	char	*helloworld = "Hello World!";
	char	*s;

	printf("************************ test_strdup ************************\n\n");
	printf("helloworld: %s\n", helloworld);
	s = NULL;
	printf("s before strdup: %s\n", s);
	s = ft_strdup(helloworld);
	printf("s after strdup: %s\n", s);
	printf("**************************************************************\n");
}

void	test_cat(void)
{
	int		fd;
	char	*file1 = "Makefile";
	char	*file2 = "auteur";
	
	printf("************************ test_cat ***************************\n\n");
	if ((fd = open(file1, O_RDONLY)) == -1)
		return ;
	ft_cat(fd);
	write(1, "\n", 1);
	if ((fd = open(file2, O_RDONLY)) == -1)
		return ;
	ft_cat(fd);
	ft_cat(-5542);
	ft_cat(4553546);
	printf("**************************************************************\n");
}

void	test_strchr(void)
{
	char	*ret;

	printf("************************ test_strchr ************************\n\n");
	ret = strchr("helloworld 42 42", '4');
	printf("real ret: %s\n", ret);
	ret = ft_strchr("helloworld 42 42", '4');
	printf("my ret: %s\n", ret);
	printf("**************************************************************\n");
}

void	test_strrchr(void)
{
	char	*ret;

	printf("************************ test_strrchr ***********************\n\n");
	ret = strrchr("helloworld 42 42", '4');
	printf("real ret: %s\n", ret);
	ret = ft_strrchr("helloworld 42 42", '4');
	printf("my ret: %s\n", ret);
	printf("**************************************************************\n");
}

void	test_strcmp(void)
{
	char	tmp[2];
	printf("************************ test_strcmp ************************\n\n");
	tmp[0] = (char)235;
	tmp[1] = 0;
	printf("real: %d\n", strcmp("", tmp));
	printf("my: %d\n", ft_strcmp("", tmp));
	printf("real: %d\n", strcmp("qekrhgoieg", "qekartghth"));
	printf("my: %d\n", strcmp("qekrhgoieg", "qekartghth"));
	printf("real: %d\n", strcmp("42", "42"));
	printf("my: %d\n", ft_strcmp("42", "42"));
	printf("real: %d\n", strcmp("429", "42"));
	printf("my: %d\n", ft_strcmp("429", "42"));
	printf("**************************************************************\n");
}

void	test_strrev(void)
{
	char	*s;

	printf("************************ test_strrev ************************\n\n");
	s = ft_strdup("abcdef");
	printf("test before strrev: %s\n", s);
	s = ft_strrev(s);
	printf("test after strrev: %s\n\n", s);
	s = ft_strdup("");
	printf("test before strrev: %s\n", s);
	s = ft_strrev(s);
	printf("test after strrev: %s\n\n", s);
	s = ft_strdup("\n");
	printf("test before strrev: %s\n", s);
	s = ft_strrev(s);
	printf("test after strrev: %s\n\n", s);
	s = ft_strdup("kregokwlregggggweklrtle01252/*+=&%3;lwerg';k2r");
	printf("test before strrev: %s\n", s);
	s = ft_strrev(s);
	printf("test after strrev: %s\n\n", s);
	s = NULL;
	printf("test before strrev: %s\n", s);
	s = ft_strrev(s);
	printf("test after strrev: %s\n", s);
	printf("**************************************************************\n");
}

void	test_memchr(void)
{
	char	*ret;

	printf("************************ test_memchr ************************\n\n");
	ret = memchr("helloworld 42 42", '4', 12);
	printf("real ret: %s\n", ret);
	ret = ft_memchr("helloworld 42 42", '4', 12);
	printf("my ret: %s\n", ret);
	ret = memchr("helloworld 42 42", '4', 11);
	printf("real ret: %s\n", ret);
	ret = ft_memchr("helloworld 42 42", '4', 11);
	printf("my ret: %s\n", ret);
	printf("**************************************************************\n");
}

int		main()
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_puts();

	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();

	test_cat();

	test_strchr();
	test_strrchr();
	test_strcmp();
	test_strrev();
	test_memchr();
	return (0);
}
