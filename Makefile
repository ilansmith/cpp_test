CFLAGS=-Wall -Werror -Wextra
LFLAGS=-lstdc++
APP=test

ifeq ($(DEBUG),y)
CFLAGS+=-g
endif

OBJS=test.o

%.o: %.cpp
	gcc $(CFLAGS) -c $<

$(APP): $(OBJS)
	gcc -o $@ $^ $(LFLAGS)

clean:
	rm -rf *.o

cleanall: clean
	rm -rf tags $(APP)

