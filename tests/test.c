/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/26 16:18:05 by echavez-          #+#    #+#             */
/*   Updated: 2022/12/06 12:54:32 by echavez-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "ft_printf.h"
#include <limits.h>

int	main(void)
{
	int	a;

	a = 0;
	printf("real c d: [%c %d]\n", 'a', 4);
	printf("(%d)\n", printf("real s: [%s]\n", "abcdefg hijklmnopqrs"));
	printf("real s: [%s]\n", NULL);
	printf("real p: [%p]\n", NULL);
	printf("real p: [%p]\n", &a);
	printf("real d: [%d]\n", 12333);
	printf("real i: [%i]\n", 12333);
	printf("real u: [%u]\n", -1);
	printf("real x: [%x]\n", 42);
	printf("real X: [%X]\n", 42);
	printf("real %: [%%]\n");
	printf("real long min u: [%u]\n", LONG_MIN);

	ft_printf("\n");
	ft_printf("3lsy c d: [%c %d]\n", 'a', 4);
	ft_printf("(%d)\n", ft_printf("3lsy s: [%s]\n", "abcdefg hijklmnopqrs"));
	ft_printf("3lsy s: [%s]\n", NULL);
	ft_printf("3lsy p: [%p]\n", NULL);
	ft_printf("3lsy p: [%p]\n", &a);
	ft_printf("3lsy d: [%d]\n", 12333);
	ft_printf("3lsy i: [%i]\n", 12333);
	ft_printf("3lsy u: [%u]\n", -1);
	ft_printf("3lsy x: [%x]\n", 42);
	ft_printf("3lsy X: [%X]\n", 42);
	ft_printf("3lsy %: [%%]\n");
	ft_printf("3lsy long min u: [%u]\n", LONG_MIN);
	return (0);
}
