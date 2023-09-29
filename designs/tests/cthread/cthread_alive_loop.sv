//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic signed [31:0] s;
logic signed [31:0] t;

//------------------------------------------------------------------------------
// Method process: bugMethProc (test_cthread_alive_loop.cpp:82:5) 

always_comb 
begin : bugMethProc     // test_cthread_alive_loop.cpp:82:5
    integer k;
    integer TMP_0;
    integer j;
    logic [3:0] N0;
    logic [3:0] x0;
    k = 0;
    for (integer i = 0; i < 1; ++i)
    begin
        j = s;
        // Call f() begin
        TMP_0 = j + 1;
        // Call f() end
        N0 = TMP_0;
        x0 = 0;
        do
        begin
            k++;
        end
        while (x0 <= N0);
        k++;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: stSmemPullFsmProc1 (test_cthread_alive_loop.cpp:97:5) 

// Thread-local variables
logic [3:0] x00;
logic [3:0] x0_next;
logic [3:0] N00;
logic [3:0] N0_next;
logic [1:0] stSmemPullFsmProc1_PROC_STATE;
logic [1:0] stSmemPullFsmProc1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : stSmemPullFsmProc1_comb     // test_cthread_alive_loop.cpp:97:5
    stSmemPullFsmProc1_func;
end
function void stSmemPullFsmProc1_func;
    integer k;
    integer TMP_0;
    integer j;
    integer TMP_2;
    N0_next = N00;
    x0_next = x00;
    stSmemPullFsmProc1_PROC_STATE_next = stSmemPullFsmProc1_PROC_STATE;
    
    case (stSmemPullFsmProc1_PROC_STATE)
        0: begin
            j = s;
            // Call f() begin
            TMP_0 = j + 1;
            // Call f() end
            N0_next = TMP_0;
            x0_next = 0;
            k = 1;
            stSmemPullFsmProc1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:108:17;
        end
        1: begin
            if (x0_next <= N0_next)
            begin
                k = 1;
                stSmemPullFsmProc1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:108:17;
            end
            stSmemPullFsmProc1_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:112:13;
        end
        2: begin
            j = s;
            // Call f() begin
            TMP_2 = j + 1;
            // Call f() end
            N0_next = TMP_2;
            x0_next = 0;
            k = 1;
            stSmemPullFsmProc1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:108:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : stSmemPullFsmProc1_ff
    if ( ~rstn ) begin
        integer k;
        k = 0;
        stSmemPullFsmProc1_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:100:9;
    end
    else begin
        x00 <= x0_next;
        N00 <= N0_next;
        stSmemPullFsmProc1_PROC_STATE <= stSmemPullFsmProc1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: stSmemPullFsmProc2 (test_cthread_alive_loop.cpp:116:5) 

// Thread-local variables
logic [3:0] x01;
logic [3:0] x0_next0;
logic [3:0] N01;
logic [3:0] N0_next0;
logic [3:0] x3;
logic [3:0] x3_next;
logic [3:0] N3;
logic [3:0] N3_next;
logic [1:0] stSmemPullFsmProc2_PROC_STATE;
logic [1:0] stSmemPullFsmProc2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : stSmemPullFsmProc2_comb     // test_cthread_alive_loop.cpp:116:5
    stSmemPullFsmProc2_func;
end
function void stSmemPullFsmProc2_func;
    integer k;
    integer TMP_0;
    integer j;
    N0_next0 = N01;
    N3_next = N3;
    x0_next0 = x01;
    x3_next = x3;
    stSmemPullFsmProc2_PROC_STATE_next = stSmemPullFsmProc2_PROC_STATE;
    
    case (stSmemPullFsmProc2_PROC_STATE)
        0: begin
            k = 1;
            stSmemPullFsmProc2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:123:13;
        end
        1: begin
            k = 2;
            N3_next = s;
            j = s;
            // Call f() begin
            TMP_0 = j + 1;
            // Call f() end
            N0_next0 = TMP_0;
            x3_next = 0;
            x0_next0 = 0;
            k = 3;
            stSmemPullFsmProc2_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:134:21;
        end
        2: begin
            if (x0_next0 <= N0_next0)
            begin
                k = 3;
                stSmemPullFsmProc2_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:134:21;
            end
            x3_next = x3_next + 1;
            if (x3_next <= N3_next)
            begin
                x0_next0 = 0;
                k = 3;
                stSmemPullFsmProc2_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:134:21;
            end
            stSmemPullFsmProc2_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:140:13;
        end
        3: begin
            k = 4;
            k = 1;
            stSmemPullFsmProc2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:123:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : stSmemPullFsmProc2_ff
    if ( ~rstn ) begin
        integer k;
        k = 0;
        stSmemPullFsmProc2_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:119:9;
    end
    else begin
        x01 <= x0_next0;
        N01 <= N0_next0;
        x3 <= x3_next;
        N3 <= N3_next;
        stSmemPullFsmProc2_PROC_STATE <= stSmemPullFsmProc2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: stSmemPullFsmProc3 (test_cthread_alive_loop.cpp:145:5) 

// Thread-local variables
logic [3:0] x02;
logic [3:0] x0_next1;
logic [3:0] N02;
logic [3:0] N0_next1;
logic [3:0] x1;
logic [3:0] x1_next;
logic [3:0] N1;
logic [3:0] N1_next;
logic [3:0] x2;
logic [3:0] x2_next;
logic [3:0] N2;
logic [3:0] N2_next;
logic [2:0] stSmemPullFsmProc3_PROC_STATE;
logic [2:0] stSmemPullFsmProc3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : stSmemPullFsmProc3_comb     // test_cthread_alive_loop.cpp:145:5
    stSmemPullFsmProc3_func;
end
function void stSmemPullFsmProc3_func;
    integer k;
    N0_next1 = N02;
    N1_next = N1;
    N2_next = N2;
    x0_next1 = x02;
    x1_next = x1;
    x2_next = x2;
    stSmemPullFsmProc3_PROC_STATE_next = stSmemPullFsmProc3_PROC_STATE;
    
    case (stSmemPullFsmProc3_PROC_STATE)
        0: begin
            if (|s || |t)
            begin
                stSmemPullFsmProc3_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:153:17;
            end
            k = 1;
            stSmemPullFsmProc3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:156:13;
        end
        2: begin
            k = 2;
            x2_next = 0;
            N2_next = s;
            x1_next = 0;
            N1_next = s;
            x0_next1 = 0;
            N0_next1 = s;
            k = s;
            stSmemPullFsmProc3_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:173:25;
        end
        3: begin
            k = s + 1;
            if (!(|s))
            begin
                stSmemPullFsmProc3_PROC_STATE_next = 4; return;    // test_cthread_alive_loop.cpp:178:42;
            end
            k = 3;
            if (x0_next1 <= N0_next1)
            begin
                k = s;
                stSmemPullFsmProc3_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:173:25;
            end
            x1_next = x1_next + 1;
            if (x1_next <= N1_next)
            begin
                x0_next1 = 0;
                N0_next1 = s;
                k = s;
                stSmemPullFsmProc3_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:173:25;
            end
            x2_next = x2_next + 1;
            if (x2_next <= N2_next)
            begin
                x1_next = 0;
                N1_next = s;
                x0_next1 = 0;
                N0_next1 = s;
                k = s;
                stSmemPullFsmProc3_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:173:25;
            end
            stSmemPullFsmProc3_PROC_STATE_next = 5; return;    // test_cthread_alive_loop.cpp:188:13;
        end
        4: begin
            if (!(|s))
            begin
                stSmemPullFsmProc3_PROC_STATE_next = 4; return;    // test_cthread_alive_loop.cpp:178:42;
            end
            k = 3;
            if (x0_next1 <= N0_next1)
            begin
                k = s;
                stSmemPullFsmProc3_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:173:25;
            end
            x1_next = x1_next + 1;
            if (x1_next <= N1_next)
            begin
                x0_next1 = 0;
                N0_next1 = s;
                k = s;
                stSmemPullFsmProc3_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:173:25;
            end
            x2_next = x2_next + 1;
            if (x2_next <= N2_next)
            begin
                x1_next = 0;
                N1_next = s;
                x0_next1 = 0;
                N0_next1 = s;
                k = s;
                stSmemPullFsmProc3_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:173:25;
            end
            stSmemPullFsmProc3_PROC_STATE_next = 5; return;    // test_cthread_alive_loop.cpp:188:13;
        end
        5: begin
            k = 4;
            if (|s || |t)
            begin
                stSmemPullFsmProc3_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:153:17;
            end
            k = 1;
            stSmemPullFsmProc3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:156:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : stSmemPullFsmProc3_ff
    if ( ~rstn ) begin
        integer k;
        k = 0;
        stSmemPullFsmProc3_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:148:9;
    end
    else begin
        x02 <= x0_next1;
        N02 <= N0_next1;
        x1 <= x1_next;
        N1 <= N1_next;
        x2 <= x2_next;
        N2 <= N2_next;
        stSmemPullFsmProc3_PROC_STATE <= stSmemPullFsmProc3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_workaround (test_cthread_alive_loop.cpp:195:5) 

// Thread-local variables
logic signed [31:0] N;
logic signed [31:0] N_next;
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic [1:0] for_workaround_PROC_STATE;
logic [1:0] for_workaround_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_workaround_comb     // test_cthread_alive_loop.cpp:195:5
    for_workaround_func;
end
function void for_workaround_func;
    N_next = N;
    i_next = i0;
    j_next = j0;
    for_workaround_PROC_STATE_next = for_workaround_PROC_STATE;
    
    case (for_workaround_PROC_STATE)
        0: begin
            N_next = s;
            j_next = 0;
            if (j_next < N_next)
            begin
                for_workaround_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:203:17;
            end
            for_workaround_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:209:13;
        end
        1: begin
            i_next = 1;
            if (i_next < N_next)
            begin
                for_workaround_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:205:21;
            end
            j_next++;
            if (j_next < N_next)
            begin
                for_workaround_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:203:17;
            end
            for_workaround_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:209:13;
        end
        2: begin
            i_next++;
            if (i_next < N_next)
            begin
                for_workaround_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:205:21;
            end
            j_next++;
            if (j_next < N_next)
            begin
                for_workaround_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:203:17;
            end
            for_workaround_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:209:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : for_workaround_ff
    if ( ~rstn ) begin
        for_workaround_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:197:9;
    end
    else begin
        N <= N_next;
        i0 <= i_next;
        j0 <= j_next;
        for_workaround_PROC_STATE <= for_workaround_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_workaround (test_cthread_alive_loop.cpp:213:5) 

// Thread-local variables
logic signed [31:0] N4;
logic signed [31:0] N_next0;
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic signed [31:0] M;
logic signed [31:0] M_next;
logic [1:0] dowhile_workaround_PROC_STATE;
logic [1:0] dowhile_workaround_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_workaround_comb     // test_cthread_alive_loop.cpp:213:5
    dowhile_workaround_func;
end
function void dowhile_workaround_func;
    M_next = M;
    N_next0 = N4;
    i_next0 = i1;
    j_next0 = j1;
    dowhile_workaround_PROC_STATE_next = dowhile_workaround_PROC_STATE;
    
    case (dowhile_workaround_PROC_STATE)
        0: begin
            M_next = s;
            N_next0 = s;
            j_next0 = 0;
            if (j_next0 < M_next)
            begin
                i_next0 = 0;
                i_next0++;
                dowhile_workaround_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:223:26;
            end
            dowhile_workaround_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:227:13;
        end
        1: begin
            if (i_next0 < N_next0)
            begin
                i_next0++;
                dowhile_workaround_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:223:26;
            end
            j_next0++;
            if (j_next0 < M_next)
            begin
                i_next0 = 0;
                i_next0++;
                dowhile_workaround_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:223:26;
            end
            dowhile_workaround_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:227:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : dowhile_workaround_ff
    if ( ~rstn ) begin
        dowhile_workaround_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:215:9;
    end
    else begin
        N4 <= N_next0;
        i1 <= i_next0;
        j1 <= j_next0;
        M <= M_next;
        dowhile_workaround_PROC_STATE <= dowhile_workaround_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_alive1 (test_cthread_alive_loop.cpp:232:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;
logic signed [31:0] N5;
logic signed [31:0] N_next1;
logic signed [31:0] j2;
logic signed [31:0] j_next1;
logic signed [31:0] M0;
logic signed [31:0] M_next0;
logic [1:0] for_alive1_PROC_STATE;
logic [1:0] for_alive1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_alive1_comb     // test_cthread_alive_loop.cpp:232:5
    for_alive1_func;
end
function void for_alive1_func;
    M_next0 = M0;
    N_next1 = N5;
    i_next1 = i2;
    j_next1 = j2;
    for_alive1_PROC_STATE_next = for_alive1_PROC_STATE;
    
    case (for_alive1_PROC_STATE)
        0: begin
            M_next0 = s;
            N_next1 = s + 1;
            j_next1 = 0;
            if (j_next1 < M_next0)
            begin
                i_next1 = 0;
                for_alive1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:243:21>;
            end
            for_alive1_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:247:13;
        end
        1: begin
            i_next1++;
            if (i_next1 < N_next1)
            begin
                for_alive1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:243:21>;
            end
            j_next1++;
            if (j_next1 < M_next0)
            begin
                i_next1 = 0;
                for_alive1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:243:21>;
            end
            for_alive1_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:247:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : for_alive1_ff
    if ( ~rstn ) begin
        for_alive1_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:234:9;
    end
    else begin
        i2 <= i_next1;
        N5 <= N_next1;
        j2 <= j_next1;
        M0 <= M_next0;
        for_alive1_PROC_STATE <= for_alive1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_alive2 (test_cthread_alive_loop.cpp:252:5) 

// Thread-local variables
logic signed [31:0] i3;
logic signed [31:0] i_next2;
logic signed [31:0] N6;
logic signed [31:0] N_next2;
logic signed [31:0] j3;
logic signed [31:0] j_next2;
logic signed [31:0] M1;
logic signed [31:0] M_next1;
logic signed [31:0] k0;
logic signed [31:0] k_next;
logic [1:0] for_alive2_PROC_STATE;
logic [1:0] for_alive2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_alive2_comb     // test_cthread_alive_loop.cpp:252:5
    for_alive2_func;
end
function void for_alive2_func;
    M_next1 = M1;
    N_next2 = N6;
    i_next2 = i3;
    j_next2 = j3;
    k_next = k0;
    for_alive2_PROC_STATE_next = for_alive2_PROC_STATE;
    
    case (for_alive2_PROC_STATE)
        0: begin
            M_next1 = s;
            N_next2 = s + 1;
            k_next = 0;
            if (k_next < M_next1)
            begin
                j_next2 = 0;
                i_next2 = 0;
                for_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:265:25>;
            end
            for_alive2_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:270:13;
        end
        1: begin
            i_next2++;
            if (i_next2 < N_next2)
            begin
                for_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:265:25>;
            end
            j_next2++;
            if (j_next2 < M_next1)
            begin
                i_next2 = 0;
                for_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:265:25>;
            end
            k_next++;
            if (k_next < M_next1)
            begin
                j_next2 = 0;
                i_next2 = 0;
                for_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:265:25>;
            end
            for_alive2_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:270:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : for_alive2_ff
    if ( ~rstn ) begin
        for_alive2_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:254:9;
    end
    else begin
        i3 <= i_next2;
        N6 <= N_next2;
        j3 <= j_next2;
        M1 <= M_next1;
        k0 <= k_next;
        for_alive2_PROC_STATE <= for_alive2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_alive3 (test_cthread_alive_loop.cpp:275:5) 

// Thread-local variables
logic signed [31:0] i4;
logic signed [31:0] i_next3;
logic signed [31:0] N7;
logic signed [31:0] N_next3;
logic signed [31:0] j4;
logic signed [31:0] j_next3;
logic signed [31:0] M2;
logic signed [31:0] M_next2;
logic [1:0] for_alive3_PROC_STATE;
logic [1:0] for_alive3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_alive3_comb     // test_cthread_alive_loop.cpp:275:5
    for_alive3_func;
end
function void for_alive3_func;
    M_next2 = M2;
    N_next3 = N7;
    i_next3 = i4;
    j_next3 = j4;
    for_alive3_PROC_STATE_next = for_alive3_PROC_STATE;
    
    case (for_alive3_PROC_STATE)
        0: begin
            M_next2 = s;
            N_next3 = s + 1;
            j_next3 = 0;
            if (j_next3 < M_next2)
            begin
                if (|s)
                begin
                    for_alive3_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:285:21;
                end
                i_next3 = 0;
                for_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:290:21>;
            end
            for_alive3_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:295:13;
        end
        1: begin
            i_next3 = 0;
            for_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:290:21>;
        end
        2: begin
            i_next3++;
            if (i_next3 < N_next3)
            begin
                for_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:290:21>;
            end
            j_next3++;
            if (j_next3 < M_next2)
            begin
                if (|s)
                begin
                    for_alive3_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:285:21;
                end
                i_next3 = 0;
                for_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:290:21>;
            end
            for_alive3_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:295:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : for_alive3_ff
    if ( ~rstn ) begin
        for_alive3_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:277:9;
    end
    else begin
        i4 <= i_next3;
        N7 <= N_next3;
        j4 <= j_next3;
        M2 <= M_next2;
        for_alive3_PROC_STATE <= for_alive3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_alive4 (test_cthread_alive_loop.cpp:300:5) 

// Thread-local variables
logic signed [31:0] i5;
logic signed [31:0] i_next4;
logic for_alive4_PROC_STATE;
logic for_alive4_PROC_STATE_next;

// Thread-local constants
logic signed [31:0] N8;

// Next-state combinational logic
always_comb begin : for_alive4_comb     // test_cthread_alive_loop.cpp:300:5
    for_alive4_func;
end
function void for_alive4_func;
    i_next4 = i5;
    for_alive4_PROC_STATE_next = for_alive4_PROC_STATE;
    
    case (for_alive4_PROC_STATE)
        0: begin
            i_next4 = 0;
            for_alive4_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:309:17>;
        end
        1: begin
            i_next4++;
            if (i_next4 < N8)
            begin
                for_alive4_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:309:17>;
            end
            i_next4 = 0;
            for_alive4_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:309:17>;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : for_alive4_ff
    if ( ~rstn ) begin
        N8 = s + 1;
        for_alive4_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:303:9;
    end
    else begin
        i5 <= i_next4;
        for_alive4_PROC_STATE <= for_alive4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_alive5 (test_cthread_alive_loop.cpp:316:5) 

// Thread-local variables
logic signed [31:0] i6;
logic signed [31:0] i_next5;
logic signed [31:0] N9;
logic signed [31:0] N_next4;
logic signed [31:0] i7;
logic signed [31:0] i_next6;
logic signed [31:0] j5;
logic signed [31:0] j_next4;
logic signed [31:0] M3;
logic signed [31:0] M_next3;
logic [1:0] for_alive5_PROC_STATE;
logic [1:0] for_alive5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_alive5_comb     // test_cthread_alive_loop.cpp:316:5
    for_alive5_func;
end
function void for_alive5_func;
    M_next3 = M3;
    N_next4 = N9;
    i_next5 = i6;
    i_next6 = i7;
    j_next4 = j5;
    for_alive5_PROC_STATE_next = for_alive5_PROC_STATE;
    
    case (for_alive5_PROC_STATE)
        0: begin
            M_next3 = s;
            N_next4 = s + 1;
            j_next4 = 0;
            if (j_next4 < M_next3)
            begin
                i_next5 = 0;
                for_alive5_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:328:21>;
            end
            for_alive5_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:336:13;
        end
        1: begin
            i_next5++;
            if (i_next5 < N_next4)
            begin
                for_alive5_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:328:21>;
            end
            i_next6 = 0;
            if (i_next6 < N_next4)
            begin
                for_alive5_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:332:21;
            end
            j_next4++;
            if (j_next4 < M_next3)
            begin
                i_next5 = 0;
                for_alive5_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:328:21>;
            end
            for_alive5_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:336:13;
        end
        2: begin
            i_next6++;
            if (i_next6 < N_next4)
            begin
                for_alive5_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:332:21;
            end
            j_next4++;
            if (j_next4 < M_next3)
            begin
                i_next5 = 0;
                for_alive5_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:328:21>;
            end
            for_alive5_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:336:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : for_alive5_ff
    if ( ~rstn ) begin
        for_alive5_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:318:9;
    end
    else begin
        i6 <= i_next5;
        N9 <= N_next4;
        i7 <= i_next6;
        j5 <= j_next4;
        M3 <= M_next3;
        for_alive5_PROC_STATE <= for_alive5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_alive6 (test_cthread_alive_loop.cpp:341:5) 

// Thread-local variables
logic signed [31:0] i8;
logic signed [31:0] i_next7;
logic signed [31:0] i9;
logic signed [31:0] i_next8;
logic signed [31:0] i10;
logic signed [31:0] i_next9;
logic signed [31:0] j6;
logic signed [31:0] j_next5;
logic [1:0] for_alive6_PROC_STATE;
logic [1:0] for_alive6_PROC_STATE_next;

// Thread-local constants
logic signed [31:0] M4;
logic signed [31:0] N10;

// Next-state combinational logic
always_comb begin : for_alive6_comb     // test_cthread_alive_loop.cpp:341:5
    for_alive6_func;
end
function void for_alive6_func;
    i_next7 = i8;
    i_next8 = i9;
    i_next9 = i10;
    j_next5 = j6;
    for_alive6_PROC_STATE_next = for_alive6_PROC_STATE;
    
    case (for_alive6_PROC_STATE)
        0: begin
            j_next5 = 0;
            i_next7 = 0;
            for_alive6_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:353:21>;
        end
        1: begin
            i_next7++;
            if (i_next7 < N10)
            begin
                for_alive6_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:353:21>;
            end
            i_next8 = 0;
            for_alive6_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:358:21>;
        end
        2: begin
            i_next8++;
            if (i_next8 < N10)
            begin
                for_alive6_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:358:21>;
            end
            if (|s)
            begin
                i_next9 = 0;
                if (i_next9 < N10)
                begin
                    for_alive6_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:363:24;
                end
            end
            j_next5++;
            if (j_next5 < M4)
            begin
                i_next7 = 0;
                for_alive6_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:353:21>;
            end
            j_next5 = 0;
            i_next7 = 0;
            for_alive6_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:353:21>;
        end
        3: begin
            i_next9++;
            if (i_next9 < N10)
            begin
                for_alive6_PROC_STATE_next = 3; return;    // test_cthread_alive_loop.cpp:363:24;
            end
            j_next5++;
            if (j_next5 < M4)
            begin
                i_next7 = 0;
                for_alive6_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:353:21>;
            end
            j_next5 = 0;
            i_next7 = 0;
            for_alive6_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:353:21>;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : for_alive6_ff
    if ( ~rstn ) begin
        M4 = s;
        N10 = s + 1;
        for_alive6_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:345:9;
    end
    else begin
        i8 <= i_next7;
        i9 <= i_next8;
        i10 <= i_next9;
        j6 <= j_next5;
        for_alive6_PROC_STATE <= for_alive6_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_alive1 (test_cthread_alive_loop.cpp:372:5) 

// Thread-local variables
logic signed [31:0] i11;
logic signed [31:0] i_next10;
logic signed [31:0] j7;
logic signed [31:0] j_next6;
logic [1:0] while_alive1_PROC_STATE;
logic [1:0] while_alive1_PROC_STATE_next;

// Thread-local constants
logic signed [31:0] M5;

// Next-state combinational logic
always_comb begin : while_alive1_comb     // test_cthread_alive_loop.cpp:372:5
    while_alive1_func;
end
function void while_alive1_func;
    i_next10 = i11;
    j_next6 = j7;
    while_alive1_PROC_STATE_next = while_alive1_PROC_STATE;
    
    case (while_alive1_PROC_STATE)
        0: begin
            j_next6 = 0;
            if (j_next6 < M5)
            begin
                i_next10 = 0;
                while_alive1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:383:21>;
            end
            while_alive1_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:388:13;
        end
        1: begin
            i_next10++;
            if (i_next10 < s + 1)
            begin
                while_alive1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:383:21>;
            end
            j_next6++;
            if (j_next6 < M5)
            begin
                i_next10 = 0;
                while_alive1_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:383:21>;
            end
            while_alive1_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:388:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : while_alive1_ff
    if ( ~rstn ) begin
        M5 = s;
        while_alive1_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:375:9;
    end
    else begin
        i11 <= i_next10;
        j7 <= j_next6;
        while_alive1_PROC_STATE <= while_alive1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_alive2 (test_cthread_alive_loop.cpp:392:5) 

// Thread-local variables
logic signed [31:0] i12;
logic signed [31:0] i_next11;
logic signed [31:0] j8;
logic signed [31:0] j_next7;
logic while_alive2_PROC_STATE;
logic while_alive2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_alive2_comb     // test_cthread_alive_loop.cpp:392:5
    while_alive2_func;
end
function void while_alive2_func;
    i_next11 = i12;
    j_next7 = j8;
    while_alive2_PROC_STATE_next = while_alive2_PROC_STATE;
    
    case (while_alive2_PROC_STATE)
        0: begin
            j_next7 = 0;
            i_next11 = 0;
            while_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:403:21>;
        end
        1: begin
            i_next11++;
            if (i_next11 < s + 1)
            begin
                while_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:403:21>;
            end
            j_next7++;
            if (j_next7 < s + 2)
            begin
                i_next11 = 0;
                while_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:403:21>;
            end
            j_next7 = 0;
            i_next11 = 0;
            while_alive2_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:403:21>;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : while_alive2_ff
    if ( ~rstn ) begin
        while_alive2_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:394:9;
    end
    else begin
        i12 <= i_next11;
        j8 <= j_next7;
        while_alive2_PROC_STATE <= while_alive2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_alive3 (test_cthread_alive_loop.cpp:411:5) 

// Thread-local variables
logic signed [31:0] i13;
logic signed [31:0] i_next12;
logic signed [31:0] i14;
logic signed [31:0] i_next13;
logic signed [31:0] j9;
logic signed [31:0] j_next8;
logic [1:0] while_alive3_PROC_STATE;
logic [1:0] while_alive3_PROC_STATE_next;

// Thread-local constants
logic signed [31:0] N11;

// Next-state combinational logic
always_comb begin : while_alive3_comb     // test_cthread_alive_loop.cpp:411:5
    while_alive3_func;
end
function void while_alive3_func;
    i_next12 = i13;
    i_next13 = i14;
    j_next8 = j9;
    while_alive3_PROC_STATE_next = while_alive3_PROC_STATE;
    
    case (while_alive3_PROC_STATE)
        0: begin
            j_next8 = 0;
            if (j_next8 < s + 2)
            begin
                if (s == 42)
                begin
                    i_next12 = 0;
                    while_alive3_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:422:25>;
                end else begin
                    i_next13 = 0;
                    while_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:428:25>;
                end
            end
            while_alive3_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:435:13;
        end
        1: begin
            i_next12++;
            if (i_next12 < N11)
            begin
                while_alive3_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:422:25>;
            end
            j_next8++;
            if (j_next8 < s + 2)
            begin
                if (s == 42)
                begin
                    i_next12 = 0;
                    while_alive3_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:422:25>;
                end else begin
                    i_next13 = 0;
                    while_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:428:25>;
                end
            end
            while_alive3_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:435:13;
        end
        2: begin
            i_next13++;
            if (i_next13 < s + 1)
            begin
                while_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:428:25>;
            end
            j_next8++;
            if (j_next8 < s + 2)
            begin
                if (s == 42)
                begin
                    i_next12 = 0;
                    while_alive3_PROC_STATE_next = 1; return;    // test_cthread_alive_loop.cpp:422:25>;
                end else begin
                    i_next13 = 0;
                    while_alive3_PROC_STATE_next = 2; return;    // test_cthread_alive_loop.cpp:428:25>;
                end
            end
            while_alive3_PROC_STATE_next = 0; return;    // test_cthread_alive_loop.cpp:435:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : while_alive3_ff
    if ( ~rstn ) begin
        N11 = s + 1;
        while_alive3_PROC_STATE <= 0;    // test_cthread_alive_loop.cpp:414:9;
    end
    else begin
        i13 <= i_next12;
        i14 <= i_next13;
        j9 <= j_next8;
        while_alive3_PROC_STATE <= while_alive3_PROC_STATE_next;
    end
end

endmodule


