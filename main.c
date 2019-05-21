#include "./includes/libft.h"

#include <stdio.h>

int     main(int ac, char **av)
{
    int     i = 0;
    t_btree *tree;

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
    printf("test num %i : ft_printf\n", i++);  
    ft_printf("test hehe\n%s\n", "tout vas bien");
    return (0);
}
