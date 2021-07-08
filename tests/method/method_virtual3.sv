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

C c_mod
(

);

D d_mod
(

);

endmodule



//==============================================================================
//
// Module: C (test_virtual3.cpp:71:5)
//
module C // "b_mod.c_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: virt_call (test_virtual3.cpp:30:5) 

// Process-local variables
logic signed [15:0] m0;

always_comb 
begin : virt_call     // test_virtual3.cpp:30:5
    // Call f() begin
    m0 = m0 + 2;
    // Call f() end
end

endmodule



//==============================================================================
//
// Module: D (test_virtual3.cpp:72:5)
//
module D // "b_mod.d_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: virt_call (test_virtual3.cpp:30:5) 

// Process-local variables
logic signed [31:0] m1;
logic signed [15:0] m0;
logic signed [7:0] m;

always_comb 
begin : virt_call     // test_virtual3.cpp:30:5
    integer i;
    // Call f() begin
    m1 = m1 + 3;
    m0 = m0 + 3;
    m = m + 3;
    i = m1 + m0 + m;
    // Call f() end
end

endmodule


