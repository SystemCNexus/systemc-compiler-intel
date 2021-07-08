//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.28
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: empty_proc1 (test_name_conflict5.cpp:29:5) 

integer i;
assign i = 1;
assign s = i + 1;

//------------------------------------------------------------------------------
// Clocked THREAD: reg_var1 (test_name_conflict5.cpp:34:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;

// Next-state combinational logic
always_comb begin : reg_var1_comb     // test_name_conflict5.cpp:34:5
    reg_var1_func;
end
function void reg_var1_func;
    logic signed [63:0] sum;
    i_next = i0;
    sum = i_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : reg_var1_ff
    if ( ~rstn ) begin
        i0 <= 0;
    end
    else begin
        i0 <= i_next;
    end
end

//------------------------------------------------------------------------------
// Method process: empty_proc2 (test_name_conflict5.cpp:46:5) 

integer j_1;
integer i_1;
assign j_1 = 1;
assign i_1 = 2;
assign s = j_1 + i_1;

//------------------------------------------------------------------------------
// Method process: local_var (test_name_conflict5.cpp:53:5) 

// Process-local variables
logic signed [31:0] j;

always_comb 
begin : local_var     // test_name_conflict5.cpp:53:5
    j = 1;
end

endmodule


