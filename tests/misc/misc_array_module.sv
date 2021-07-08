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
module top // "top_inst"
(
);

// Variables generated for SystemC signals
logic signed [31:0] out;
logic signed [31:0] sig[4];

//------------------------------------------------------------------------------
// Method process: proc (test_array_module.cpp:56:5) 

always_comb 
begin : proc     // test_array_module.cpp:56:5
    sig[0] = 1;
    sig[2] = 2;
    out = sig[1] + sig[3];
end


//------------------------------------------------------------------------------
// Child module instances

bottom mods_0
(
  .in(sig[0]),
  .out(sig[1])
);

bottom mods_1
(
  .in(sig[2]),
  .out(sig[3])
);

endmodule



//==============================================================================
//
// Module: bottom ()
//
module bottom // "top_inst.mods0"
(
    input logic signed [31:0] in,
    output logic signed [31:0] out
);

//------------------------------------------------------------------------------
// Method process: proc (test_array_module.cpp:21:5) 

always_comb 
begin : proc     // test_array_module.cpp:21:5
    out = in;
end

endmodule


