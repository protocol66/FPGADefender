#!/bin/bash -ve

ghdl -a *.vhd*
ghdl -e $(basename *tb.vhdl .vhdl)
ghdl -r $(basename *tb.vhdl .vhdl) --vcd=$(basename *tb.vhdl .vhdl).vcd --stop-time=500000ns
rm *work-*.cf
gtkwave *.vcd