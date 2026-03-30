TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(PWD)/four_bit_counter.v
TOPLEVEL = four_bit_counter
MODULE = four_bit_counter_tb
SIM = icarus
include $(shell cocotb-config --makefiles)/Makefile.sim