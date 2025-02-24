//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic signed [31:0] t0;

//------------------------------------------------------------------------------
// Clocked THREAD: record_reg (test_reg_func_cthread1.cpp:39:5) 

// Thread-local variables
logic signed [31:0] t0_next;

// Next-state combinational logic
always_comb begin : record_reg_comb     // test_reg_func_cthread1.cpp:39:5
    record_reg_func;
end
function void record_reg_func;
    integer val;
    integer r_sin;
    integer r_cos;
    integer i;
    t0_next = t0;
    val = 1;
    // Call f() begin
    r_sin = 1;
    r_cos = 2;
    i = r_sin + val;
    t0_next = i;
    // Call f() end
    val = 2;
    // Call f() begin
    r_sin = 1;
    r_cos = 2;
    i = r_sin + val;
    t0_next = i;
    // Call f() end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_reg_ff
    if ( ~rstn ) begin
    end
    else begin
        t0 <= t0_next;
    end
end

endmodule


