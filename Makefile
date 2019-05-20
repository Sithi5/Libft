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
SRCS_NAME = 		libft/ft_atoi.c \
					libft/ft_bzero.c \
					libft/ft_create_elem.c \
					libft/ft_isalnum.c \
					libft/ft_isalpha.c \
					libft/ft_isascii.c \
					libft/ft_isblank.c \
					libft/ft_iscntrl.c \
					libft/ft_isdigit.c \
					libft/ft_isgraph.c \
					libft/ft_isprint.c \
					libft/ft_itoa.c \
					libft/ft_lltoa.c				\
					libft/ft_lltoabase_signed.c 	\
					libft/ft_lltoabase_signless.c 	\
					libft/ft_lltoabase_unsigned.c 	\
					libft/ft_lstadd.c \
					libft/ft_lstdel.c \
					libft/ft_lstdelone.c \
					libft/ft_lstiter.c \
					libft/ft_lstmap.c \
					libft/ft_lstnew.c \
					libft/ft_memalloc.c \
					libft/ft_memccpy.c \
					libft/ft_memchr.c \
					libft/ft_memcmp.c \
					libft/ft_memcpy.c \
					libft/ft_memdel.c \
					libft/ft_memmove.c \
					libft/ft_memset.c \
					libft/ft_printtab_nb.c \
					libft/ft_printtab_str.c \
					libft/ft_putchar.c \
					libft/ft_putchar_fd.c \
					libft/ft_putcharerr.c \
					libft/ft_putendl.c \
					libft/ft_putendl_fd.c \
					libft/ft_putendlerr.c \
					libft/ft_putnbr.c \
					libft/ft_putnbr_fd.c \
					libft/ft_putnbrerr.c \
					libft/ft_putstr.c \
					libft/ft_putstr_fd.c \
					libft/ft_putstrerr.c \
					libft/ft_strcat.c \
					libft/ft_strchr.c \
					libft/ft_strclen.c \
					libft/ft_strclr.c \
					libft/ft_strcmp.c \
					libft/ft_strcpy.c \
					libft/ft_strdel.c \
					libft/ft_strdup.c \
					libft/ft_strdupd.c \
					libft/ft_strequ.c \
					libft/ft_strfill.c \
					libft/ft_striter.c \
					libft/ft_striteri.c \
					libft/ft_strjoin.c \
					libft/ft_strjoind.c \
					libft/ft_strdjoind.c \
					libft/ft_strlcat.c \
					libft/ft_strlen.c \
					libft/ft_strmap.c \
					libft/ft_strmapi.c \
					libft/ft_strncat.c \
					libft/ft_strncmp.c \
					libft/ft_strncpy.c \
					libft/ft_strnequ.c \
					libft/ft_strnew.c \
					libft/ft_strnstr.c \
					libft/ft_strrchr.c \
					libft/ft_strsplit.c \
					libft/ft_strstr.c \
					libft/ft_strsub.c \
					libft/ft_strsub_leakless.c \
					libft/ft_strtok.c \
					libft/ft_strtoupper_leakless.c \
					libft/ft_strtrim.c \
					libft/ft_tolower.c \
					libft/ft_toupper.c \
					libft/ft_strrev_leakless.c \
					libft/ft_stradd_leakless.c \
					libft/ft_dtoa.c \
					libft/ft_ltoa.c \
					libft/ft_longlen.c \
					libft/ft_pow.c \
					libft/ft_intlen.c \
					libft/ft_atol.c \
					libft/ft_lstlen.c 				\
													\
					get_next_line/get_next_line.c 	\
													\
					ft_printf/ft_printf.c \
					ft_printf/ft_printf_c.c \
					ft_printf/ft_printf_display.c \
					ft_printf/ft_printf_f.c \
					ft_printf/ft_printf_get_conv.c \
					ft_printf/ft_printf_get_flags.c \
					ft_printf/ft_printf_conv.c \
					ft_printf/ft_printf_d.c \
					ft_printf/ft_printf_get_modifier.c \
					ft_printf/ft_printf_get_precision.c \
					ft_printf/ft_printf_get_width.c \
					ft_printf/ft_printf_no_conv.c \
					ft_printf/ft_printf_o.c \
					ft_printf/ft_printf_p.c \
					ft_printf/ft_printf_parsing.c \
					ft_printf/all_for_p.c \
					ft_printf/ft_dtoa_printf.c \
					ft_printf/ft_printf_f_suite.c \
					ft_printf/ft_printf_u.c \
					ft_printf/ft_printf_percent.c \
					ft_printf/ft_printf_s.c \
					ft_printf/ft_printf_x.c \
									
SRCS_MNPF_NAME =	miniprintf.c			\
					ft_error_miniprintf.c	\
					ft_fill.c				\
					ft_csp.c				\
					ft_mod.c				\
					ft_diouxx.c				\
					ft_struct.c				\
					ft_width.c				\
					ft_accu.c				\


# Sources, objects and includes path
SRCS_PATH 		= 	./srcs/
SRCS_MNPF_PATH	= 	./srcs/miniprintf/
OBJS_PATH 		= 	./objs/
OBJS_MNPF_PATH 	= 	./objs/miniprintf/
INCS_PATH 		= 	./includes/

# Sources and objects
SRCS		= $(addprefix $(SRCS_PATH), $(SRCS_NAME))
SRCS_MNPF	= $(addprefix $(SRCS_MNPF_PATH), $(SRCS_MNPF_NAME))
OBJS		= $(patsubst $(SRCS_PATH)%.c, $(OBJS_PATH)%.o, $(SRCS))
OBJS_MNPF	= $(patsubst $(SRCS_MNPF_PATH)%.c, $(OBJS_MNPF_PATH)%.o, $(SRCS_MNPF))

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

$(NAME): $(OBJS) $(OBJS_MNPF)
	@ar rc $(NAME) $(OBJS) $(OBJS_MNPF)
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

$(OBJS_PATH)%.o: $(SRCS_PATH)%.c

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
	@mkdir -p objs/get_next_line
	@mkdir -p objs/ft_printf
	@$(CC) $(INCLUDES) -o $@ -c $<

clean:
	@echo
	@rm -rf $(OBJS_PATH) 2> /dev/null || true
	@echo -e "$(_YELLOW)Remove :\t$(_RED)" $(LDFLAGS)objs/
	@echo

fclean:
	@echo
	@rm -rf $(OBJS_PATH) 2> /dev/null || true
	@rm -f $(NAME)
	@echo -e "$(_YELLOW)Remove :\t$(_RED)" $(LDFLAGS)objs/
	@echo -e "$(_YELLOW)Remove :\t$(_RED)" $(LDFLAGS)$(NAME)
	@echo

re: fclean all

norme:
	@echo -ne "$(_GREEN)"
	@norminette $(SRCS_PATH)
	@norminette $(INCS_PATH)
	@echo -ne "$(_DEF)"

.PHONY: all clean fclean re norme
