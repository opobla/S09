# ==============================================================================
# Configuración del compilador y flags
# ==============================================================================
CC       := gcc
CFLAGS   := -Wall -Wextra -Werror -pedantic -std=c11 -O2
CPPFLAGS := -I. -MMD -MP
LDFLAGS  := 
LDLIBS   := 

# Nombre del binario final
TARGET   := app

# ==============================================================================
# Archivos y dependencias en el CWD (.)
# ==============================================================================
SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)
DEPS := $(OBJS:.o=.d)

# ==============================================================================
# Reglas principales
# ==============================================================================
.PHONY: all clean fclean re

all: $(TARGET)

# Enlazado del ejecutable
$(TARGET): $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) $(LDLIBS) -o $@

# Compilación de .c a .o en el CWD
%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

# Inclusión de cabeceras de dependencia generadas por -MMD
-include $(DEPS)

# ==============================================================================
# Limpieza
# ==============================================================================
clean:
	rm -f $(OBJS) $(DEPS)

fclean: clean
	rm -f $(TARGET)

re: fclean all
