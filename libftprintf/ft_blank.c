/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_blank.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amedvedi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/08 13:03:53 by amedvedi          #+#    #+#             */
/*   Updated: 2018/06/08 13:03:55 by amedvedi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_blank(char c)
{
	if (c == ' ')
		return (c);
	else if (c == '\t')
		return (c);
	else if (c == '\n')
		return (c);
	return (-1);
}
