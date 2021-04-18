vlog -sv ahb.svh +incdir+E:/2_VLSIGURU/2UVM/uvm-1.1b/src +define+UVM_NO_DPI
vsim work.ahb_top +UVM_TESTNAME=ahb_tx_test 
run -all
