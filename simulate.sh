#!/bin/bash

# vsim -64 -c libOpt.Optboard +TESTNAME=sample_smoke_test0 -do "add wave -r /*; add wave /board/RP/com_usrapp/frame_store_tx(20:0); run -all; exit;" -wlf run_dir_sample_smoke_test0/waveform.wlf -l run_dir_sample_smoke_test0/run.log
# mv *.dat run_dir_sample_smoke_test0/

mkdir run_dir_pio_writeReadBack_test0
rm -rf run_dir_pio_writeReadBack_test0/*
vsim -64 -c libOpt.Optboard +TESTNAME=pio_writeReadBack_test0 -do "add wave -r /*; add wave /board/RP/com_usrapp/frame_store_tx(20:0); run -all; exit;" -wlf run_dir_pio_writeReadBack_test0/waveform.wlf -l run_dir_pio_writeReadBack_test0/run.log
mv *.dat run_dir_pio_writeReadBack_test0/