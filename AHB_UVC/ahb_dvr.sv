
class ahb_dvr extends uvm_driver#(ahb_tx);
	virtual ahb_intf vif;
	`uvm_component_utils(ahb_dvr)
	`NEW_COMP

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		
		if(!(uvm_config_db#(virtual ahb_intf)::get(this,"","vif",vif)))
			`uvm_fatal(get_full_name,"Virtual interface not found:VIF")

	endfunction :build_phase



	task run_phase(uvm_phase phase);
		super.run_phase(phase);	
		seq_item_port.get_next_item(req);
		req.print();
		drive();
		seq_item_port.item_done();
	endtask

	task drive();

	endtask : drive
		
endclass :ahb_dvr
