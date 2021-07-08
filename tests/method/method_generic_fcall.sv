//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.28
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "t_inst"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: test_method (test_generic_fcall.cpp:60:5) 

always_comb 
begin : test_method     // test_generic_fcall.cpp:60:5
    integer TMP_0;
    integer x;
    integer TMP_2;
    integer y;
    integer TMP_4;
    integer z;
    integer unsigned TMP_6;
    integer unsigned X;
    integer unsigned Y;
    integer unsigned k;
    integer unsigned TMP_8;
    logic signed [1:0] i2;
    logic signed [1:0] TMP_9;
    logic signed [1:0] in;
    // Call getZero() begin
    TMP_0 = 0;
    // Call getZero() end
    x = TMP_0;
    // Call getOne() begin
    TMP_2 = 1;
    // Call getOne() end
    y = TMP_2;
    // Call sum_plus_1() begin
    TMP_4 = x + y + 1;
    // Call sum_plus_1() end
    z = TMP_4;
    // Call generate() begin
    X = 1;
    Y = 2;
    TMP_6 = X + Y;
    // Call generate() end
    k = TMP_6;
    // Call increment() begin
    TMP_8 = ++k;
    // Call increment() end
    x = TMP_8;
    i2 = 0;
    in = i2;
    // Call invert() begin
    TMP_9 = ~in;
    // Call invert() end
    i2 = TMP_9;
end

endmodule


