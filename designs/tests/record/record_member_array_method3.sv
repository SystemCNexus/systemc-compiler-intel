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
// Method process: setUnknownTest1 (test_member_array_method3.cpp:33:5) 

// Process-local variables
logic signed [31:0] su_rec_c[2];
logic signed [31:0] ssu_rec_c[2][2];

always_comb 
begin : setUnknownTest1     // test_member_array_method3.cpp:33:5
    su_rec_c[1] = 34;
    su_rec_c[sig] = 35;
    ssu_rec_c[1][1] = 34;
    ssu_rec_c[sig][1] = 35;
    ssu_rec_c[1][0] = 34;
    ssu_rec_c[1][sig] = 35;
    ssu_rec_c[0][1] = 34;
    ssu_rec_c[sig][sig] = 35;
end

//------------------------------------------------------------------------------
// Method process: setUnknownTest2 (test_member_array_method3.cpp:54:5) 

// Process-local variables
logic signed [31:0] ru_rec_arr_c[2][2];
logic signed [31:0] rru_rec_arr_c[2][2][2];

always_comb 
begin : setUnknownTest2     // test_member_array_method3.cpp:54:5
    ru_rec_arr_c[1][1] = 34;
    ru_rec_arr_c[sig][1] = 35;
    rru_rec_arr_c[0][1][1] = 34;
    rru_rec_arr_c[sig][1][1] = 35;
    rru_rec_arr_c[1][0][0] = 34;
    rru_rec_arr_c[1][sig][0] = 35;
    rru_rec_arr_c[0][1][1] = 34;
    rru_rec_arr_c[0][1][sig] = 35;
    rru_rec_arr_c[0][1][1] = 34;
    rru_rec_arr_c[sig][1][sig] = 35;
    rru_rec_arr_c[0][0][1] = 34;
    rru_rec_arr_c[sig][sig][sig] = 35;
end

endmodule


