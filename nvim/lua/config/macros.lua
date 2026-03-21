local tab = vim.api.nvim_replace_termcodes("<tab>", true, true, true)
local esc = vim.api.nvim_replace_termcodes("<esc>", true, true, true)
local enter = vim.api.nvim_replace_termcodes("<enter>", true, true, true)

local makefile = "CC=gcc"..esc..
"oSRC=$(wildcard ./src/*.c)"..esc..
"oCFLAGS=-O3 -Werror -Wall -Wextra"..esc..
"oDFLAGS=-O0 -g -Wall -Wextra"..esc..
"oLFLAGS="..esc..
"oBUILD=build"..esc..
"oEXE=$(BUILD)/exe"..esc..
"oDEBUG=$(BUILD)/deb"..esc..
"oDEFS="..esc..
"o"..esc..
"oall: $(BUILD) $(EXE) $(DEBUG)"..esc..
"o"..esc..
"o$(EXE): $(SRC)"..esc..
"o$(CC) $(DEFS) $(CFLAGS) -o $(EXE) $(SRC) $(LFLAGS)"..esc..
"o"..esc..
"o$(DEBUG): $(SRC)"..esc..
"o$(CC) $(DEFS) $(DFLAGS) -o $(DEBUG) $(SRC) $(LFLAGS)"..esc..
"o"..esc..
"orun: $(EXE)"..esc..
"o./$(EXE)"..esc..
"o"..esc..
"odebug: $(DEBUG)"..esc..
"o./$(DEBUG)"..esc..
"o"..esc..
"o$(BUILD):"..esc..
"omkdir -p $(BUILD)"..esc..
"o"..esc..
"o.PHONY: clean"..esc..
"oclean:"..esc..
"orm -rf build"

vim.fn.setreg("m", "i"..makefile..esc)
