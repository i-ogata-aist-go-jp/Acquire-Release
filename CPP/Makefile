COMPILER  = g++
CFLAGS    =  -O3 -std=c++2a 
ifeq "$(shell getconf LONG_BIT)" "64"
  LDFLAGS = -pthread
else
  LDFLAGS = -pthread
endif
LIBS      =
INCLUDE   = -I./include
TARGET    = ./bin/$(shell basename `readlink -f .`)
SRCDIR    = ./src
ifeq "$(strip $(SRCDIR))" ""
  SRCDIR  = .
endif
SOURCES   = $(wildcard $(SRCDIR)/*.cpp)
OBJDIR    = ./obj
ifeq "$(strip $(OBJDIR))" ""
  OBJDIR  = .
endif
OBJECTS   = $(addprefix $(OBJDIR)/, $(notdir $(SOURCES:.cpp=.o)))
ASMDIR    = ./asm
ASMS      = $(addprefix $(ASMDIR)/, $(notdir $(SOURCES:.cpp=.s)))
DEPENDS   = $(OBJECTS:.o=.d)

$(TARGET): $(OBJECTS) $(LIBS) 
	$(COMPILER) -o $@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	-mkdir -p $(OBJDIR)
	$(COMPILER) $(CFLAGS) $(INCLUDE) -o $@ -c $<

$(ASMDIR)/%.s: $(SRCDIR)/%.cpp
	$(COMPILER) $(CFLAGS) $(INCLUDE) -o $@ -S $<

all: clean $(TARGET)

clean:
	-rm -f $(ASMS) $(OBJECTS) $(DEPENDS) $(TARGET)

-include $(DEPENDS)
