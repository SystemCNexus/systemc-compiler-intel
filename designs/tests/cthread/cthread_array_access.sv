//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.14
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
logic rst;
logic [1:0] sig;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;
logic signed [31:0] t6;
logic signed [31:0] t7;
logic ws[3][3];
logic vs[3][3];
logic ys[3][3];
logic signed [31:0] t8;

//------------------------------------------------------------------------------
// Method process: array_in_method1 (test_cthread_array_access.cpp:69:5) 

// Process-local variables
logic [2:0] r[3];

always_comb 
begin : array_in_method1     // test_cthread_array_access.cpp:69:5
    integer i;
    integer j;
    r[0] = 1;
    r[1] = 2;
    i = sig;
    r[i] = 3;
    j = r[i + 1] + r[2];
    t0 = j;
end

//------------------------------------------------------------------------------
// Method process: array_in_method2 (test_cthread_array_access.cpp:81:5) 

// Process-local variables
logic [3:0] rr[3][2];

always_comb 
begin : array_in_method2     // test_cthread_array_access.cpp:81:5
    integer i;
    integer j;
    for (integer k = 0; k < 3; k++)
    begin
        rr[k][0] = k;
    end
    i = sig;
    rr[1][i] = 2;
    j = rr[2][1];
    rr[i][j] = 3;
    j = rr[i + 1][j - 1] + 1;
    t1 = j;
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_in_thread1 (test_cthread_array_access.cpp:97:5) 

// Thread-local variables
logic s[3];
logic s_next[3];
logic signed [31:0] t2_next;

// Next-state combinational logic
always_comb begin : array_in_thread1_comb     // test_cthread_array_access.cpp:97:5
    array_in_thread1_func;
end
function void array_in_thread1_func;
    integer i;
    logic b;
    s_next = s;
    t2_next = t2;
    i = sig;
    s_next[i] = i == 1;
    b = s_next[i + 1] || s_next[i];
    t2_next = b;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_in_thread1_ff
    if ( rst ) begin
        s[1] <= 0;
    end
    else begin
        s <= s_next;
        t2 <= t2_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_in_thread2 (test_cthread_array_access.cpp:113:5) 

// Thread-local variables
logic signed [31:0] ss[2][3];
logic signed [31:0] ss_next[2][3];

// Next-state combinational logic
always_comb begin : array_in_thread2_comb     // test_cthread_array_access.cpp:113:5
    array_in_thread2_func;
end
function void array_in_thread2_func;
    integer i;
    integer j;
    ss_next = ss;
    i = sig;
    ss_next[i + 1][0] = 0;
    j = ss_next[i][i] * i;
    if (|ss_next[i][j])
    begin
        j = sig;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_in_thread2_ff
    if ( rst ) begin
        integer i;
        for (integer k = 0; k < 2; k++)
        begin
            for (integer l = 0; l < 3; l++)
            begin
                ss[k][l] <= k + l;
            end
        end
        i = 0;
    end
    else begin
        ss <= ss_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def0 (test_cthread_array_access.cpp:139:5) 

// Thread-local variables
logic signed [31:0] t3_next;

// Next-state combinational logic
always_comb begin : array_use_def0_comb     // test_cthread_array_access.cpp:139:5
    array_use_def0_func;
end
function void array_use_def0_func;
    logic w[3][3];
    logic c;
    t3_next = t3;
    w[1][1] = 1;
    c = w[1][1];
    t3_next = c;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def0_ff
    if ( rst ) begin
    end
    else begin
        t3 <= t3_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def1 (test_cthread_array_access.cpp:157:5) 

// Thread-local variables
logic signed [31:0] x[2];
logic signed [31:0] x_next[2];
logic signed [31:0] t4_next;

// Next-state combinational logic
always_comb begin : array_use_def1_comb     // test_cthread_array_access.cpp:157:5
    array_use_def1_func;
end
function void array_use_def1_func;
    integer z[2];
    integer i;
    integer u[2];
    integer y[2];
    integer j;
    t4_next = t4;
    x_next = x;
    z[1] = 2;
    i = 1 + z[1];
    z[0] = 1;
    i = z[0] + z[1];
    u[1] = 0;
    i = u[0];
    j = sig;
    y[j] = 0;
    i = y[0];
    x_next[j] = 0;
    i = x_next[j];
    t4_next = i;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def1_ff
    if ( rst ) begin
    end
    else begin
        x <= x_next;
        t4 <= t4_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def2 (test_cthread_array_access.cpp:193:5) 

// Thread-local variables
logic signed [31:0] z0[2];
logic signed [31:0] z_next[2];
logic [2:0] u0[2];
logic [2:0] u_next[2];
logic signed [31:0] t5_next;
logic [1:0] array_use_def2_PROC_STATE;
logic [1:0] array_use_def2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_use_def2_comb     // test_cthread_array_access.cpp:193:5
    array_use_def2_func;
end
function void array_use_def2_func;
    logic signed [3:0] y[2];
    integer i;
    t5_next = t5;
    u_next = u0;
    z_next = z0;
    array_use_def2_PROC_STATE_next = array_use_def2_PROC_STATE;
    
    case (array_use_def2_PROC_STATE)
        0: begin
            u_next[0] = 0; u_next[1] = 0;
            y[0] = 0; y[1] = 0;
            array_use_def2_PROC_STATE_next = 1; return;    // test_cthread_array_access.cpp:205:13;
        end
        1: begin
            z_next[1] = 2;
            i = z_next[0];
            u_next[0] = 3;
            i = u_next[0];
            y[1] = 4;
            array_use_def2_PROC_STATE_next = 2; return;    // test_cthread_array_access.cpp:214:13;
        end
        2: begin
            i = u_next[0];
            y[1] = 5;
            i = y[1];
            t5_next = i;
            array_use_def2_PROC_STATE_next = 0; return;    // test_cthread_array_access.cpp:220:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def2_ff
    if ( rst ) begin
        array_use_def2_PROC_STATE <= 0;    // test_cthread_array_access.cpp:195:9;
    end
    else begin
        z0 <= z_next;
        u0 <= u_next;
        t5 <= t5_next;
        array_use_def2_PROC_STATE <= array_use_def2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def_ptr1 (test_cthread_array_access.cpp:233:5) 

// Thread-local variables
logic signed [31:0] zp[2];
logic signed [31:0] zp_next[2];
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] yp[2];
logic signed [31:0] yp_next[2];
logic signed [31:0] xp[2];
logic signed [31:0] xp_next[2];
logic signed [31:0] t6_next;
logic signed [31:0] qp[2];

// Next-state combinational logic
always_comb begin : array_use_def_ptr1_comb     // test_cthread_array_access.cpp:233:5
    array_use_def_ptr1_func;
end
function void array_use_def_ptr1_func;
    integer i;
    j_next = j0;
    t6_next = t6;
    xp_next = xp;
    yp_next = yp;
    zp_next = zp;
    zp_next[1] = 3;
    i = zp_next[0];
    yp_next[j_next] = 4;
    i = yp_next[1];
    xp_next[0] = 5;
    xp_next[1] = 6;
    i = xp_next[j_next];
    qp[1] = 7;
    i = qp[1];
    t6_next = i;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def_ptr1_ff
    if ( rst ) begin
        j0 <= sig;
    end
    else begin
        zp <= zp_next;
        j0 <= j_next;
        yp <= yp_next;
        xp <= xp_next;
        t6 <= t6_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def_ptr2 (test_cthread_array_access.cpp:262:5) 

// Thread-local variables
logic signed [31:0] zpp[2][2];
logic signed [31:0] zpp_next[2][2];
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic signed [31:0] ypp[2][2];
logic signed [31:0] ypp_next[2][2];
logic signed [31:0] xpp[2][2];
logic signed [31:0] xpp_next[2][2];
logic signed [31:0] t7_next;
logic signed [31:0] qpp[2][2];

// Next-state combinational logic
always_comb begin : array_use_def_ptr2_comb     // test_cthread_array_access.cpp:262:5
    array_use_def_ptr2_func;
end
function void array_use_def_ptr2_func;
    integer i;
    j_next0 = j1;
    t7_next = t7;
    xpp_next = xpp;
    ypp_next = ypp;
    zpp_next = zpp;
    zpp_next[1][0] = 3;
    i = zpp_next[1][1];
    ypp_next[j_next0][1] = 4;
    i = ypp_next[0][1];
    xpp_next[0][0] = 5;
    xpp_next[1][0] = 6;
    xpp_next[0][1] = 6;
    xpp_next[1][1] = 6;
    i = xpp_next[j_next0][0];
    qpp[1][1] = 7;
    i = qpp[1][1];
    t7_next = i;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def_ptr2_ff
    if ( rst ) begin
        j1 <= sig;
    end
    else begin
        zpp <= zpp_next;
        j1 <= j_next0;
        ypp <= ypp_next;
        xpp <= xpp_next;
        t7 <= t7_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def_sig (test_cthread_array_access.cpp:293:5) 

// Thread-local variables
logic signed [31:0] j2;
logic signed [31:0] j_next1;
logic ws_next[3][3];
logic vs_next[3][3];
logic ys_next[3][3];
logic signed [31:0] t8_next;

// Next-state combinational logic
always_comb begin : array_use_def_sig_comb     // test_cthread_array_access.cpp:293:5
    array_use_def_sig_func;
end
function void array_use_def_sig_func;
    logic c;
    j_next1 = j2;
    t8_next = t8;
    vs_next = vs;
    ws_next = ws;
    ys_next = ys;
    ws_next[1][j_next1] = 1;
    vs_next[j_next1][1] = 1;
    ys_next[0][1] = 1;
    c = ws[1][1];
    c = vs[1][0];
    c = ys[0][1];
    t8_next = c;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def_sig_ff
    if ( rst ) begin
        j2 <= sig;
    end
    else begin
        j2 <= j_next1;
        ws <= ws_next;
        vs <= vs_next;
        ys <= ys_next;
        t8 <= t8_next;
    end
end

endmodule


