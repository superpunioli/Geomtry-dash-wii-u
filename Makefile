include $(DEVKITPPC)/wiiu_rules
all: GeometryDash.rpx
GeometryDash.rpx GeometryDash.elf
      $(ELF2RPX) $< $@
GeometryDash.elf:gd.o 
   $(CXX) $(LDFLAGS) -mrvl gd.o -l wut -lSDL2
       gd.o: gd.cxx
  $(CXX) $(CFLAGS) -c gd.cxx -o gd.o
