/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mabouce <mabouce@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/22 16:01:26 by judumay           #+#    #+#             */
/*   Updated: 2019/06/25 13:43:06 by mabouce          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
#define LIBFT_H

#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "get_next_line.h"
#include "miniprintf.h"
#include "stdbool.h"
#include "ftprintf.h"

typedef struct s_list
{
	void *content;
	void *data;
	int i;
	int *tab;
	size_t content_size;
	struct s_list *next;
} t_list;

typedef struct s_tab
{
	int *tab;
	size_t len;
	size_t size;
} t_tab;

typedef struct s_btree
{
	struct s_btree *left;
	struct s_btree *right;
	void *content;
} t_btree;

void *ft_memset(void *b, int c, size_t len);
void ft_bzero(void *s, size_t n);
void *ft_memcpy(void *dst, const void *src, size_t n);
void *ft_memccpy(void *dst, const void *src, int c, size_t n);
void *ft_memmove(void *dst, const void *src, size_t len);
void *ft_memchr(const void *s, int c, size_t n);
int ft_memcmp(const void *s1, const void *s2, size_t n);
void *ft_memalloc(size_t size);
void ft_memdel(void **ap);

size_t ft_strlen(const char *s);
char *ft_strdup(const char *s1);
char *ft_strdupd(char *s1);
char *ft_strcpy(char *dst, const char *src);
char *ft_strncpy(char *dst, const char *src, size_t len);
char *ft_strcat(char *s1, const char *s2);
char *ft_strncat(char *s1, const char *s2, size_t n);
size_t ft_strlcat(char *dst, const char *src, size_t size);
char *ft_strchr(const char *s, int c);
char *ft_strrchr(const char *s, int c);
char *ft_strstr(const char *haystack, const char *needle);
char *ft_strnstr(const char *haystack, const char *needle, size_t len);
int ft_strcmp(const char *s1, const char *s2);
int ft_strncmp(const char *s1, const char *s2, size_t n);
char *ft_strnew(size_t size);
void ft_strdel(char **as);
void ft_strclr(char *s);
void ft_striter(char *s, void (*f)(char *));
void ft_striteri(char *s, void (*f)(unsigned int, char *));
char *ft_strmap(char const *s, char (*f)(char));
char *ft_strmapi(char const *s, char (*f)(unsigned int, char));
char *ft_strtok(char *str, const char *sep);
int ft_strequ(char const *s1, char const *s2);
int ft_strnequ(char const *s1, char const *s2, size_t n);
char *ft_strsub(char const *s, unsigned int start, size_t len);
char *ft_strjoin(char const *s1, char const *s2);
char *ft_strjoind(char const *s1, char *s2);
char *ft_strdjoind(char *s1, char *s2);
char *ft_strtrim(char const *s);
char **ft_strsplit(char const *s, char c);
char **ft_strsplit_multi(char const *s, char *c);
int ft_is_sep(char c, char *sep);
int ft_strisnum(char *str);
void ft_strtabdel(char ***tab);
char *ft_strdjoin(char *s1, char const *s2);
char *ft_strdjoinc(char *s1, char c);
size_t ft_strfindc(const char *s, char c);

char *ft_strremove_char(char const *s, char *sep);

int ft_isalpha(int c);
int ft_isdigit(int c);
int ft_isalnum(int c);
int ft_isascii(int c);
int ft_isprint(int c);
int ft_toupper(int c);
int ft_tolower(int c);
int ft_isblank(int c);
int ft_iscntrl(int c);
int ft_isgraph(int c);

void ft_putchar(char c);
void ft_putchar_fd(char c, int fd);
void ft_putcharerr(char c);
void ft_putendl(char const *s);
void ft_putendlerr(char *str);
void ft_putstr(char const *s);
void ft_putstr_fd(char const *s, int fd);
void ft_putstrerr(char *str);
void ft_putendl_fd(char const *s, int fd);
void ft_putnbr(int n);
void ft_putnbr_fd(int n, int fd);
void ft_putnbrll(long long n);
void ft_putnbrerr(int nb);
void ft_printtab_nb(int *nb, int len);
void ft_printtab_str(char **str, int lenght);

int ft_atoi(const char *str);
char *ft_itoa(int n);
long ft_atol(const char *str);
char *ft_lltoa(long long n);
char *ft_lltoabase_signless(long long nbr, int base);
char *ft_lltoabase_signed(long long nbr, int base);
char *ft_lltoabase_unsigned(unsigned long long nbr, int base);
char *ft_dtoa(double n, int prec);
char *ft_ltoa(long n);
long long ft_atolli(const char *str);
int ft_atoi_base(const char *str, int base);
long long ft_atolli_base(const char *str, int base);
int ft_hexatoi(char *hex, int len);

t_list *ft_create_elem(void *data);
t_list *ft_create_elem_int(int i);
int ft_list_push_back(t_list **begin_list, void *data);
int ft_list_push_back_int(t_list **begin_list, int i);
int ft_list_push_front(t_list **begin_list, void *data);
int ft_list_push_front_int(t_list **begin_list, int i);
int ft_list_size(t_list *begin_list);
void ft_list_print_int(t_list *begin_list);
void ft_list_print_str(t_list *begin_list);
t_list *ft_list_last(t_list *begin_list);
void ft_list_remove_last_int(t_list **begin_list);
void ft_list_remove_last_data(t_list **begin_list);
void ft_list_remove_middle_int(t_list **begin_list, t_list *elem);
void ft_list_remove_middle_data(t_list **begin_list, t_list *elem);
void ft_list_remove_first_int(t_list **begin_list);
void ft_list_remove_first_data(t_list **begin_list);
t_list *ft_list_push_params(int ac, char **av);
void ft_list_clear(t_list **begin_list);
void ft_list_clear_data(t_list **begin_list);
t_list *ft_list_at(t_list *begin_list, unsigned int nbr);
void ft_list_reverse(t_list **begin_list);
void ft_list_foreach(t_list *begin_list, void (*f)(void *));
t_list *ft_lstnew(void const *content, size_t content_size);
void ft_lstdelone(t_list **alst, void (*del)(void *, size_t));
void ft_lstdel(t_list **alst, void (*del)(void *, size_t));
void ft_lstiter(t_list *lst, void (*f)(t_list *elem));
t_list *ft_lstmap(t_list *lst, t_list *(*f)(t_list *elem));
void ft_lstadd(t_list **alst, t_list *new);
int ft_lstlen(t_list *beg);

size_t ft_strclen(const char *s, char c);
char *ft_strfill(char *s, char c, size_t size);
char *ft_strsub_leakless(char *s, unsigned int start, size_t len);
char *ft_strtoupper_leakless(char *s);
char *ft_stradd_leakless(char *s1, char c);
char *ft_strrev_leakless(char *s);

int ft_longlen(long n);
long long ft_longlonglen(long long n);
int ft_pow(int x, int y);
int ft_intlen(int n);
void ft_inttabdel(int ***tab, int len);

t_btree *btree_create_node(void *content);
int btree_int_cmp(void *c1, void *c2);
void btree_apply_prefix(t_btree *root, void (*applyf)(void *));
void btree_apply_suffix(t_btree *root, void (*applyf)(void *));
void btree_apply_infix(t_btree *root, void (*applyf)(void *));
void btree_insert_data(t_btree **root, void *content, int (*cmpf)(void *, void *));
int btree_lvl_count(t_btree *root);
void btree_print(t_btree *root);
void btree_free(t_btree **root);

#endif
