include $(DEVKITPPC)/wiiu_rules
all: GeometryDash.rpx
GeometryDash.rpx GeometryDash.elf
      $(ELF2RPX) $< $@
GeometryDash.elf:gd.o 
   $(cxx) $(LDFLAGS) -mrvl gd.o -l
gd.o: gd.cxx
  $(cxx) $(CFLAGS) -c gd.cxx -o g
