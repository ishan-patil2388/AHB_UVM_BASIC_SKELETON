typedef enum {
	SINGLE,
	INCR,
	WRAP4,
	INCR4,
	WRAP8,
	INCR8,
	WRAP16,
	INCR16} hsize_et;

typedef enum{
	IDLE,
	BUSY,
	NONSEQ,
	SEQ} htrans_et;

typedef enum{
	OKAY,
	ERROR,
	RETRY,
	SPLIT} hresp_et;

`define ADDR_WIDTH 32
`define DATA_WIDTH 32


`define NEW_COMP \
function new(string name="", uvm_component parent); \
	super.new(name,parent); \
endfunction


`define NEW_OBJ \
function new(string name=""); \
	super.new(name); \
endfunction

class ahb_cfg;

	static string num_of_iteration;

endclass :ahb_cfg
