transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/5. semester/P5/P5-Track-n-Point/quartus/sine_table/sin_table.vhd}

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/5. semester/P5/P5-Track-n-Point/quartus/sine_table/sin_table_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  sin_table_tb

add wave *
view structure
view signals
run 50 us
