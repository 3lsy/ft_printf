/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/26 16:18:05 by echavez-          #+#    #+#             */
/*   Updated: 2022/12/06 02:56:29 by echavez-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "ft_printf.h"


int	main(void)
{
	int	a;

	a = 0;
	printf("real: [%c %d]\n", 'a', 4);
	printf("real: [%s]\n", "abcdefg hijklmnopqrs");
	printf("real: [%p]\n", a);
	printf("real: [%p]\n", &a);
	printf("real: [%d]\n", 12333);
	printf("real: [%i]\n", 12333);
	printf("real: [%u]\n", -1);
	printf("real: [%x]\n", 42);
	printf("real: [%X]\n", 42);
	printf("real: [%%]\n");

	ft_printf("\n");
	ft_printf("3lsy: [%c %d]\n", 'a', 4);
	ft_printf("3lsy: [%s]\n", "abcdefg hijklmnopqrs");
	ft_printf("3lsy: [%p]\n", a);
	ft_printf("3lsy: [%p]\n", &a);
	ft_printf("3lsy: [%d]\n", 12333);
	ft_printf("3lsy: [%i]\n", 12333);
	ft_printf("3lsy: [%u]\n", -1);
	ft_printf("3lsy: [%x]\n", 42);
	ft_printf("3lsy: [%X]\n", 42);
	ft_printf("3lsy: [%%]\n");
	return (0);
}
