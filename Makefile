#!/bin/bash

SHELL = bash

# Executable name, can be change
NAME = libft.a

#Visual
VISUAL				=	yes
VISUALNUM			=	2

#choose compile mode, default = -Wall -Wextra -Werror
SANITIZE			=	no
NOERROR				=	yes
NOFLAG				=	no

# Sources names
SRCS_LIBFT_NAME		= 	ft_bzero.c \
						ft_isalnum.c \
						ft_isalpha.c \
						ft_isascii.c \
						ft_isblank.c \
						ft_iscntrl.c \
						ft_isdigit.c \
						ft_isgraph.c \
						ft_isprint.c \
										\
						ft_atoi.c \
						ft_dtoa.c \
						ft_ltoa.c \
						ft_atol.c \
						ft_itoa.c \
						ft_lltoa.c				\
						ft_lltoabase_signed.c 	\
						ft_lltoabase_signless.c 	\
						ft_lltoabase_unsigned.c 	\
													\
									\
						ft_memalloc.c \
						ft_memccpy.c \
						ft_memchr.c \
						ft_memcmp.c \
						ft_memcpy.c \
						ft_memdel.c \
						ft_memmove.c \
						ft_memset.c \
									\
						ft_printtab_nb.c \
						ft_printtab_str.c \
											\
						ft_putchar.c \
						ft_putchar_fd.c \
						ft_putcharerr.c \
						ft_putendl.c \
						ft_putendl_fd.c \
						ft_putendlerr.c \
						ft_putnbr.c \
						ft_putnbr_fd.c \
						ft_putnbrerr.c \
						ft_putstr.c \
						ft_putstr_fd.c \
						ft_putstrerr.c \
										\
						ft_strcat.c \
						ft_strchr.c \
						ft_strclen.c \
						ft_strclr.c \
						ft_strcmp.c \
						ft_strcpy.c \
						ft_strdel.c \
						ft_strdup.c \
						ft_strdupd.c \
						ft_strequ.c \
						ft_strfill.c \
						ft_striter.c \
						ft_striteri.c \
						ft_strjoin.c \
						ft_strjoind.c \
						ft_strdjoind.c \
						ft_strlcat.c \
						ft_strlen.c \
						ft_strmap.c \
						ft_strmapi.c \
						ft_strncat.c \
						ft_strncmp.c \
						ft_strncpy.c \
						ft_strnequ.c \
						ft_strnew.c \
						ft_strnstr.c \
						ft_strrchr.c \
						ft_strsplit.c \
						ft_strstr.c \
						ft_strsub.c \
						ft_strsub_leakless.c \
						ft_strtok.c \
						ft_strtoupper_leakless.c \
						ft_strtrim.c \
						ft_tolower.c \
						ft_toupper.c \
						ft_strrev_leakless.c \
						ft_stradd_leakless.c \
						ft_longlen.c \
						ft_pow.c \
						ft_intlen.c \
									\
						ft_create_elem.c \
						ft_lstadd.c \
						ft_lstdel.c \
						ft_lstdelone.c \
						ft_lstiter.c \
						ft_lstmap.c \
						ft_lstnew.c \
						ft_lstlen.c 		\
											\
						btree_apply_infix.c	\
						btree_apply_prefix.c\
						btree_apply_suffix.c\
						btree_create_node.c	\
						btree_lvl_count.c	\
						btree_insert_data.c	\
						btree_int_cmp.c		\
						btree_print.c		\
											\
						get_next_line.c 	\
													
SRCS_FT_PRINTF_NAME =	ft_printf.c \
						ft_printf_c.c \
						ft_printf_display.c \
						ft_printf_f.c \
						ft_printf_get_conv.c \
						ft_printf_get_flags.c \
						ft_printf_conv.c \
						ft_printf_d.c \
						ft_printf_get_modifier.c \
						ft_printf_get_precision.c \
						ft_printf_get_width.c \
						ft_printf_no_conv.c \
						ft_printf_o.c \
						ft_printf_p.c \
						ft_printf_parsing.c \
						all_for_p.c \
						ft_dtoa_printf.c \
						ft_printf_f_suite.c \
						ft_printf_u.c \
						ft_printf_percent.c \
						ft_printf_s.c \
						ft_printf_x.c 
									
SRCS_MNPF_NAME 		=	miniprintf.c			\
						ft_error_miniprintf.c	\
						ft_fill.c				\
						ft_csp.c				\
						ft_mod.c				\
						ft_diouxx.c				\
						ft_struct.c				\
						ft_width.c				\
						ft_accu.c				


# Sources, objects and includes path
SRCS_MNPF_PATH		= 	./srcs/miniprintf/
SRCS_LIBFT_PATH		= 	./srcs/libft/
SRCS_FT_PRINTF_PATH	= 	./srcs/ft_printf/
OBJS_PATH			=	./objs/
OBJS_MNPF_PATH 		= 	./objs/miniprintf/
OBJS_LIBFT_PATH 	= 	./objs/libft/
OBJS_FT_PRINTF_PATH = 	./objs/ft_printf/
INCS_PATH 			= 	./includes/

# Sources and objects
SRCS_MNPF		= $(addprefix $(SRCS_MNPF_PATH), $(SRCS_MNPF_NAME))
SRCS_LIBFT		= $(addprefix $(SRCS_LIBFT_PATH), $(SRCS_LIBFT_NAME))
SRCS_FT_PRINTF	= $(addprefix $(SRCS_FT_PRINTF_PATH), $(SRCS_FT_PRINTF_NAME))
OBJS_MNPF		= $(patsubst $(SRCS_MNPF_PATH)%.c, $(OBJS_MNPF_PATH)%.o, $(SRCS_MNPF))
OBJS_LIBFT		= $(patsubst $(SRCS_LIBFT_PATH)%.c, $(OBJS_LIBFT_PATH)%.o, $(SRCS_LIBFT))
OBJS_FT_PRINTF	= $(patsubst $(SRCS_FT_PRINTF_PATH)%.c, $(OBJS_FT_PRINTF_PATH)%.o, $(SRCS_FT_PRINTF))
# Compilation
ifeq ($(SANITIZE),yes)
	CC				=	gcc -Wall -Wextra -Werror -fsanitize=address \
						-Wall -Wextra -Werror
else ifeq ($(NOERROR),yes)
	CC				=	gcc -Wall -Wextra
else ifeq ($(NOFLAG),yes)
	CC				=	gcc
else
	CC				=	gcc -Wall -Wextra -Werror
endif
INCLUDES = -I $(INCS_PATH)
LDFLAGS = ./libft/

# Text format
_DEF = $'\033[0m
_END = $'\033[0m
_GRAS = $'\033[1m
_SOUL = $'\033[4m
_CLIG = $'\033[5m
_SURL = $'\033[7m

# Colors
_BLACK = $'\033[30m
_RED = $'\033[31m
_GREEN = $'\033[32m
_YELLOW = $'\033[33m
_BLUE = $'\033[34m
_PURPLE = $'\033[35m
_CYAN = $'\033[36m
_GREY = $'\033[37m

# Background
_IBLACK = $'\033[40m
_IRED = $'\033[41m
_IGREEN = $'\033[42m
_IYELLOW = $'\033[43m
_IBLUE = $'\033[44m
_IPURPLE = $'\033[45m
_ICYAN = $'\033[46m
_IGREY = $'\033[47m

verif = 0
verife = 0

all: $(NAME)

$(NAME): $(OBJS_LIBFT) $(OBJS_MNPF) $(OBJS_FT_PRINTF)
	@ar rc $(NAME) $(OBJS_LIBFT) $(OBJS_MNPF) $(OBJS_FT_PRINTF)
	@ranlib $(NAME)
	@echo -en "$(_GREEN)\t [OK]$(_DEF)\n\n"
ifeq ($(SANITIZE),yes)
	@echo "Génération en mode sanitize"
else ifeq ($(NOERROR),yes)
	@echo "Génération en mode noerror"
else ifeq ($(NOFLAG),yes)
	@echo "Génération en mode noflag"
else
	@echo "Génération en mode release"
endif
ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 1 ]] && echo true ), true)
	@echo "VISUAL VERSION 1"
endif
ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 2 ]] && echo true ), true)
	@echo "VISUAL VERSION 2"
endif

$(OBJS_MNPF_PATH)%.o: $(SRCS_MNPF_PATH)%.c

ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 1 ]] && echo true ), true)
	@if [[ $(verif) -eq 0 ]]; then printf "\n$(_GRAS)$(_CYAN)|===========================================>  miniprintf   |============================================>$(_DEF)\n";\
	else printf "\e[1A"; fi
	$(eval FNCT = $(words $(SRCS_MNPF)))
	$(eval verif = $(shell echo $(verif) + 1 | bc ))
	$(eval PCR = $(shell echo "$(verif) / $(FNCT) * 1000" | bc -l))
	@printf " \n$(_GREEN)[%4d%%]\t$(_DEF)%-40s $(_DEF)👉\t\t$(_GREEN) %-40s$(_DEF)" $(shell echo $(PCR) | sed -E "s:\.[0-9]{20}::") $< $@
	@printf "$(_DEF)"
endif
ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 2 ]] && echo true ), true)
	@echo "$(_END)$(_GREEN)[OK]\t$(_UNDER)$(_YELLOW)	\
	COMPILE :$(_END)$(_BOLD)$(_WHITE)\t$<"
endif

	@mkdir -p objs/miniprintf
	@$(CC) $(INCLUDES) -o $@ -c $<

$(OBJS_FT_PRINTF_PATH)%.o: $(SRCS_FT_PRINTF_PATH)%.c

ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 1 ]] && echo true ), true)
	@if [[ $(verif) -eq 0 ]]; then printf "\n$(_GRAS)$(_CYAN)|===========================================>  FT_PRINTF   |============================================>$(_DEF)\n";\
	else printf "\e[1A"; fi
	$(eval FNCT = $(words $(SRCS_MNPF)))
	$(eval verif = $(shell echo $(verif) + 1 | bc ))
	$(eval PCR = $(shell echo "$(verif) / $(FNCT) * 1000" | bc -l))
	@printf " \n$(_GREEN)[%4d%%]\t$(_DEF)%-40s $(_DEF)👉\t\t$(_GREEN) %-40s$(_DEF)" $(shell echo $(PCR) | sed -E "s:\.[0-9]{20}::") $< $@
	@printf "$(_DEF)"
endif
ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 2 ]] && echo true ), true)
	@echo "$(_END)$(_GREEN)[OK]\t$(_UNDER)$(_YELLOW)	\
	COMPILE :$(_END)$(_BOLD)$(_WHITE)\t$<"
endif

	@mkdir -p objs/ft_printf
	@$(CC) $(INCLUDES) -o $@ -c $<

$(OBJS_LIBFT_PATH)%.o: $(SRCS_LIBFT_PATH)%.c

ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 1 ]] && echo true ), true)
	@if [[ $(verife) -eq 0 ]]; then printf "\n$(_GRAS)$(_CYAN)|===========================================>  $(NAME)   |============================================>$(_DEF)\n";\
	else printf "\e[1A"; fi
	$(eval FNCT = $(words $(SRCS)))
	$(eval verife = $(shell echo $(verife) + 1 | bc ))
	$(eval PCR = $(shell echo "$(verife) / $(FNCT) * 1000" | bc -l))
	@printf " \n$(_GREEN)[%4d%%]\t$(_DEF)%-40s $(_DEF)👉\t\t$(_GREEN) %-40s$(_DEF)" $(shell echo $(PCR) | sed -E "s:\.[0-9]{20}::") $< $@
	@printf "$(_DEF)"
endif
ifeq ($(shell [[ $(VISUAL) == yes && $(VISUALNUM) == 2 ]] && echo true ), true)
	@echo "$(_END)$(_GREEN)[OK]\t$(_UNDER)$(_YELLOW)	\
	COMPILE :$(_END)$(_BOLD)$(_WHITE)\t$<"
endif

	@mkdir -p objs/libft
	@$(CC) $(INCLUDES) -o $@ -c $<

clean:
	rm -rf $(OBJS_PATH) 2> /dev/null || true
	@echo -e "$(_YELLOW)Remove :\t$(_RED)" $(LDFLAGS)objs/
	@echo -e "$(_END)"

fclean: clean
	@rm -f $(NAME)
	@echo -e "$(_YELLOW)Remove :\t$(_RED)" $(LDFLAGS)objs/
	@echo -e "$(_YELLOW)Remove :\t$(_RED)" $(LDFLAGS)$(NAME)
	@echo -e "$(_END)"

re: fclean all

norme:
	@echo -ne "$(_GREEN)"
	@norminette $(SRCS_PATH)
	@norminette $(INCS_PATH)
	@echo -ne "$(_DEF)"

.PHONY: all clean fclean re norme
