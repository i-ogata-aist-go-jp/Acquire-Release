COMPILER  = c++
CFLAGS    =  -O3 -std=c++2a 
LDFLAGS = -pthread
LIBS      =
INCLUDE   = -I./include
# BASEPATH != readlink -f .
BASEPATH = $(shell ../tools/readlinkf-posix)
BASE = $(shell basename $(BASEPATH))
TARGET    = ./bin/$(BASE)
SRCDIR    = ./src
SOURCES   = $(wildcard $(SRCDIR)/*.cpp)
OBJDIR    = ./obj
OBJECTS   = $(addprefix $(OBJDIR)/, $(notdir $(SOURCES:.cpp=.o)))
ASMDIR    = ./asm
ASMS      = $(addprefix $(ASMDIR)/, $(notdir $(SOURCES:.cpp=.s)))
DEPENDS   = $(OBJECTS:.o=.d)

$(TARGET): $(OBJECTS) $(LIBS) $(ASMS)
	$(COMPILER) -o $@ $(OBJECTS) $(LIBS) $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	-mkdir -p $(OBJDIR)
	$(COMPILER) $(CFLAGS) $(INCLUDE) -o $@ -c $<

$(ASMDIR)/%.s: $(SRCDIR)/%.cpp
	$(COMPILER) $(CFLAGS) $(INCLUDE) -o $@ -S $<

all: clean $(TARGET)

clean:
	-rm -f $(ASMS) $(OBJECTS) $(DEPENDS) $(TARGET)

-include $(DEPENDS)
