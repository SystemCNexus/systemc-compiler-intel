//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.31
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic minst_rstn;
logic signed [31:0] minst_s;
logic marr_rstn[2];
logic signed [31:0] marr_s[2];
logic minst_clk;
logic marr_clk[2];

// Assignments generated for C++ channel arrays
assign minst_clk = clk;
assign marr_clk[0] = clk;
assign marr_clk[1] = clk;

//------------------------------------------------------------------------------
// Method process: minst_empty_proc (test_name_conflict1.cpp:28:5) 

integer i;
assign i = 1;
assign minst_s = i + 1;

//------------------------------------------------------------------------------
// Method process: minst_local_var (test_name_conflict1.cpp:33:5) 

always_comb 
begin : minst_local_var     // test_name_conflict1.cpp:33:5
    integer i_1;
    integer sum;
    i_1 = 1;
    sum = i_1 + 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_reg_var (test_name_conflict1.cpp:39:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;

// Next-state combinational logic
always_comb begin : minst_reg_var_comb     // test_name_conflict1.cpp:39:5
    minst_reg_var_func;
end
function void minst_reg_var_func;
    logic signed [63:0] sum;
    i_next = i0;
    sum = i_next;
endfunction

// Syncrhonous register update
always_ff @(posedge minst_clk or negedge minst_rstn) 
begin : minst_reg_var_ff
    if ( ~minst_rstn ) begin
        i0 <= 0;
    end
    else begin
        i0 <= i_next;
    end
end

//------------------------------------------------------------------------------
// Method process: marr_empty_proc (test_name_conflict1.cpp:28:5) 

integer i_2;
assign i_2 = 1;
assign marr_s[0] = i_2 + 1;

//------------------------------------------------------------------------------
// Method process: marr_local_var (test_name_conflict1.cpp:33:5) 

always_comb 
begin : marr_local_var     // test_name_conflict1.cpp:33:5
    integer i_1;
    integer sum;
    i_1 = 1;
    sum = i_1 + 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: marr_reg_var (test_name_conflict1.cpp:39:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next0;

// Next-state combinational logic
always_comb begin : marr_reg_var_comb     // test_name_conflict1.cpp:39:5
    marr_reg_var_func;
end
function void marr_reg_var_func;
    logic signed [63:0] sum;
    i_next0 = i1;
    sum = i_next0;
endfunction

// Syncrhonous register update
always_ff @(posedge marr_clk[0] or negedge marr_rstn[0]) 
begin : marr_reg_var_ff
    if ( ~marr_rstn[0] ) begin
        i1 <= 0;
    end
    else begin
        i1 <= i_next0;
    end
end

//------------------------------------------------------------------------------
// Method process: marr_empty_proc0 (test_name_conflict1.cpp:28:5) 

integer i_3;
assign i_3 = 1;
assign marr_s[1] = i_3 + 1;

//------------------------------------------------------------------------------
// Method process: marr_local_var0 (test_name_conflict1.cpp:33:5) 

always_comb 
begin : marr_local_var0     // test_name_conflict1.cpp:33:5
    integer i_1;
    integer sum;
    i_1 = 1;
    sum = i_1 + 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: marr_reg_var0 (test_name_conflict1.cpp:39:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;

// Next-state combinational logic
always_comb begin : marr_reg_var0_comb     // test_name_conflict1.cpp:39:5
    marr_reg_var0_func;
end
function void marr_reg_var0_func;
    logic signed [63:0] sum;
    i_next1 = i2;
    sum = i_next1;
endfunction

// Syncrhonous register update
always_ff @(posedge marr_clk[1] or negedge marr_rstn[1]) 
begin : marr_reg_var0_ff
    if ( ~marr_rstn[1] ) begin
        i2 <= 0;
    end
    else begin
        i2 <= i_next1;
    end
end

endmodule


