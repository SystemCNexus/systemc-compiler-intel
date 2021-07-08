//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.28
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic s;
logic line_oper;
logic arbt_ack_write;
logic t;

// Local parameters generated for C++ constants
localparam logic signed [31:0] B = 'd4;
localparam logic T = 1;
localparam logic signed [31:0] CTRL_NUM = 'd0;

//------------------------------------------------------------------------------
// Method process: for_loop_meth (test_level1.cpp:214:5) 

always_comb 
begin : for_loop_meth     // test_level1.cpp:214:5
    logic arbt_ack_;
    arbt_ack_ = 0;
    for (integer i = 0; i < 1; i++)
    begin
        arbt_ack_ = arbt_ack_ || t;
    end
    arbt_ack_write = arbt_ack_ && line_oper;
end

//------------------------------------------------------------------------------
// Method process: pref_inrc (test_level1.cpp:86:5) 

always_comb 
begin : pref_inrc     // test_level1.cpp:86:5
    logic [8:0] x;
    x = 11;
    x++;
    ++x;
end

//------------------------------------------------------------------------------
// Method process: const_init (test_level1.cpp:105:5) 

// Process-local variables
logic signed [31:0] m1;

always_comb 
begin : const_init     // test_level1.cpp:105:5
    integer TMP_0;
    integer i;
    integer TMP_2;
    integer j;
    integer TMP_4;
    integer k;
    integer z;
    // Call getInit() begin
    TMP_0 = m1++;
    // Call getInit() end
    i = TMP_0;
    // Call getInit() begin
    TMP_2 = m1++;
    // Call getInit() end
    j = TMP_2;
    // Call getInit2() begin
    m1++;
    TMP_4 = 1;
    // Call getInit2() end
    k = TMP_4;
    z = i + j + k;
    `ifndef INTEL_SVA_OFF
        assert (k == 1) else $error("Assertion failed at test_level1.cpp:83:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: no_iter_loop (test_level1.cpp:116:5) 

always_comb 
begin : no_iter_loop     // test_level1.cpp:116:5
    integer k;
    k = 0;
end

//------------------------------------------------------------------------------
// Method process: fcall_const (test_level1.cpp:128:5) 

always_comb 
begin : fcall_const     // test_level1.cpp:128:5
    integer k;
    integer unsigned TMP_0;
    k = 0;
    // Call f() begin
    TMP_0 = 0;
    // Call f() end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: binary_oper1 (test_level1.cpp:139:5) 

always_comb 
begin : binary_oper1     // test_level1.cpp:139:5
    logic b;
    b = 1;
end

//------------------------------------------------------------------------------
// Method process: binary_oper2 (test_level1.cpp:143:5) 

always_comb 
begin : binary_oper2     // test_level1.cpp:143:5
    integer i;
    integer j;
    i = 0;
    j = 0;
    j = i;
end

//------------------------------------------------------------------------------
// Method process: dead_code (test_level1.cpp:150:5) 

always_comb 
begin : dead_code     // test_level1.cpp:150:5
    logic b;
    b = 0;
end

//------------------------------------------------------------------------------
// Method process: simple_for (test_level1.cpp:158:5) 

always_comb 
begin : simple_for     // test_level1.cpp:158:5
    integer k;
    for (integer i = 0; i < 3; i++)
    begin
        k = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: simple_do (test_level1.cpp:164:5) 

always_comb 
begin : simple_do     // test_level1.cpp:164:5
    integer i;
    i = 0;
    do
    begin
        i++;
    end
    while (i < 3);
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper (test_level1.cpp:171:5) 

always_comb 
begin : while_with_binary_oper     // test_level1.cpp:171:5
    logic b1;
    logic b2;
    b1 = 0;
    b2 = 0;
end

//------------------------------------------------------------------------------
// Clocked THREAD: label_loop (test_level1.cpp:182:5) 

// Thread-local variables
logic arbt_ack_write_next;

// Next-state combinational logic
always_comb begin : label_loop_comb     // test_level1.cpp:182:5
    label_loop_func;
end
function void label_loop_func;
    logic arbt_ack_;
    arbt_ack_write_next = arbt_ack_write;
    arbt_ack_ = 0;
    for (integer i = 0; i < 1; i++)
    begin
        arbt_ack_ = arbt_ack_ || t;
    end
    arbt_ack_write_next = arbt_ack_ && line_oper;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : label_loop_ff
    if ( ~nrst ) begin
        arbt_ack_write <= 0;
    end
    else begin
        arbt_ack_write <= arbt_ack_write_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_loop (test_level1.cpp:200:5) 

// Next-state combinational logic
always_comb begin : for_loop_comb     // test_level1.cpp:200:5
    for_loop_func;
end
function void for_loop_func;
    logic arbt_ack_;
    arbt_ack_ = 0;
    for (integer i = 0; i < 1; i++)
    begin
        arbt_ack_ = arbt_ack_ || t;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : for_loop_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Method process: comma (test_level1.cpp:229:5) 

always_comb 
begin : comma     // test_level1.cpp:229:5
    integer j;
    integer TMP_0;
    integer i;
    integer k;
    integer TMP_1;
    i = 1;
    // Call f() begin
    TMP_0 = i + 1;
    // Call f() end
    j = TMP_0;
    j = 0;
    j--;
    k = (j++);
    i = 1;
    // Call f() begin
    TMP_1 = i + 1;
    // Call f() end
    j = TMP_1;
    k = j++;
end

//------------------------------------------------------------------------------
// Method process: compl_cond (test_level1.cpp:240:5) 

always_comb 
begin : compl_cond     // test_level1.cpp:240:5
    logic b;
    b = 0;
    b = b || t;
end

//------------------------------------------------------------------------------
// Method process: simple_if (test_level1.cpp:245:5) 

always_comb 
begin : simple_if     // test_level1.cpp:245:5
    integer k;
    k = 0;
    if (s)
    begin
        k = 1;
    end
end

endmodule


