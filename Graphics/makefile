CC := g++
DEPS := 
OBJ	:= main.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CPPFLAGS)

main: $(OBJ)
	$(CC) $(CPPFLAGS) -o $@ $^

.PHONY: clean

clean:
	rm -rf *.o

