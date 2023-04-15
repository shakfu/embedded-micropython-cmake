# This file is part of the MicroPython project, http://micropython.org/
# The MIT License (MIT)
# Copyright (c) 2022-2023 Damien P. George
#
# This is a very simple makefile that demonstrates how to build the embed port.
# All it needs to do is build all *.c files in the micropython_embed directory.
# This makefile would be replaced with your custom build system.

EMBED_DIR = micropython_embed
BUILD_DIR = build-embed
PROG = embed

CFLAGS += -I.
CFLAGS += -I$(EMBED_DIR)
CFLAGS += -I$(EMBED_DIR)/port
CFLAGS += -Wall -Og

SRC += main.c
SRC += $(wildcard $(EMBED_DIR)/*/*.c) $(wildcard $(EMBED_DIR)/*/*/*.c)
OBJ += $(SRC:.c=.o)

$(PROG): $(OBJ)
	$(CC) -o $@ $^

PHONY: clean reset

clean:
	/bin/rm -f $(OBJ) $(PROG)


reset: clean
	@rm -rf $(EMBED_DIR) $(BUILD_DIR) build
