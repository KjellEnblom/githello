
SOURCES=hello.c
OBJECTS=$(SOURCES:.c=.o)

EXECUTABLE=githello

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $@

clean:
	$(RM) $(EXECUTABLE) *.o *~

install: $(EXECUTABLE)
	mkdir -p $(DESTDIR)
	install -m 0755 $<  $(DESTDIR)
