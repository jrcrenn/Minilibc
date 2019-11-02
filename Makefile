##
## EPITECH PROJECT, 2018
## MiniLibC
## File description:
## MiniLibC
##

NAME	=	libasm.so

LD	=	ld
ASM	=	nasm

ASMFLAGS	+=	-f elf64 -O3
LDFLAGS		+=	-shared -fPIC

SRCS	= $(addprefix src/, \
			strlen.asm		\
			strchr.asm		\
			rindex.asm		\
			memset.asm		\
			memcpy.asm		\
			strcmp.asm		\
			strncmp.asm		\
			strcspn.asm		\
			strpbrk.asm		\
			memmove.asm		\
			strcasecmp.asm)

SRC_BONUS = $(addprefix bonus/, \
						read.asm					\
						write.asm)

OBJS	=	$(SRCS:.asm=.o)
OBJ_BONUS		=	$(SRC_BONUS:.asm=.o)

all:	$(NAME)

$(NAME):	$(OBJS) $(OBJ_BONUS)
	$(LD) $(LDFLAGS) $(OBJS) $(OBJ_BONUS) -o $(NAME)

clean:
	 rm -f $(OBJS) $(OBJ_BONUS)

fclean:	clean
	rm -f $(RM) $(NAME)

re:	fclean all

%.o : %.asm
	$(ASM) $(ASMFLAGS) -o $@ $<

.PHONY:	all clean fclean re
