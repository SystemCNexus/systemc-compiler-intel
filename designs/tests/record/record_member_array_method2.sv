//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
);

// Variables generated for SystemC signals
logic signed [31:0] sig;

//------------------------------------------------------------------------------
// Method process: arrayRecord (test_member_array_method2.cpp:29:5) 

// Process-local variables
logic signed [31:0] pa_x[2][2];
logic signed [31:0] pa__x[2][2];
logic signed [31:0] pa___x[2][2];
logic signed [31:0] pa____x[2][2];

always_comb 
begin : arrayRecord     // test_member_array_method2.cpp:29:5
    pa_x[1][0] = 11;
    pa__x[sig][1] = 12;
    pa___x[0][sig] = 13;
    pa____x[sig][sig] = 14;
end

//------------------------------------------------------------------------------
// Method process: useDefBug (test_member_array_method2.cpp:49:5) 

// Process-local variables
logic signed [31:0] at_rec_c[2];
logic signed [31:0] at_rec_arr_c[2][2];
logic signed [31:0] at__rec_arr_c[2][2];
logic signed [31:0] at___rec_arr_c[2][2];
logic signed [31:0] at____rec_arr_c[2][2];

always_comb 
begin : useDefBug     // test_member_array_method2.cpp:49:5
    at_rec_c[sig] = 30;
    at_rec_arr_c[1][0] = 31;
    at__rec_arr_c[sig][1] = 32;
    at___rec_arr_c[0][sig] = 33;
    at____rec_arr_c[sig][sig] = 34;
end

//------------------------------------------------------------------------------
// Method process: useDefBug2D (test_member_array_method2.cpp:63:5) 

// Process-local variables
logic signed [31:0] dt_rec_arr_c[2][3][2][3];

always_comb 
begin : useDefBug2D     // test_member_array_method2.cpp:63:5
    dt_rec_arr_c[sig][sig][sig][sig] = 34;
end

endmodule


