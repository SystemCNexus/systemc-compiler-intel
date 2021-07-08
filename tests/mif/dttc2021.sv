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
logic rst;
logic enable;
logic [31:0] a;
logic signed [31:0] in;
logic signed [31:0] out;

//------------------------------------------------------------------------------
// Method process: method (test_dttc2021.cpp:31:1) 

always_comb 
begin : method     // test_dttc2021.cpp:31:1
    logic b;
    b = |in;
    if (enable != 0)
    begin
        out = b;
    end else begin
        out = 0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread1 (test_dttc2021.cpp:41:1) 

// Thread-local variables
logic [31:0] i;
logic [31:0] i_next;

// Next-state combinational logic
always_comb begin : thread1_comb     // test_dttc2021.cpp:41:1
    thread1_func;
end
function void thread1_func;
    integer unsigned b;
    i_next = i;
    b = i_next + 1;
    i_next = i_next + a + b;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : thread1_ff
    if ( ~rst ) begin
        i <= 0;
    end
    else begin
        i <= i_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread2 (test_dttc2021.cpp:52:1) 

// Thread-local variables
logic signed [31:0] out_next;
logic [7:0] x;
logic [7:0] x_next;
logic thread2_PROC_STATE;
logic thread2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread2_comb     // test_dttc2021.cpp:52:1
    thread2_func;
end
function void thread2_func;
    logic [1:0] y;
    out_next = out;
    x_next = x;
    thread2_PROC_STATE_next = thread2_PROC_STATE;
    
    case (thread2_PROC_STATE)
        0: begin
            y = in;
            x_next = y + 1;
            thread2_PROC_STATE_next = 1; return;    // test_dttc2021.cpp:59:7;
        end
        1: begin
            out_next = x_next;
            y = in;
            x_next = y + 1;
            thread2_PROC_STATE_next = 1; return;    // test_dttc2021.cpp:59:7;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : thread2_ff
    if ( ~rst ) begin
        x <= 0;
        out <= 0;
        thread2_PROC_STATE <= 0;    // test_dttc2021.cpp:55:4;
    end
    else begin
        out <= out_next;
        x <= x_next;
        thread2_PROC_STATE <= thread2_PROC_STATE_next;
    end
end

endmodule


