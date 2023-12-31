# ********************** Section for Macros (Variables) ********************** #
# Product file
NAME			= test
NAME1			= tmp
NAME2			= tmps
NAME3			= xor
NAME4			= dif

# Enumeration of files
SRC				= swap_test.c
ifeq ($(MAKECMDGOALS), tmp)
	SRC	= main.c swap_$(MAKECMDGOALS).c
endif
ifeq ($(MAKECMDGOALS), tmps)
	SRC	= main.c swap_$(MAKECMDGOALS).c
endif
ifeq ($(MAKECMDGOALS), xor)
	SRC	= main.c swap_$(MAKECMDGOALS).c
endif
ifeq ($(MAKECMDGOALS), dif)
	SRC	= main.c swap_$(MAKECMDGOALS).c
endif

# Enumeration of directories
SRCDIR			= ./src
OBJDIR			= ./obj

# Aliases of commands
CC				= cc
RM				= rm

# Command options (flags)
CFLAGS		= -Wall -Wextra -Werror
RMFLAGS			= -r
DEBUGCFLAGS		= -g -ggdb -fno-omit-frame-pointer
ifneq ($(OS), Darwin)
	DEBUGCFLAGS	+= -fstack-usage
endif
DEBUGLDFLAGS	= -fsanitize=address

# Redefination when the specific target
ifeq ($(MAKECMDGOALS), debug)
	ifneq ($(OS), Darwin)
		CPPFLAGS	+= $(DEBUGCFLAGS)
		LDFLAGS		+= $(DEBUGLDFLAGS)
	endif
	DEF				+= -D DEBUG_MODE=1
endif

# Macros to replace and/or integrate
SRCS			= $(addprefix $(SRCDIR)/, $(SRC))
SS				= $(addprefix $(OBJDIR)/, $(notdir $(SRCS:.c=.s)))
OBJS			= $(addprefix $(OBJDIR)/, $(notdir $(SRCS:.c=.o)))
DEPS			= $(addprefix $(OBJDIR)/, $(notdir $(SRCS:.c=.d)))

# ********************* Section for targets and commands ********************* #
# Phonies
.PHONY: all clean fclean re debug

# Mandatory targets
all: $(NAME)
clean:
	-$(RM) $(RMFLAGS) $(OBJDIR)
fclean: clean
	-$(RM) $(RMFLAGS) $(NAME) $(NAME1) $(NAME2) $(NAME3) $(NAME4)
re: fclean all

# Additional targets
debug: fclean all

# Recipes
$(NAME): $(SS) $(OBJS)
	-$(MAKE) $(NAME1)
	-$(MAKE) $(NAME2)
	-$(MAKE) $(NAME3)
	-$(MAKE) $(NAME4)
	$(CC) $(LDFLAGS) $(OBJS) -o $(NAME)
$(NAME1): $(SS) $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(NAME1)
$(NAME2): $(SS) $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(NAME2)
$(NAME3): $(SS) $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(NAME3)
$(NAME4): $(SS) $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(NAME4)
$(OBJDIR):
	@mkdir -p $@
$(OBJDIR)/%.s: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) -S $(DEF) -o $@ -c $<
$(OBJDIR)/%.o: $(OBJDIR)/%.s | $(OBJDIR)
	$(CC) $(CFLAGS) $(DEF) -o $@ -c $<

# Including and ignore .dep files when they are not found
-include $(DEPS)

# ******** ******** ******** ******** **** ******** ******** ******** ******** #
