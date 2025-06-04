CC = gcc
CFLAGS = -std=c89 -w -g
TARGET = smallc.exe
SRC = c_compiler.c

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

test: $(TARGET)
	gdb ./smallc.exe
clean:
	del /Q $(TARGET) 2>nul || rm -f $(TARGET)