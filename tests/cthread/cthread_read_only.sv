//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.30
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: test_split_array_reg ()
//
module test_split_array_reg // "test"
(
    input logic signed [31:0] in1,
    input logic signed [31:0] in2
);

// Variables generated for SystemC signals
logic clk;
logic rstn;
logic signed [31:0] sig0;
logic signed [31:0] sig1;
logic signed [31:0] ro1;
logic signed [31:0] arr[2];

// Local parameters generated for C++ constants
localparam logic signed [31:0] x = 'd12;

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread (test_cthread_read_only.cpp:34:5) 

// Thread-local variables
logic signed [31:0] sig0_next;
logic signed [31:0] arr0[2];
logic test_thread_PROC_STATE;
logic test_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_thread_comb     // test_cthread_read_only.cpp:34:5
    test_thread_func;
end
function void test_thread_func;
    sig0_next = sig0;
    test_thread_PROC_STATE_next = test_thread_PROC_STATE;
    
    case (test_thread_PROC_STATE)
        0: begin
            sig0_next = sig1 + x + in1;
            test_thread_PROC_STATE_next = 1; return;    // test_cthread_read_only.cpp:42:13;
        end
        1: begin
            sig0_next = ro1;
            sig0_next = sig1 + x + in1;
            test_thread_PROC_STATE_next = 1; return;    // test_cthread_read_only.cpp:42:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_thread_ff
    if ( ~rstn ) begin
        integer arr0[2];
        arr0[1] = 0;
        test_thread_PROC_STATE <= 0;    // test_cthread_read_only.cpp:36:9;
    end
    else begin
        sig0 <= sig0_next;
        test_thread_PROC_STATE <= test_thread_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread1 (test_cthread_read_only.cpp:51:5) 

// Thread-local variables
logic signed [31:0] sig1_next;
logic test_thread1_PROC_STATE;
logic test_thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_thread1_comb     // test_cthread_read_only.cpp:51:5
    test_thread1_func;
end
function void test_thread1_func;
    integer i;
    sig1_next = sig1;
    test_thread1_PROC_STATE_next = test_thread1_PROC_STATE;
    
    case (test_thread1_PROC_STATE)
        0: begin
            sig1_next = x;
            test_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_only.cpp:58:13;
        end
        1: begin
            i = in2 + ro1;
            sig1_next = x;
            test_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_only.cpp:58:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_thread1_ff
    if ( ~rstn ) begin
        sig1 <= 0;
        arr[sig0] <= 0;
        test_thread1_PROC_STATE <= 0;    // test_cthread_read_only.cpp:54:9;
    end
    else begin
        sig1 <= sig1_next;
        test_thread1_PROC_STATE <= test_thread1_PROC_STATE_next;
    end
end

endmodule


