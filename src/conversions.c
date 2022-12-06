/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   conversions.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/05 22:25:06 by echavez-          #+#    #+#             */
/*   Updated: 2022/12/06 13:08:07 by echavez-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	p_print(unsigned long x)
{
	int	counter;

	counter = 0;
	if (x == 0)
		counter += ft_putstr_fd("(nil)", 1);
	else
	{
		counter += ft_putstr_fd("0x", 1);
		counter += ft_uputnbr_base(x, LHEX);
	}
	return (counter);
}

void	pconv(char conv)
{
	int	*counter;

	counter = &info()->counter;
	if (conv == 'd' || conv == 'i')
		*counter += ft_putnbr_base(va_arg(info()->ap, int), DECIMAL);
	else if (conv == '%')
		*counter += write(1, "%", 1);
	else if (conv == 'c')
		*counter += ft_putchar_fd(va_arg(info()->ap, int), 1);
	else if (conv == 's')
		*counter += ft_putstr_fd(va_arg(info()->ap, char *), 1);
	else if (conv == 'x')
		*counter += ft_uputnbr_base(va_arg(info()->ap, unsigned int), LHEX);
	else if (conv == 'X')
		*counter += ft_uputnbr_base(va_arg(info()->ap, unsigned int), UHEX);
	else if (conv == 'u')
		*counter += ft_uputnbr_base(va_arg(info()->ap, unsigned int), DECIMAL);
	else if (conv == 'p')
		*counter += p_print(va_arg(info()->ap, unsigned long));
}

t_info	*info(void)
{
	static t_info	x;

	return (&x);
}
