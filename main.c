/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mabouce <mabouce@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/22 16:02:56 by judumay           #+#    #+#             */
/*   Updated: 2019/06/05 12:13:24 by mabouce          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./includes/libft.h"
#include <stdio.h>


int		main(int ac, char **av)
{
	int		i;
	char	*str;
	t_btree	*tree;

	str = ft_strdup("test\n");
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
	//ft_printf("Waiting input for GNL : \n");
	//get_next_line(0, &str);
	//ft_printf("\nGNL = %s\n", str);
	ft_printf("this is a test%s%d\n", "\nc'est un test\n", 2);

	printf("test num %i : strremove_char\n", i++);
	free(str);
	str = ft_strdupd(ft_strremove_char("test de strremove_char, removing le 'H' minuscule\n", "h"));
	ft_putstr(str);
	free(str);
	str = ft_strdupd(ft_strremove_char("j'enleve les espaces de cette  \t\t\t\t   string et les S minuscule\n\n\n\n\n", " s\n\t"));
	ft_putstr(str);
	ft_putchar('\n');
		free(str);
	str = ft_strdupd(ft_strremove_char("j", "j"));
	ft_putstr("test strremove quand on remove tout");
	ft_putstr(str);
	ft_putchar('\n');










	btree_free(&tree);
	free(str);
	return (0);
}
