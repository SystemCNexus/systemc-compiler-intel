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
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: empty_proc1 (test_name_conflict6.cpp:28:5) 

integer i;
assign i = 1;
assign s = i + 1;

//------------------------------------------------------------------------------
// Method process: local_var1 (test_name_conflict6.cpp:33:5) 

always_comb 
begin : local_var1     // test_name_conflict6.cpp:33:5
    integer i_1;
    integer j;
    integer sum;
    i_1 = 1;
    j = 2;
    sum = i_1 + j;
end

//------------------------------------------------------------------------------
// Method process: empty_proc2 (test_name_conflict6.cpp:41:5) 

integer j_1;
assign j_1 = 2;
assign s = j_1 + 1;

//------------------------------------------------------------------------------
// Method process: local_var2 (test_name_conflict6.cpp:46:5) 

always_comb 
begin : local_var2     // test_name_conflict6.cpp:46:5
    integer j;
    integer j_2;
    j = 1;
    j_2 = 2;
end

endmodule


