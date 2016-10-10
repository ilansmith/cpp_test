CFLAGS=-Wall -Werror -Wextra
APP=test

ifeq ($(DEBUG),y)
CFLAGS+=-g
endif

OBJS=test.o

%.o: %.cpp
	g++ $(CFLAGS) -c $<

$(APP): $(OBJS)
	g++ -o $@ $^

clean:
	rm -rf *.o

cleanall: clean
	rm -rf tags $(APP)

