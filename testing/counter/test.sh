#!/bin/bash -ve

ghdl -a *.vhd*
ghdl -e $(basename *tb.vhd .vhd)
ghdl -r $(basename *tb.vhd .vhd) --vcd=$(basename *tb.vhd .vhd).vcd --stop-time=300ns
rm *work-*.cf
gtkwave *.vcd