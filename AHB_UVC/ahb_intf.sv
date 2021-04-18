interface ahb_intf(input logic HCLK,logic HRESET);

	logic [`ADDR_WIDTH-1:0] HADDR;
	logic [`DATA_WIDTH-1:0] HWDATA;
	logic [`DATA_WIDTH-1:0] HRDATA;
	logic [2:0]            HSIZE;
	logic [2:0]            HBURST; 
	logic [3:0]            HPROT;
	logic [1:0]            HTRANS;
	logic 	               HWRITE;
	logic [1:0]            HRESP;
	logic 	               HMASTLOCK;

endinterface :ahb_intf
