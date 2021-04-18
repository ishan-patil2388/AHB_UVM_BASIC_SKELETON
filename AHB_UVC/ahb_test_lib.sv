class ahb_base_test extends uvm_test;
	ahb_env env;
	uvm_table_printer printer;
	`uvm_component_utils(ahb_base_test)
	`NEW_COMP

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		env =ahb_env::type_id::create("env",this);
	printer=new();
	endfunction :build_phase

	virtual function void end_of_elaboration();
			`uvm_info(get_full_name,this.sprint(printer),UVM_NONE)
	endfunction :end_of_elaboration

	function void report_phase(uvm_phase phase);
		uvm_report_server svr;
		super.report_phase(phase);

		svr=uvm_report_server::get_server();

		if((svr.get_severity_count(UVM_FATAL)>0) || (svr.get_severity_count(UVM_ERROR)>0))
		begin
			`uvm_info("ABH_BASE_TEST","------------------------------------------------------------------------",UVM_NONE)
			`uvm_info("ABH_BASE_TEST","--------------------------  TEST FAILED   ------------------------------",UVM_NONE)
			`uvm_info("ABH_BASE_TEST","------------------------------------------------------------------------",UVM_NONE)
		end
		else begin
			`uvm_info("ABH_BASE_TEST","------------------------------------------------------------------------",UVM_NONE)
			`uvm_info("ABH_BASE_TEST","--------------------------  TEST PASSED   ------------------------------",UVM_NONE)
			`uvm_info("ABH_BASE_TEST","------------------------------------------------------------------------",UVM_NONE)
	
		end
		
		endfunction :report_phase
		
endclass :ahb_base_test

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////// Functional Test
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class default_test extends ahb_base_test;

	`uvm_component_utils(default_test)
	`NEW_COMP

	task run_phase(uvm_phase phase);
			`uvm_info("ABH_DEFAULT_TEST","************************************************************************",UVM_NONE)
			`uvm_info("ABH_DEFAULT_TEST","-------------------------  Please give Valid +UVM_TESTNAME  ------------",UVM_NONE)
			`uvm_info("ABH_DEFAULT_TEST","************************************************************************",UVM_NONE)
		
	endtask :run_phase
endclass :default_test



class ahb_tx_test extends ahb_base_test;

	ahb_dummy_seq seq;

	`uvm_component_utils(ahb_tx_test)
	`NEW_COMP

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		seq=ahb_dummy_seq::type_id::create("seq");

	endfunction : build_phase

	task run_phase(uvm_phase phase);
		super.run_phase(phase);
		phase.raise_objection(this);
		seq.start(env.magent.sqr);
		phase.drop_objection(this);

	endtask :run_phase
endclass :ahb_tx_test
