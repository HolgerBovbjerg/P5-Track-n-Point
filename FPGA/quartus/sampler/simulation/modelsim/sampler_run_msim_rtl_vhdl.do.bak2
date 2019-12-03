transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/5. semester/P5/P5-Track-n-Point/src/sampler.vhd}

vcom -93 -work work {C:/Users/holge/OneDrive/AAU - Elektronik og IT/5. semester/P5/P5-Track-n-Point/quartus/sampler/../../test_benches/sampler_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  sampler_tb

add wave *
view structure
view signals
run 1 us
