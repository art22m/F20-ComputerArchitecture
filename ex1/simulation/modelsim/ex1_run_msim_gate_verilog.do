transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/artmu/Desktop/ex1 {C:/Users/artmu/Desktop/ex1/halfAdderTestbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  halfAdder

do C:/Users/artmu/Desktop/ex1/Tcl_script1.tcl
