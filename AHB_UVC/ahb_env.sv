class ahb_env extends uvm_env;
	ahb_master_agent magent;
//	ahb_slave_agent sagent;
	`uvm_component_utils(ahb_env)
	`NEW_COMP

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		magent =ahb_master_agent::type_id::create("magent",this);
	//	sagent =ahb_slave_agent::type_id::create("sagent",this);
	endfunction :build_phase


	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		
	endfunction
		
endclass :ahb_env
