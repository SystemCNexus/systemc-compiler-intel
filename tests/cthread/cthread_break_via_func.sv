//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.29
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// Variables generated for SystemC signals
logic clk;
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_break_via_func.cpp:208:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic nrst;
logic signed [31:0] si;

//------------------------------------------------------------------------------
// Clocked THREAD: break_via_func1 (test_cthread_break_via_func.cpp:71:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] k1;
logic [1:0] break_via_func1_PROC_STATE;
logic [1:0] break_via_func1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : break_via_func1_comb     // test_cthread_break_via_func.cpp:71:5
    break_via_func1_func;
end
function void break_via_func1_func;
    i_next = i;
    break_via_func1_PROC_STATE_next = break_via_func1_PROC_STATE;
    
    case (break_via_func1_PROC_STATE)
        0: begin
            k1 = 1;
            // Call f() begin
            i_next = 0;
            if (a)
            begin
                // break begin
                k1 = 2;
                break_via_func1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:82:13;
                // break end
            end
            break_via_func1_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
            // Call f() end
        end
        1: begin
            // Call f() begin
            i_next++;
            if (i_next < 2)
            begin
                if (a)
                begin
                    // break begin
                    k1 = 2;
                    break_via_func1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:82:13;
                    // break end
                end
                break_via_func1_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
            end
            // Call f() end
            k1 = 2;
            break_via_func1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:82:13;
        end
        2: begin
            k1 = 1;
            // Call f() begin
            i_next = 0;
            if (a)
            begin
                // break begin
                k1 = 2;
                break_via_func1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:82:13;
                // break end
            end
            break_via_func1_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
            // Call f() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : break_via_func1_ff
    if ( ~nrst ) begin
        break_via_func1_PROC_STATE <= 0;    // test_cthread_break_via_func.cpp:73:9;
    end
    else begin
        i <= i_next;
        break_via_func1_PROC_STATE <= break_via_func1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: break_via_func2 (test_cthread_break_via_func.cpp:86:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic signed [31:0] k2;
logic [1:0] break_via_func2_PROC_STATE;
logic [1:0] break_via_func2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : break_via_func2_comb     // test_cthread_break_via_func.cpp:86:5
    break_via_func2_func;
end
function void break_via_func2_func;
    integer kk;
    i_next0 = i0;
    break_via_func2_PROC_STATE_next = break_via_func2_PROC_STATE;
    
    case (break_via_func2_PROC_STATE)
        0: begin
            k2 = 1;
            // Call f() begin
            i_next0 = 0;
            if (a)
            begin
                // break begin
                k2 = 2;
                // Call g() begin
                if (a)
                begin
                    kk = 3;
                end
                // Call g() end
                break_via_func2_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:98:13;
                // break end
            end
            break_via_func2_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
            // Call f() end
        end
        1: begin
            // Call f() begin
            i_next0++;
            if (i_next0 < 2)
            begin
                if (a)
                begin
                    // break begin
                    k2 = 2;
                    // Call g() begin
                    if (a)
                    begin
                        kk = 3;
                    end
                    // Call g() end
                    break_via_func2_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:98:13;
                    // break end
                end
                break_via_func2_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
            end
            // Call f() end
            k2 = 2;
            // Call g() begin
            if (a)
            begin
                kk = 3;
            end
            // Call g() end
            break_via_func2_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:98:13;
        end
        2: begin
            k2 = 1;
            // Call f() begin
            i_next0 = 0;
            if (a)
            begin
                // break begin
                k2 = 2;
                // Call g() begin
                if (a)
                begin
                    kk = 3;
                end
                // Call g() end
                break_via_func2_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:98:13;
                // break end
            end
            break_via_func2_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
            // Call f() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : break_via_func2_ff
    if ( ~nrst ) begin
        break_via_func2_PROC_STATE <= 0;    // test_cthread_break_via_func.cpp:88:9;
    end
    else begin
        i0 <= i_next0;
        break_via_func2_PROC_STATE <= break_via_func2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: break_via_func3 (test_cthread_break_via_func.cpp:102:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next1;
logic signed [31:0] k3;
logic [1:0] break_via_func3_PROC_STATE;
logic [1:0] break_via_func3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : break_via_func3_comb     // test_cthread_break_via_func.cpp:102:5
    break_via_func3_func;
end
function void break_via_func3_func;
    integer kk;
    i_next1 = i1;
    break_via_func3_PROC_STATE_next = break_via_func3_PROC_STATE;
    
    case (break_via_func3_PROC_STATE)
        0: begin
            k3 = 1;
            if (b)
            begin
                // Call f() begin
                i_next1 = 0;
                if (a)
                begin
                    // break begin
                    k3 = 2;
                    if (c)
                    begin
                        // Call g() begin
                        if (a)
                        begin
                            kk = 3;
                        end
                        // Call g() end
                        k3 = 4;
                    end
                    break_via_func3_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:119:13;
                    // break end
                end
                break_via_func3_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
                // Call f() end
            end
            if (c)
            begin
                // Call g() begin
                if (a)
                begin
                    kk = 3;
                end
                // Call g() end
                k3 = 4;
            end
            break_via_func3_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:119:13;
        end
        1: begin
            // Call f() begin
            i_next1++;
            if (i_next1 < 2)
            begin
                if (a)
                begin
                    // break begin
                    k3 = 2;
                    if (c)
                    begin
                        // Call g() begin
                        if (a)
                        begin
                            kk = 3;
                        end
                        // Call g() end
                        k3 = 4;
                    end
                    break_via_func3_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:119:13;
                    // break end
                end
                break_via_func3_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
            end
            // Call f() end
            k3 = 2;
            if (c)
            begin
                // Call g() begin
                if (a)
                begin
                    kk = 3;
                end
                // Call g() end
                k3 = 4;
            end
            break_via_func3_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:119:13;
        end
        2: begin
            k3 = 1;
            if (b)
            begin
                // Call f() begin
                i_next1 = 0;
                if (a)
                begin
                    // break begin
                    k3 = 2;
                    if (c)
                    begin
                        // Call g() begin
                        if (a)
                        begin
                            kk = 3;
                        end
                        // Call g() end
                        k3 = 4;
                    end
                    break_via_func3_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:119:13;
                    // break end
                end
                break_via_func3_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:59:13;
                // Call f() end
            end
            if (c)
            begin
                // Call g() begin
                if (a)
                begin
                    kk = 3;
                end
                // Call g() end
                k3 = 4;
            end
            break_via_func3_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:119:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : break_via_func3_ff
    if ( ~nrst ) begin
        break_via_func3_PROC_STATE <= 0;    // test_cthread_break_via_func.cpp:104:9;
    end
    else begin
        i1 <= i_next1;
        break_via_func3_PROC_STATE <= break_via_func3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: break_via_func4 (test_cthread_break_via_func.cpp:134:5) 

// Thread-local variables
logic [1:0] break_via_func4_PROC_STATE;
logic [1:0] break_via_func4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : break_via_func4_comb     // test_cthread_break_via_func.cpp:134:5
    break_via_func4_func;
end
function void break_via_func4_func;
    break_via_func4_PROC_STATE_next = break_via_func4_PROC_STATE;
    
    case (break_via_func4_PROC_STATE)
        0: begin
            // Call f1() begin
            if (a)
            begin
                break_via_func4_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:128:13;
            end
            // Call f1() end
            break_via_func4_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:141:13;
        end
        1: begin
            // Call f1() begin
            if (b)
            begin
                // break begin
                break_via_func4_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:141:13;
                // break end
            end
            if (a)
            begin
                break_via_func4_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:128:13;
            end
            // Call f1() end
            break_via_func4_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:141:13;
        end
        2: begin
            // Call f1() begin
            if (a)
            begin
                break_via_func4_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:128:13;
            end
            // Call f1() end
            break_via_func4_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:141:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : break_via_func4_ff
    if ( ~nrst ) begin
        break_via_func4_PROC_STATE <= 0;    // test_cthread_break_via_func.cpp:136:9;
    end
    else begin
        break_via_func4_PROC_STATE <= break_via_func4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: break_via_func5 (test_cthread_break_via_func.cpp:158:5) 

// Thread-local variables
logic signed [31:0] res;
logic signed [31:0] res_next;
logic [1:0] break_via_func5_PROC_STATE;
logic [1:0] break_via_func5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : break_via_func5_comb     // test_cthread_break_via_func.cpp:158:5
    break_via_func5_func;
end
function void break_via_func5_func;
    integer TMP_0;
    integer i_1;
    integer TMP_4;
    res_next = res;
    break_via_func5_PROC_STATE_next = break_via_func5_PROC_STATE;
    
    case (break_via_func5_PROC_STATE)
        0: begin
            // Call f2() begin
            res_next = 1;
            if (a || b)
            begin
                res_next = si;
                break_via_func5_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:152:13;
            end
            TMP_0 = res_next;
            // Call f2() end
            i_1 = TMP_0;
            // Call f1() begin
            if (a)
            begin
                break_via_func5_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:128:13;
            end
            // Call f1() end
            break_via_func5_PROC_STATE_next = 3; return;    // test_cthread_break_via_func.cpp:166:13;
        end
        1: begin
            // Call f2() begin
            if (res_next == 1)
            begin
                // break begin
                // Call f2() begin
                TMP_0 = res_next;
                // Call f2() end
                i_1 = TMP_0;
                // Call f1() begin
                if (a)
                begin
                    break_via_func5_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:128:13;
                end
                // Call f1() end
                break_via_func5_PROC_STATE_next = 3; return;    // test_cthread_break_via_func.cpp:166:13;
                // break end
            end
            if (a || b)
            begin
                res_next = si;
                break_via_func5_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:152:13;
            end
            TMP_0 = res_next;
            // Call f2() end
            i_1 = TMP_0;
            // Call f1() begin
            if (a)
            begin
                break_via_func5_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:128:13;
            end
            // Call f1() end
            break_via_func5_PROC_STATE_next = 3; return;    // test_cthread_break_via_func.cpp:166:13;
        end
        2: begin
            // Call f1() begin
            if (b)
            begin
                // break begin
                break_via_func5_PROC_STATE_next = 3; return;    // test_cthread_break_via_func.cpp:166:13;
                // break end
            end
            if (a)
            begin
                break_via_func5_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:128:13;
            end
            // Call f1() end
            break_via_func5_PROC_STATE_next = 3; return;    // test_cthread_break_via_func.cpp:166:13;
        end
        3: begin
            // Call f2() begin
            res_next = 1;
            if (a || b)
            begin
                res_next = si;
                break_via_func5_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:152:13;
            end
            TMP_4 = res_next;
            // Call f2() end
            i_1 = TMP_4;
            // Call f1() begin
            if (a)
            begin
                break_via_func5_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:128:13;
            end
            // Call f1() end
            break_via_func5_PROC_STATE_next = 3; return;    // test_cthread_break_via_func.cpp:166:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : break_via_func5_ff
    if ( ~nrst ) begin
        break_via_func5_PROC_STATE <= 0;    // test_cthread_break_via_func.cpp:160:9;
    end
    else begin
        res <= res_next;
        break_via_func5_PROC_STATE <= break_via_func5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_break1 (test_cthread_break_via_func.cpp:176:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next2;
logic signed [31:0] k4;
logic signed [31:0] k4_next;
logic [1:0] fcall_break1_PROC_STATE;
logic [1:0] fcall_break1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fcall_break1_comb     // test_cthread_break_via_func.cpp:176:5
    fcall_break1_func;
end
function void fcall_break1_func;
    integer TMP_0;
    integer i_1;
    integer TMP_1;
    integer TMP_2;
    integer TMP_3;
    i_next2 = i2;
    k4_next = k4;
    fcall_break1_PROC_STATE_next = fcall_break1_PROC_STATE;
    
    case (fcall_break1_PROC_STATE)
        0: begin
            i_next2 = 0;
            if (a)
            begin
                k4_next = 1;
                // break begin
                i_1 = k4_next;
                // Call f3() begin
                TMP_0 = i_1 + 1;
                // Call f3() end
                k4_next = TMP_0;
                fcall_break1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:192:13;
                // break end
            end
            fcall_break1_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:188:17;
        end
        1: begin
            i_next2++;
            if (i_next2 < 2)
            begin
                if (a)
                begin
                    k4_next = 1;
                    // break begin
                    i_1 = k4_next;
                    // Call f3() begin
                    TMP_1 = i_1 + 1;
                    // Call f3() end
                    k4_next = TMP_1;
                    fcall_break1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:192:13;
                    // break end
                end
                fcall_break1_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:188:17;
            end
            i_1 = k4_next;
            // Call f3() begin
            TMP_2 = i_1 + 1;
            // Call f3() end
            k4_next = TMP_2;
            fcall_break1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:192:13;
        end
        2: begin
            i_next2 = 0;
            if (a)
            begin
                k4_next = 1;
                // break begin
                i_1 = k4_next;
                // Call f3() begin
                TMP_3 = i_1 + 1;
                // Call f3() end
                k4_next = TMP_3;
                fcall_break1_PROC_STATE_next = 2; return;    // test_cthread_break_via_func.cpp:192:13;
                // break end
            end
            fcall_break1_PROC_STATE_next = 1; return;    // test_cthread_break_via_func.cpp:188:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_break1_ff
    if ( ~nrst ) begin
        k4 <= 0;
        fcall_break1_PROC_STATE <= 0;    // test_cthread_break_via_func.cpp:179:9;
    end
    else begin
        i2 <= i_next2;
        k4 <= k4_next;
        fcall_break1_PROC_STATE <= fcall_break1_PROC_STATE_next;
    end
end

endmodule


