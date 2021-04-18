
class ahb_master_agent extends uvm_agent;
	ahb_dvr dvr;
	ahb_sqr sqr;
	ahb_mon mon;
	ahb_cov cov;
	`uvm_component_utils(ahb_master_agent)
	`NEW_COMP

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		if(get_is_active==UVM_ACTIVE) begin
		dvr =ahb_dvr::type_id::create("dvr",this);
		sqr =ahb_sqr::type_id::create("sqr",this);
		end
		
		mon =ahb_mon::type_id::create("mon",this);
		cov =ahb_cov::type_id::create("cov",this);
	endfunction :build_phase


	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		dvr.seq_item_port.connect(sqr.seq_item_export);	
		mon.ap_port.connect(cov.analysis_export);
	endfunction
		
endclass :ahb_master_agent
