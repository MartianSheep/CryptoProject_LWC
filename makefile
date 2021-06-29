CC = g++
MKFLAGS = -O3 -Wall # -DDEBUG

ascon: main state_s
	$(CC) -o $@ $(MKFLAGS) obj/main.o obj/state_s.o
main state_s:
	$(CC) -c $(MKFLAGS) src/$@.cpp -o obj/$@.o

clean:
	@del ascon* obj/*.o