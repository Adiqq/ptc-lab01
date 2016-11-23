onerror {quit -f}
vlib work
vlog -work work Lab1-optimal.vo
vlog -work work Lab1-optimal.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab1-optimal_vlg_vec_tst
vcd file -direction Lab1-optimal.msim.vcd
vcd add -internal Lab1-optimal_vlg_vec_tst/*
vcd add -internal Lab1-optimal_vlg_vec_tst/i1/*
add wave /*
run -all
