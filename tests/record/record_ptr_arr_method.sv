//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.28
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_ptr_arr_method.cpp:72:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals
logic dummy;

//------------------------------------------------------------------------------
// Method process: rec_ptr_simple (test_ptr_arr_method.cpp:46:5) 

// Process-local variables
logic r1_a[2];

always_comb 
begin : rec_ptr_simple     // test_ptr_arr_method.cpp:46:5
    logic b;
    logic TMP_0;
    b = r1_a[0];
    // Call getData() begin
    TMP_0 = r1_a[1];
    // Call getData() end
    b = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: rec_ptr_loop (test_ptr_arr_method.cpp:52:5) 

// Process-local variables
logic r2_a[2];

always_comb 
begin : rec_ptr_loop     // test_ptr_arr_method.cpp:52:5
    logic b;
    logic TMP_0;
    b = 0;
    for (integer i = 0; i < 2; i++)
    begin
        // Call getData() begin
        TMP_0 = r2_a[i];
        // Call getData() end
        b = b || TMP_0;
    end
end

//------------------------------------------------------------------------------
// Method process: rec_ptr_unknw (test_ptr_arr_method.cpp:61:5) 

// Process-local variables
logic r3_a[2];

always_comb 
begin : rec_ptr_unknw     // test_ptr_arr_method.cpp:61:5
    integer i;
    logic b;
    logic par;
    i = dummy;
    b = r3_a[i];
    par = !b;
    // Call setData() begin
    r3_a[i] = par;
    // Call setData() end
end

endmodule


