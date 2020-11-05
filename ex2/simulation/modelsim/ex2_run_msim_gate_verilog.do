transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex2.vo}

vlog -vlog01compat -work work +incdir+C:/Users/artmu/Desktop/ex2 {C:/Users/artmu/Desktop/ex2/fullAdderTestbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  fullAdderTestbench

do C:/Users/artmu/Desktop/ex2/Tcl_script1.tcl
