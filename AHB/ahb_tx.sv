class ahb_tx extends uvm_sequence_item;

	rand logic [`ADDR_WIDTH-1:0] ADDR;
	rand logic [`DATA_WIDTH-1:0] WDATA;
	rand hsize_et               HSIZE;
	rand logic [2:0]            HBURST; 
	rand logic [3:0]            HPROT;
	rand logic 	            HWRITE;
	     logic [1:0]            HRESP;


	     `uvm_object_utils_begin(ahb_tx)
		 `uvm_field_int(ADDR,  UVM_ALL_ON)
		 `uvm_field_int(WDATA, UVM_ALL_ON)
		 `uvm_field_enum(hsize_et, HSIZE, UVM_ALL_ON)
		 `uvm_field_int(HBURST,UVM_ALL_ON)
		 `uvm_field_int(HPROT, UVM_ALL_ON)
		 `uvm_field_int(HWRITE,UVM_ALL_ON)
		 `uvm_field_int(HRESP, UVM_ALL_ON)
	     `uvm_object_utils_end


endclass :ahb_tx
