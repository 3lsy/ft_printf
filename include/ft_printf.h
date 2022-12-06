/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/26 14:39:06 by echavez-          #+#    #+#             */
/*   Updated: 2022/12/06 02:48:50 by echavez-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdlib.h>
# include <unistd.h>
# include <stdarg.h>
# include "libft.h"

# define CONVERSIONS "dicsupxX%"
# define DECIMAL "0123456789"
# define LHEX DECIMAL"abcdef"
# define UHEX DECIMAL"ABCDEF"

typedef struct s_info {
	int		counter;
	va_list	ap;
}	t_info;

int		ft_printf(const char *format, ...);
void	pconv(char conv);
t_info	*info(void);

#endif
