onerror {quit -f}
vlib work
vlog -work work lab2-d.vo
vlog -work work lab2-d.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab2-d_vlg_vec_tst
vcd file -direction lab2-d.msim.vcd
vcd add -internal lab2-d_vlg_vec_tst/*
vcd add -internal lab2-d_vlg_vec_tst/i1/*
add wave /*
run -all
