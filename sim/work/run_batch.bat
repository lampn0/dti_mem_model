@echo off
DOSKEY rm  = rmdir /s work
DOSKEY vlb = vlib work
DOSKEY vlg = vlog -writetoplevels questa.tops -timescale 1ns/1ns "+incdir+../libs/uvm-1.1d/src" -f filelist_rtl.f -f filelist_tb.f -l vlog.log
DOSKEY vsm = vsim mem_top_tb -wlf vsim.wlf -l vsim.log -sv_lib ../libs/uvm-1.1d/lib/uvm_dpiWin64 -batch -do "vsim -solvefaildebug -voptargs=+acc +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=mem_wr_rd_test; run -all; exit" -voptargs="+acc" "+UVM_VERBOSITY=UVM_MEDIUM" "+UVM_TESTNAME=mem_wr_rd_test" 
DOSKEY run_all = rm; vlb; vlg; vsm