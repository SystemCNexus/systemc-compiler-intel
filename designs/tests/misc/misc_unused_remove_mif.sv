//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B ()
//
module B // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic a_nrst[2];
logic [3:0] a_s[2];
logic signed [31:0] a_t0[2];
logic signed [31:0] a_t1[2];
logic a_clk[2];

// Assignments generated for C++ channel arrays
assign a_clk[0] = clk;
assign a_clk[1] = clk;

//------------------------------------------------------------------------------
// Method process: a_removeMeth (test_unused_remove_mif.cpp:33:5) 

// Process-local variables
logic signed [31:0] a_m2[2];

always_comb 
begin : a_removeMeth     // test_unused_remove_mif.cpp:33:5
    logic [3:0] y;
    logic [3:0] yn;
    integer i;
    integer j;
    y = 0;
    y = a_s[0];
    yn = y + 1;
    a_t0[0] = yn;
    i = 1;
    j = i + 1;
    a_t0[0] = j;
    a_m2[0] = 42;
    a_t0[0] = a_m2[0] + 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: a_removeThrd (test_unused_remove_mif.cpp:55:5) 

// Thread-local variables
logic signed [31:0] a_t1_next[2];
logic signed [31:0] a_m3[2];
logic signed [31:0] a_m3_next[2];

// Next-state combinational logic
always_comb begin : a_removeThrd_comb     // test_unused_remove_mif.cpp:55:5
    a_removeThrd_func;
end
function void a_removeThrd_func;
    a_m3_next[0] = a_m3[0];
    a_t1_next[0] = a_t1[0];
    a_m3_next[0] = a_m3_next[0] + 1;
    a_t1_next[0] = a_m3_next[0];
endfunction

// Synchronous register update
always_ff @(posedge a_clk[0] or negedge a_nrst[0]) 
begin : a_removeThrd_ff
    if ( ~a_nrst[0] ) begin
        a_t1[0] <= 0;
        a_m3[0] <= 0;
    end
    else begin
        a_t1[0] <= a_t1_next[0];
        a_m3[0] <= a_m3_next[0];
    end
end

//------------------------------------------------------------------------------
// Method process: a_removeMeth0 (test_unused_remove_mif.cpp:33:5) 

always_comb 
begin : a_removeMeth0     // test_unused_remove_mif.cpp:33:5
    logic [3:0] y;
    logic [3:0] yn;
    integer i;
    integer j;
    y = 0;
    y = a_s[1];
    yn = y + 1;
    a_t0[1] = yn;
    i = 1;
    j = i + 1;
    a_t0[1] = j;
    a_m2[1] = 42;
    a_t0[1] = a_m2[1] + 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: a_removeThrd0 (test_unused_remove_mif.cpp:55:5) 

// Next-state combinational logic
always_comb begin : a_removeThrd0_comb     // test_unused_remove_mif.cpp:55:5
    a_removeThrd0_func;
end
function void a_removeThrd0_func;
    a_m3_next[1] = a_m3[1];
    a_t1_next[1] = a_t1[1];
    a_m3_next[1] = a_m3_next[1] + 1;
    a_t1_next[1] = a_m3_next[1];
endfunction

// Synchronous register update
always_ff @(posedge a_clk[1] or negedge a_nrst[1]) 
begin : a_removeThrd0_ff
    if ( ~a_nrst[1] ) begin
        a_t1[1] <= 0;
        a_m3[1] <= 0;
    end
    else begin
        a_t1[1] <= a_t1_next[1];
        a_m3[1] <= a_m3_next[1];
    end
end

endmodule


