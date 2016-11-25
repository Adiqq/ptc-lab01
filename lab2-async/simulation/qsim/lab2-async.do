onerror {quit -f}
vlib work
vlog -work work lab2-async.vo
vlog -work work lab2-async.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab2-async_vlg_vec_tst
vcd file -direction lab2-async.msim.vcd
vcd add -internal lab2-async_vlg_vec_tst/*
vcd add -internal lab2-async_vlg_vec_tst/i1/*
add wave /*
run -all
