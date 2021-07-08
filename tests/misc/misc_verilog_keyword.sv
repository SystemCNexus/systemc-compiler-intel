//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.28
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: tb ()
//
module tb // "tb_inst"
(
);

// Variables generated for SystemC signals
logic clk;
logic [3:0] output_v;


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .clk(clk),
  .output_v(output_v)
);

endmodule



//==============================================================================
//
// Module: A (test_verilog_keyword.cpp:55:5)
//
module A // "tb_inst.a"
(
    input logic clk,
    output logic [3:0] output_v
);

// Variables generated for SystemC signals
logic rst;
logic wire_v;

//------------------------------------------------------------------------------
// Method process: methodProc (test_verilog_keyword.cpp:33:5) 

always_comb 
begin : methodProc     // test_verilog_keyword.cpp:33:5
    logic reg_v;
    reg_v = wire_v;
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadProc (test_verilog_keyword.cpp:37:5) 

// Thread-local variables
logic [3:0] output_v_next;
logic [3:0] small_v;
logic [3:0] small_v_next;

// Next-state combinational logic
always_comb begin : threadProc_comb     // test_verilog_keyword.cpp:37:5
    threadProc_func;
end
function void threadProc_func;
    output_v_next = output_v;
    small_v_next = small_v;
    output_v_next = small_v_next++;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : threadProc_ff
    if ( ~rst ) begin
        small_v <= 0;
        output_v <= 0;
    end
    else begin
        output_v <= output_v_next;
        small_v <= small_v_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

library_v l
(

);

endmodule



//==============================================================================
//
// Module: library (test_verilog_keyword.cpp:23:5)
//
module library_v // "tb_inst.a.l"
(
);

endmodule


