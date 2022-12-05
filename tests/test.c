/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/26 16:18:05 by echavez-          #+#    #+#             */
/*   Updated: 2022/11/26 18:43:18 by echavez-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	main(void)
{
	int a = 42;

	printf("%c %d\n", 'a', 4);
	printf("%s\n", "abcdefg hijklmnopqrs");
	printf("%p\n", &a);
	printf("%d\n", 12333);
	printf("%i\n", 12333);
	printf("%u\n", -1);
	printf("%x\n", 42);
	printf("%X\n", 42);
	printf("%%\n");
	return (0);
}
