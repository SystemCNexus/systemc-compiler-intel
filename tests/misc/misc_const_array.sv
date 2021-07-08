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

// Local parameters generated for C++ constants
localparam logic C1 = 1;
localparam logic C2 = 0;
localparam logic arr[3] = '{ 1, 1, 0 };

//------------------------------------------------------------------------------
// Method process: array_method (test_const_array.cpp:35:5) 

always_comb 
begin : array_method     // test_const_array.cpp:35:5
    logic larr[3];
    logic b1;
    logic b2;
    larr[0] = 1; larr[1] = 1; larr[2] = 0;
    b1 = arr[1];
    b1 = larr[1];
    b2 = C1;
    b2 = C2;
end

endmodule


