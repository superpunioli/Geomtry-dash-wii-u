include $(DEVKITPPC)/wiiu_rules

all: GeometryDash.rpx

GeometryDash.rpx: GeometryDash.elf
	$(ELF2RPX) $< $@

GeometryDash.elf: gd.o
	$(CXX) gd.o -L$(WUT_ROOT)/lib -L$(PORTLIBS)/lib -lSDL2_mixer -lSDL2_image -lSDL2 -lwut -lm -o $@

gd.o: gd.cxx
	$(CXX) -O2 -Wall -I$(WUT_ROOT)/
