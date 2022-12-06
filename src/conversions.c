/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   conversions.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/05 22:25:06 by echavez-          #+#    #+#             */
/*   Updated: 2022/12/06 02:56:49 by echavez-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	pconv(char conv)
{
	if (conv == 'd' || conv == 'i')
		info()->counter += ft_putnbr_base(va_arg(info()->ap, int), DECIMAL);
	else if (conv == '%')
		info()->counter += write(1, "%", 1);
	else if (conv == 'c')
		info()->counter += ft_putchar_fd(va_arg(info()->ap, int), 1);
	else if (conv == 's')
		info()->counter += ft_putstr_fd(va_arg(info()->ap, char *), 1);
	else if (conv == 'x')
		info()->counter += ft_uputnbr_base(
			va_arg(info()->ap, unsigned int), LHEX);
	else if (conv == 'X')
		info()->counter += ft_uputnbr_base(
			va_arg(info()->ap, unsigned int), UHEX);
	else if (conv == 'u')
		info()->counter += ft_uputnbr_base(
			va_arg(info()->ap, unsigned int), DECIMAL);
	else if (conv == 'p')
	{
		info()->counter += ft_putstr_fd("0x", 1);
		info()->counter += ft_uputnbr_base(
			va_arg(info()->ap, unsigned long), LHEX);
	}
}
