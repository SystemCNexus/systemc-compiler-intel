//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.28
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "mod"
(
);

// Variables generated for SystemC signals
logic t1;
logic [3:0] t2;
logic ip;
logic [3:0] op;
logic [3:0] oap[2];
logic [3:0] ovp[2];


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .i(t1),
  .o(t2),
  .ip(ip),
  .op(op),
  .oap(oap),
  .ovp(ovp)
);

C c
(
  .os(ip),
  .is(op),
  .ias(oap),
  .ivs(ovp),
  .i(t2),
  .o(t1)
);

endmodule



//==============================================================================
//
// Module: A (test_module_port_sig.cpp:61:5)
//
module A // "mod.a"
(
    input logic i,
    output logic [3:0] o,
    input logic ip,
    output logic [3:0] op,
    output logic [3:0] oap[2],
    output logic [3:0] ovp[2]
);

// Variables generated for SystemC signals
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: meth (test_module_port_sig.cpp:28:5) 

always_comb 
begin : meth     // test_module_port_sig.cpp:28:5
    logic b;
    b = ip;
    op = 4'(b ? s : 0);
    o = i ? 1 : 0;
end

endmodule



//==============================================================================
//
// Module: C (test_module_port_sig.cpp:62:5)
//
module C // "mod.c"
(
    output logic os,
    input logic [3:0] is,
    input logic [3:0] ias[2],
    input logic [3:0] ivs[2],
    input logic [3:0] i,
    output logic o
);

//------------------------------------------------------------------------------
// Method process: meth (test_module_port_sig.cpp:51:5) 

always_comb 
begin : meth     // test_module_port_sig.cpp:51:5
    os = is == 1;
    o = i == 1;
end

endmodule


