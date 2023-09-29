//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.14
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
logic clk;
logic arstn;
logic signed [31:0] in;
logic signed [31:0] out;
logic signed [31:0] out2;
logic signed [31:0] out3;
logic signed [31:0] out4;
logic [11:0] s0;
logic [11:0] s1;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_wait0_sc_int (test_while_other_types.cpp:72:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic while_with_wait0_sc_int_PROC_STATE;
logic while_with_wait0_sc_int_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_with_wait0_sc_int_comb     // test_while_other_types.cpp:72:5
    while_with_wait0_sc_int_func;
end
function void while_with_wait0_sc_int_func;
    i_next = i;
    while_with_wait0_sc_int_PROC_STATE_next = while_with_wait0_sc_int_PROC_STATE;
    
    case (while_with_wait0_sc_int_PROC_STATE)
        0: begin
            i_next = 0;
            while_with_wait0_sc_int_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:80:17;
        end
        1: begin
            i_next++;
            if (i_next < 3)
            begin
                while_with_wait0_sc_int_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:80:17;
            end
            i_next = 0;
            while_with_wait0_sc_int_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:80:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_wait0_sc_int_ff
    if ( ~arstn ) begin
        while_with_wait0_sc_int_PROC_STATE <= 0;    // test_while_other_types.cpp:74:9;
    end
    else begin
        i <= i_next;
        while_with_wait0_sc_int_PROC_STATE <= while_with_wait0_sc_int_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_wait0a_sc_uint (test_while_other_types.cpp:87:5) 

// Thread-local variables
logic [9:0] i0;
logic [9:0] i_next0;
logic [1:0] while_with_wait0a_sc_uint_PROC_STATE;
logic [1:0] while_with_wait0a_sc_uint_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_with_wait0a_sc_uint_comb     // test_while_other_types.cpp:87:5
    while_with_wait0a_sc_uint_func;
end
function void while_with_wait0a_sc_uint_func;
    i_next0 = i0;
    while_with_wait0a_sc_uint_PROC_STATE_next = while_with_wait0a_sc_uint_PROC_STATE;
    
    case (while_with_wait0a_sc_uint_PROC_STATE)
        0: begin
            if (i_next0 < 3)
            begin
                while_with_wait0a_sc_uint_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:94:17;
            end
            while_with_wait0a_sc_uint_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:97:13;
        end
        1: begin
            i_next0++;
            if (i_next0 < 3)
            begin
                while_with_wait0a_sc_uint_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:94:17;
            end
            while_with_wait0a_sc_uint_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:97:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_wait0a_sc_uint_ff
    if ( ~arstn ) begin
        i0 <= 0;
        while_with_wait0a_sc_uint_PROC_STATE <= 0;    // test_while_other_types.cpp:90:9;
    end
    else begin
        i0 <= i_next0;
        while_with_wait0a_sc_uint_PROC_STATE <= while_with_wait0a_sc_uint_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_wait1_sc_bigint (test_while_other_types.cpp:102:5) 

// Thread-local variables
logic signed [31:0] out_next;
logic signed [63:0] i1;
logic signed [63:0] i_next1;
logic [1:0] while_with_wait1_sc_bigint_PROC_STATE;
logic [1:0] while_with_wait1_sc_bigint_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_with_wait1_sc_bigint_comb     // test_while_other_types.cpp:102:5
    while_with_wait1_sc_bigint_func;
end
function void while_with_wait1_sc_bigint_func;
    i_next1 = i1;
    out_next = out;
    while_with_wait1_sc_bigint_PROC_STATE_next = while_with_wait1_sc_bigint_PROC_STATE;
    
    case (while_with_wait1_sc_bigint_PROC_STATE)
        0: begin
            i_next1 = 0;
            i_next1++;
            out_next = 1;
            while_with_wait1_sc_bigint_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:113:17;
        end
        1: begin
            if (i_next1 < 3)
            begin
                i_next1++;
                out_next = 1;
                while_with_wait1_sc_bigint_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:113:17;
            end
            out_next = 2;
            while_with_wait1_sc_bigint_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:116:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_wait1_sc_bigint_ff
    if ( ~arstn ) begin
        out <= 0;
        while_with_wait1_sc_bigint_PROC_STATE <= 0;    // test_while_other_types.cpp:105:9;
    end
    else begin
        out <= out_next;
        i1 <= i_next1;
        while_with_wait1_sc_bigint_PROC_STATE <= while_with_wait1_sc_bigint_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_wait2_sc_biguint (test_while_other_types.cpp:121:5) 

// Thread-local variables
logic signed [31:0] out2_next;
logic [31:0] i2;
logic [31:0] i_next2;
logic [1:0] while_with_wait2_sc_biguint_PROC_STATE;
logic [1:0] while_with_wait2_sc_biguint_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_with_wait2_sc_biguint_comb     // test_while_other_types.cpp:121:5
    while_with_wait2_sc_biguint_func;
end
function void while_with_wait2_sc_biguint_func;
    i_next2 = i2;
    out2_next = out2;
    while_with_wait2_sc_biguint_PROC_STATE_next = while_with_wait2_sc_biguint_PROC_STATE;
    
    case (while_with_wait2_sc_biguint_PROC_STATE)
        0: begin
            i_next2 = 0;
            i_next2++;
            out2_next = 1;
            while_with_wait2_sc_biguint_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:132:17;
        end
        1: begin
            if (in > 1)
            begin
                out2_next = 2;
                while_with_wait2_sc_biguint_PROC_STATE_next = 2; return;    // test_while_other_types.cpp:136:21;
            end
            if (i_next2 < 3)
            begin
                i_next2++;
                out2_next = 1;
                while_with_wait2_sc_biguint_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:132:17;
            end
            out2_next = 3;
            while_with_wait2_sc_biguint_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:140:13;
        end
        2: begin
            if (i_next2 < 3)
            begin
                i_next2++;
                out2_next = 1;
                while_with_wait2_sc_biguint_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:132:17;
            end
            out2_next = 3;
            while_with_wait2_sc_biguint_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:140:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_wait2_sc_biguint_ff
    if ( ~arstn ) begin
        out2 <= 0;
        while_with_wait2_sc_biguint_PROC_STATE <= 0;    // test_while_other_types.cpp:124:9;
    end
    else begin
        out2 <= out2_next;
        i2 <= i_next2;
        while_with_wait2_sc_biguint_PROC_STATE <= while_with_wait2_sc_biguint_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_for_sc_int (test_while_other_types.cpp:145:5) 

// Thread-local variables
logic signed [31:0] out3_next;
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [19:0] i3;
logic signed [19:0] i_next3;
logic [1:0] while_with_for_sc_int_PROC_STATE;
logic [1:0] while_with_for_sc_int_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_with_for_sc_int_comb     // test_while_other_types.cpp:145:5
    while_with_for_sc_int_func;
end
function void while_with_for_sc_int_func;
    i_next3 = i3;
    j_next = j;
    out3_next = out3;
    while_with_for_sc_int_PROC_STATE_next = while_with_for_sc_int_PROC_STATE;
    
    case (while_with_for_sc_int_PROC_STATE)
        0: begin
            i_next3 = 0;
            i_next3++;
            out3_next = 1;
            j_next = 0;
            if (in > 1)
            begin
                out3_next = j_next;
            end
            while_with_for_sc_int_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:161:21;
        end
        1: begin
            j_next++;
            if (j_next < 2)
            begin
                if (in > 1)
                begin
                    out3_next = j_next;
                end
                while_with_for_sc_int_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:161:21;
            end
            if (i_next3 < 3)
            begin
                i_next3++;
                out3_next = 1;
                j_next = 0;
                if (in > 1)
                begin
                    out3_next = j_next;
                end
                while_with_for_sc_int_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:161:21;
            end
            out3_next = 3;
            while_with_for_sc_int_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:165:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_for_sc_int_ff
    if ( ~arstn ) begin
        out3 <= 0;
        while_with_for_sc_int_PROC_STATE <= 0;    // test_while_other_types.cpp:148:9;
    end
    else begin
        out3 <= out3_next;
        j <= j_next;
        i3 <= i_next3;
        while_with_for_sc_int_PROC_STATE <= while_with_for_sc_int_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_signal_cond_sc_uint (test_while_other_types.cpp:170:5) 

// Thread-local variables
logic signed [31:0] out4_next;
logic [1:0] while_with_signal_cond_sc_uint_PROC_STATE;
logic [1:0] while_with_signal_cond_sc_uint_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_with_signal_cond_sc_uint_comb     // test_while_other_types.cpp:170:5
    while_with_signal_cond_sc_uint_func;
end
function void while_with_signal_cond_sc_uint_func;
    out4_next = out4;
    while_with_signal_cond_sc_uint_PROC_STATE_next = while_with_signal_cond_sc_uint_PROC_STATE;
    
    case (while_with_signal_cond_sc_uint_PROC_STATE)
        0: begin
            if (|in)
            begin
                out4_next = 1;
                while_with_signal_cond_sc_uint_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:179:17;
            end
            out4_next = 2;
            while_with_signal_cond_sc_uint_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:183:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_signal_cond_sc_uint_ff
    if ( ~arstn ) begin
        out4 <= 0;
        while_with_signal_cond_sc_uint_PROC_STATE <= 0;    // test_while_other_types.cpp:173:9;
    end
    else begin
        out4 <= out4_next;
        while_with_signal_cond_sc_uint_PROC_STATE <= while_with_signal_cond_sc_uint_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_signal_cond_sc_uint2 (test_while_other_types.cpp:189:5) 

// Thread-local variables
logic [11:0] s1_next;
logic [1:0] while_with_signal_cond_sc_uint2_PROC_STATE;
logic [1:0] while_with_signal_cond_sc_uint2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_with_signal_cond_sc_uint2_comb     // test_while_other_types.cpp:189:5
    while_with_signal_cond_sc_uint2_func;
end
function void while_with_signal_cond_sc_uint2_func;
    s1_next = s1;
    while_with_signal_cond_sc_uint2_PROC_STATE_next = while_with_signal_cond_sc_uint2_PROC_STATE;
    
    case (while_with_signal_cond_sc_uint2_PROC_STATE)
        0: begin
            if (s0[7 : 4] > 2)
            begin
                s1_next = 1;
                while_with_signal_cond_sc_uint2_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:198:17;
            end
            s1_next = 2;
            while_with_signal_cond_sc_uint2_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:205:13;
        end
        1: begin
            if (s1[3])
            begin
                while_with_signal_cond_sc_uint2_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:200:21;
            end
            if (s0[7 : 4] > 2)
            begin
                s1_next = 1;
                while_with_signal_cond_sc_uint2_PROC_STATE_next = 1; return;    // test_while_other_types.cpp:198:17;
            end
            s1_next = 2;
            while_with_signal_cond_sc_uint2_PROC_STATE_next = 0; return;    // test_while_other_types.cpp:205:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_signal_cond_sc_uint2_ff
    if ( ~arstn ) begin
        s1 <= 0;
        while_with_signal_cond_sc_uint2_PROC_STATE <= 0;    // test_while_other_types.cpp:192:9;
    end
    else begin
        s1 <= s1_next;
        while_with_signal_cond_sc_uint2_PROC_STATE <= while_with_signal_cond_sc_uint2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_binary_oper_sc_bigint (test_while_other_types.cpp:211:5) 

// Thread-local variables
logic signed [49:0] b1;
logic signed [49:0] b1_next;
logic signed [49:0] b2;
logic signed [49:0] b2_next;
logic signed [31:0] k;
logic signed [31:0] k_next;
logic signed [31:0] t0_next;

// Next-state combinational logic
always_comb begin : while_with_binary_oper_sc_bigint_comb     // test_while_other_types.cpp:211:5
    while_with_binary_oper_sc_bigint_func;
end
function void while_with_binary_oper_sc_bigint_func;
    b1_next = b1;
    b2_next = b2;
    k_next = k;
    t0_next = t0;
    t0_next = k_next;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_binary_oper_sc_bigint_ff
    if ( ~arstn ) begin
        b1 <= 0;
        b2 <= 0;
        k <= 0;
    end
    else begin
        b1 <= b1_next;
        b2 <= b2_next;
        k <= k_next;
        t0 <= t0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_binary_oper1_sc_biguint (test_while_other_types.cpp:229:5) 

// Thread-local variables
logic [24:0] b10;
logic [24:0] b1_next0;
logic signed [31:0] k0;
logic signed [31:0] k_next0;
logic signed [31:0] t1_next;

// Next-state combinational logic
always_comb begin : while_with_binary_oper1_sc_biguint_comb     // test_while_other_types.cpp:229:5
    while_with_binary_oper1_sc_biguint_func;
end
function void while_with_binary_oper1_sc_biguint_func;
    b1_next0 = b10;
    k_next0 = k0;
    t1_next = t1;
    t1_next = k_next0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_binary_oper1_sc_biguint_ff
    if ( ~arstn ) begin
        b10 <= 0;
        k0 <= 0;
    end
    else begin
        b10 <= b1_next0;
        k0 <= k_next0;
        t1 <= t1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_binary_oper2_sc_int (test_while_other_types.cpp:248:5) 

// Thread-local variables
logic signed [31:0] b11;
logic signed [31:0] b1_next1;
logic signed [31:0] b20;
logic signed [31:0] b2_next0;
logic signed [31:0] k1;
logic signed [31:0] k_next1;
logic signed [31:0] t2_next;

// Next-state combinational logic
always_comb begin : while_with_binary_oper2_sc_int_comb     // test_while_other_types.cpp:248:5
    while_with_binary_oper2_sc_int_func;
end
function void while_with_binary_oper2_sc_int_func;
    b1_next1 = b11;
    b2_next0 = b20;
    k_next1 = k1;
    t2_next = t2;
    t2_next = k_next1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_binary_oper2_sc_int_ff
    if ( ~arstn ) begin
        b11 <= 0;
        b20 <= 0;
        k1 <= 0;
    end
    else begin
        b11 <= b1_next1;
        b20 <= b2_next0;
        k1 <= k_next1;
        t2 <= t2_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_with_binary_oper3_sc_uint (test_while_other_types.cpp:266:5) 

// Thread-local variables
logic [15:0] b12;
logic [15:0] b1_next2;
logic [15:0] b3;
logic [15:0] b3_next;
logic signed [31:0] k2;
logic signed [31:0] k_next2;
logic signed [31:0] t3_next;

// Next-state combinational logic
always_comb begin : while_with_binary_oper3_sc_uint_comb     // test_while_other_types.cpp:266:5
    while_with_binary_oper3_sc_uint_func;
end
function void while_with_binary_oper3_sc_uint_func;
    b1_next2 = b12;
    b3_next = b3;
    k_next2 = k2;
    t3_next = t3;
    t3_next = k_next2;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : while_with_binary_oper3_sc_uint_ff
    if ( ~arstn ) begin
        b12 <= 0;
        b3 <= 0;
        k2 <= 0;
    end
    else begin
        b12 <= b1_next2;
        b3 <= b3_next;
        k2 <= k_next2;
        t3 <= t3_next;
    end
end

endmodule


