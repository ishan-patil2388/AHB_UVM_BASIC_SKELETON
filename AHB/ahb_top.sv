module ahb_top();

reg hclk,hrst;

initial begin
	hclk=0;
	forever #5 hclk=~hclk;
end //clk

initial begin
	hrst=1;
	repeat(2) @(posedge hclk);
	hrst=0;
end //rst

`include "ahb_test_lib.sv"

ahb_intf hpif(hclk,hrst);

ahb_slave DUT(	
		.HCLK(hpif.HCLK),
		.HRESET(hpif.HRESET),
		.HADDR(hpif.HADDR),
		.HWDATA(hpif.HWDATA),
		.HRDATA(hpif.HRDATA),
		.HSIZE(hpif.HSIZE),
		.HBURST(hpif.HBURST),
		.HPROT(hpif.HPROT),
		.HTRANS(hpif.HTRANS),
		.HWRITE(hpif.HWRITE),
		.HRESP(hpif.HRESP),
		.HMASTLOCK(hpif.HMASTLOCK)
	);


initial begin
	uvm_config_db#(virtual ahb_intf)::set(uvm_root::get(),"","vif",hpif);
end //intf

initial begin
	run_test("default_test");
end //runtest

endmodule :ahb_top
