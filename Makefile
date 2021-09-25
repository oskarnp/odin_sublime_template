PROJECT = projectname

ifeq ($(OS),Windows_NT)
WINDOWS = true
endif

ifdef WINDOWS
RM = cmd /Q /C DEL /S /Q
ODIN = Odin\\odin.exe
EXT = .exe
else
RM = rm -rf
ODIN = Odin/odin
EXT = .bin
endif

DEBUG_EXE = $(PROJECT)-debug$(EXT)
RELSAFE_EXE = $(PROJECT)-relsafe$(EXT)
RELFAST_EXE = $(PROJECT)-relfast$(EXT)

.PHONY: all check build_debug build_relfast build_relsafe run_debug run_relsafe run_relfast clean

all: build_debug build_relsafe build_relfast

ifndef TARGET
TARGET = .
endif

check:
	$(ODIN) check $(TARGET)

ifdef ASM
OFLAGS += -build-mode:asm
endif

ifdef WINDOWS
$(ODIN):
	cd Odin && build 1
else
$(ODIN):
	cd Odin && make release
endif

build_debug: $(ODIN)
	$(ODIN) build $(PROJECT) -debug -opt:0 -out:$(DEBUG_EXE) $(OFLAGS)
build_relsafe: $(ODIN)
	$(ODIN) build $(PROJECT) -opt:2 -out:$(RELSAFE_EXE) $(OFLAGS)
build_relfast: $(ODIN)
	$(ODIN) build $(PROJECT) -opt:2 -no-bounds-check -out:$(RELFAST_EXE) $(OFLAGS)

run_debug: build_debug
	$(DEBUG_EXE)
run_relsafe: build_relsafe
	$(RELSAFE_EXE)
run_relfast: build_relfast
	$(RELFAST_EXE)

clean:
	-$(RM) $(PROJECT)-debug.* $(PROJECT)-relsafe.* $(PROJECT)-relfast.*
