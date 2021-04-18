module ahb_slave(
	
	input  HCLK,
	input HRESET,
	input [`ADDR_WIDTH-1:0] HADDR,
	input [`DATA_WIDTH-1:0] HWDATA,
	input [`DATA_WIDTH-1:0] HRDATA,
	input [2:0]            HSIZE,
	input [2:0]            HBURST,
	input [3:0]            HPROT,
	input [1:0]            HTRANS,
	input 	               HWRITE,
	output[1:0]            HRESP,
	input 	               HMASTLOCK

	);

endmodule :ahb_slave
