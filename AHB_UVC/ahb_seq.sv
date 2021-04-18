class ahb_base_seq extends uvm_sequence#(ahb_tx);

	`uvm_object_utils(ahb_base_seq)
	`NEW_OBJ

	task pre_body();
		if(starting_phase!=null) starting_phase.raise_objection(this);
	endtask:pre_body

	task post_body();
		if(starting_phase!=null) starting_phase.drop_objection(this);
	endtask :post_body
endclass :ahb_base_seq


class ahb_dummy_seq extends ahb_base_seq;
	
	`uvm_object_utils(ahb_dummy_seq)
	`NEW_OBJ

	task body();
		`uvm_do(req)
	endtask:body

endclass : ahb_dummy_seq

