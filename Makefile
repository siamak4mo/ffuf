GO=go
GOCC=go build
CCFLAGS=-v
GNU_GOCC=gccgo

_SRC=main.go
TARGET=ffuf


all: $(TARGET)
$(TARGET):
	$(GOCC) $(CCFLAGS) -o $(TARGET) $(_SRC)


gcc: $(_SRC)
	$(GOCC) $(CCFLAGS) -compiler $(GNU_GOCC) -o $(TARGET) $(_SRC)


.PHONY:
clean:
	rm -f $(TARGET)
