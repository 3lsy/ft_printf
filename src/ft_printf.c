/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/05 20:41:16 by echavez-          #+#    #+#             */
/*   Updated: 2022/12/05 23:37:02 by echavez-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

t_info	*info(void)
{
	static t_info x;

	return (&x);
}

void	v_printf(const char *format)
{
	int		i;

	i = 0;
	while (format[i])
	{
		if (format[i] == '%' && ft_strchr(CONVERSIONS, format[i + 1]) != NULL)
			pconv(format[(i++) + 1]);
		else if (format[i] == '\\' && format[i + 1])
			info()->counter += write(1, &format[i++], 2);
		else
			info()->counter += write(1, &format[i], 1);
		i++;
	}
}

int	ft_printf(const char *format, ...)
{
	info()->counter = 0;
	va_start(info()->ap, format);
	v_printf(format);
	va_end(info()->ap);
	return (info()->counter);
}
