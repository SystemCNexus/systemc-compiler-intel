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
module A // "test_top.a_mod"
(
    input logic clk,
    input logic rstn,
    input logic [3:0] a,
    output logic [3:0] b
);

// Variables generated for SystemC signals
logic signed [31:0] s;
logic signed [31:0] s_reg;

//------------------------------------------------------------------------------
// Method process: assert_test (test_sva_assert.cpp:46:5) 

always_comb 
begin : assert_test     // test_sva_assert.cpp:46:5
    integer i;
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: sc_assert_test (test_sva_assert.cpp:53:5) 

always_comb 
begin : sc_assert_test     // test_sva_assert.cpp:53:5
    integer i;
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: sct_assert_method (test_sva_assert.cpp:59:5) 

always_comb 
begin : sct_assert_method     // test_sva_assert.cpp:59:5
    integer i;
    i = 0;
    `ifndef INTEL_SVA_OFF
        assert (i == 0) else $error("Assertion failed at test_sva_assert.cpp:62:9");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (i == 1) else $error("Message in method at test_sva_assert.cpp:63:9");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread (test_sva_assert.cpp:67:5) 

// Thread-local variables
logic signed [31:0] s_reg_next;
logic signed [31:0] s_next;

// Next-state combinational logic
always_comb begin : sct_assert_thread_comb     // test_sva_assert.cpp:67:5
    sct_assert_thread_func;
end
function void sct_assert_thread_func;
    s_next = s;
    s_reg_next = s_reg;
    s_reg_next = s;
    `ifndef INTEL_SVA_OFF
        assert (s == 0) else $error("Assertion failed at test_sva_assert.cpp:75:13");
    `endif // INTEL_SVA_OFF
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_ff
    if ( ~rstn ) begin
        `ifndef INTEL_SVA_OFF
            assert (s == 0) else $error("Message in reset at test_sva_assert.cpp:69:9");
        `endif // INTEL_SVA_OFF
        s_reg <= 0;
        s <= 0;
    end
    else begin
        s_reg <= s_reg_next;
        s <= s_next;
    end
end

endmodule


