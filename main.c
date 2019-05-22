/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: judumay <judumay@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/22 16:02:56 by judumay           #+#    #+#             */
/*   Updated: 2019/05/22 16:04:17 by judumay          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./includes/libft.h"
#include <stdio.h>

int	main(int ac, char **av)
{
	int		i;
	char	*str;
	t_btree	*tree;

	i = 0;
	printf("start testing\n");
	tree = NULL;
	printf("test num %i : color miniprintf\n", i++);
	miniprintf("%%Test binary tree\n%%", "BLUE", "END");
	printf("test num %i : insert data\n", i++);
	btree_insert_data(&tree, (void *)5, &btree_int_cmp);
	btree_insert_data(&tree, (void *)5, &btree_int_cmp);
	btree_insert_data(&tree, (void *)0, &btree_int_cmp);
	btree_insert_data(&tree, (void *)-10, &btree_int_cmp);
	printf("test num %i : print tree\n", i++);
	btree_print(tree);
	printf("test num %i : ft_printf + gnl\n", i++);
	ft_printf("Waiting input for GNL : \n");
	get_next_line(0, &str);
	ft_printf("\nGNL = %s\n", str);
	return (0);
}
