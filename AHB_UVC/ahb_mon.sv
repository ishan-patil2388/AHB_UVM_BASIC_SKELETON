
class ahb_mon extends uvm_monitor;
	uvm_analysis_port#(ahb_tx) ap_port;
	`uvm_component_utils(ahb_mon)
	`NEW_COMP


	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		ap_port=new("ap_port",this);
	endfunction :build_phase

	task run_phase(uvm_phase phase);
		super.run_phase(phase);
		
		//write(tx)
	endtask:run_phase


		
endclass :ahb_mon
