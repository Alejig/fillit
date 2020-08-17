/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sqrt_fillit.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aljigmon <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/29 19:05:23 by aljigmon          #+#    #+#             */
/*   Updated: 2019/03/29 19:05:46 by aljigmon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_sqrt_fillit(int nb)
{
	int	i;

	i = 0;
	while (i < nb)
	{
		if (i * i == nb)
			return (i);
		else if (i * i >= nb)
			return (i);
		i++;
	}
	return ((nb == 1 || nb == 2) ? 1 : 0);
}