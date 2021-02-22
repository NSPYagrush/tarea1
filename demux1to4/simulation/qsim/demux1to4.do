onerror {exit -code 1}
vlib work
vlog -work work demux1to4.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.demux1to4_vlg_vec_tst -voptargs="+acc"
vcd file -direction demux1to4.msim.vcd
vcd add -internal demux1to4_vlg_vec_tst/*
vcd add -internal demux1to4_vlg_vec_tst/i1/*
run -all
quit -f
