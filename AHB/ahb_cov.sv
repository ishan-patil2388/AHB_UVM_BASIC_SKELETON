
class ahb_cov extends uvm_subscriber#(ahb_tx);
	ahb_tx tx;
	`uvm_component_utils(ahb_cov)
	`NEW_COMP


	covergroup ahb_m;
//		ADDR_CP:coverpoint tx.HADDR{		}
	endgroup

	function void write(T t);
		$cast(tx,t);
		ahb_m.sample();

	endfunction :write


	
		
endclass :ahb_cov
