/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jong <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/10 14:32:17 by jong              #+#    #+#             */
/*   Updated: 2023/07/11 11:25:09 by jong             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	i;

	if (n == 0)
	{
		return (0);
	}
	i = 0;
	while ((s1[i] == s2[i]) && s1[i] != '\0')
	{
		if (i < (n - 1))
		{
			i++;
		}
		else
		{
			return (0);
		}
	}
	return ((unsigned char)(s1[i]) - (unsigned char)(s2[i]));
}
