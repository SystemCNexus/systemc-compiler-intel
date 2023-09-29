//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.14
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
logic rst;
logic clk_gen;
logic clk;

// Assignments generated for C++ channel arrays
assign clk = clk_gen;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_for_if.cpp:234:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals
logic sleep_enable;
logic block_access[3];
logic mem_active[3];
logic [2:0] sleep_time;
logic [2:0] wakeup_time;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] s;
logic signed [31:0] t2;
logic signed [31:0] t3;

// Local parameters generated for C++ constants
localparam logic [31:0] BLOCK_NUM = 3;

//------------------------------------------------------------------------------
// Clocked THREAD: for_in_if1 (test_cthread_for_if.cpp:55:5) 

// Thread-local variables
logic [31:0] i;
logic [31:0] i_next;
logic [31:0] sleepTime;
logic [31:0] sleepTime_next;
logic signed [31:0] t0_next;
logic [1:0] for_in_if1_PROC_STATE;
logic [1:0] for_in_if1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_in_if1_comb     // test_cthread_for_if.cpp:55:5
    for_in_if1_func;
end
function void for_in_if1_func;
    integer k;
    i_next = i;
    sleepTime_next = sleepTime;
    t0_next = t0;
    for_in_if1_PROC_STATE_next = for_in_if1_PROC_STATE;
    
    case (for_in_if1_PROC_STATE)
        0: begin
            sleepTime_next = sleep_time;
            if (sleep_enable)
            begin
                i_next = 0;
                if (i_next < sleepTime_next)
                begin
                    for_in_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:66:21;
                end
                k = 1;
            end
            k = 2;
            t0_next = k;
            for_in_if1_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:73:13;
        end
        1: begin
            i_next++;
            if (i_next < sleepTime_next)
            begin
                for_in_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:66:21;
            end
            k = 1;
            k = 2;
            t0_next = k;
            for_in_if1_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:73:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : for_in_if1_ff
    if ( rst ) begin
        integer k;
        k = 0;
        for_in_if1_PROC_STATE <= 0;    // test_cthread_for_if.cpp:59:9;
    end
    else begin
        i <= i_next;
        sleepTime <= sleepTime_next;
        t0 <= t0_next;
        for_in_if1_PROC_STATE <= for_in_if1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_in_if2 (test_cthread_for_if.cpp:77:5) 

// Thread-local variables
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] m;
logic signed [31:0] m_next;
logic [2:0] sleep_time_next;
logic [1:0] for_in_if2_PROC_STATE;
logic [1:0] for_in_if2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_in_if2_comb     // test_cthread_for_if.cpp:77:5
    for_in_if2_func;
end
function void for_in_if2_func;
    j_next = j;
    m_next = m;
    sleep_time_next = sleep_time;
    for_in_if2_PROC_STATE_next = for_in_if2_PROC_STATE;
    
    case (for_in_if2_PROC_STATE)
        0: begin
            m_next = 1;
            if (wakeup_time > m_next + 1)
            begin
                j_next = 42;
                if (j_next < wakeup_time)
                begin
                    m_next++;
                    for_in_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:88:21;
                end
                sleep_time_next = m_next;
            end
            for_in_if2_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:92:13;
        end
        1: begin
            j_next--;
            if (j_next < wakeup_time)
            begin
                m_next++;
                for_in_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:88:21;
            end
            sleep_time_next = m_next;
            for_in_if2_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:92:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : for_in_if2_ff
    if ( rst ) begin
        for_in_if2_PROC_STATE <= 0;    // test_cthread_for_if.cpp:79:9;
    end
    else begin
        j <= j_next;
        m <= m_next;
        sleep_time <= sleep_time_next;
        for_in_if2_PROC_STATE <= for_in_if2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_in_if3 (test_cthread_for_if.cpp:96:5) 

// Thread-local variables
logic [3:0] arr[4];
logic [3:0] arr_next[4];
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic [1:0] for_in_if3_PROC_STATE;
logic [1:0] for_in_if3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_in_if3_comb     // test_cthread_for_if.cpp:96:5
    for_in_if3_func;
end
function void for_in_if3_func;
    arr_next = arr;
    i_next0 = i0;
    for_in_if3_PROC_STATE_next = for_in_if3_PROC_STATE;
    
    case (for_in_if3_PROC_STATE)
        0: begin
            if (|arr_next[sleep_time])
            begin
                for_in_if3_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:107:17;
            end else begin
                i_next0 = 0;
                for_in_if3_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:110:21;
            end
        end
        2: begin
            arr_next[i_next0] = arr_next[i_next0] + 1;
            i_next0++;
            if (i_next0 < 4)
            begin
                for_in_if3_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:110:21;
            end
            if (|arr_next[sleep_time])
            begin
                for_in_if3_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:107:17;
            end else begin
                i_next0 = 0;
                for_in_if3_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:110:21;
            end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : for_in_if3_ff
    if ( rst ) begin
        arr[0] <= 0; arr[1] <= 0; arr[2] <= 0; arr[3] <= 0;
        for (integer i_1 = 0; i_1 < 4; i_1++)
        begin
            arr[i_1] <= i_1;
        end
        for_in_if3_PROC_STATE <= 0;    // test_cthread_for_if.cpp:102:9;
    end
    else begin
        arr <= arr_next;
        i0 <= i_next0;
        for_in_if3_PROC_STATE <= for_in_if3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_in_if_bug (test_cthread_for_if.cpp:120:5) 

// Thread-local variables
logic [31:0] i1;
logic [31:0] i_next1;
logic [2:0] wakeupTime;
logic [2:0] wakeupTime_next;
logic [31:0] i2;
logic [31:0] i_next2;
logic [2:0] sleepTime0;
logic [2:0] sleepTime_next0;
logic mem_active_next[3];
logic signed [31:0] t1_next;
logic [1:0] for_in_if_bug_PROC_STATE;
logic [1:0] for_in_if_bug_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_in_if_bug_comb     // test_cthread_for_if.cpp:120:5
    for_in_if_bug_func;
end
function void for_in_if_bug_func;
    integer k;
    logic blockFlags_flat[3];
    i_next1 = i1;
    i_next2 = i2;
    mem_active_next = mem_active;
    sleepTime_next0 = sleepTime0;
    t1_next = t1;
    wakeupTime_next = wakeupTime;
    for_in_if_bug_PROC_STATE_next = for_in_if_bug_PROC_STATE;
    
    case (for_in_if_bug_PROC_STATE)
        0: begin
            wakeupTime_next = wakeup_time;
            i_next1 = 0;
            if (i_next1 < wakeupTime_next)
            begin
                for_in_if_bug_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:130:17;
            end
            if (sleep_enable)
            begin
                for (integer i_1 = 0; i_1 < BLOCK_NUM; i_1++)
                begin
                    blockFlags_flat[i_1] = block_access[i_1];
                    if (blockFlags_flat[i_1])
                    begin
                        mem_active_next[i_1] = 0;
                    end
                end
                sleepTime_next0 = sleep_time;
                i_next2 = 0;
                if (i_next2 < sleepTime_next0)
                begin
                    for_in_if_bug_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:142:21;
                end
                k = 1;
            end
            k = 2;
            t1_next = k;
            for_in_if_bug_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:149:13;
        end
        1: begin
            i_next1++;
            if (i_next1 < wakeupTime_next)
            begin
                for_in_if_bug_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:130:17;
            end
            if (sleep_enable)
            begin
                for (integer i_1 = 0; i_1 < BLOCK_NUM; i_1++)
                begin
                    blockFlags_flat[i_1] = block_access[i_1];
                    if (blockFlags_flat[i_1])
                    begin
                        mem_active_next[i_1] = 0;
                    end
                end
                sleepTime_next0 = sleep_time;
                i_next2 = 0;
                if (i_next2 < sleepTime_next0)
                begin
                    for_in_if_bug_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:142:21;
                end
                k = 1;
            end
            k = 2;
            t1_next = k;
            for_in_if_bug_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:149:13;
        end
        2: begin
            i_next2++;
            if (i_next2 < sleepTime_next0)
            begin
                for_in_if_bug_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:142:21;
            end
            k = 1;
            k = 2;
            t1_next = k;
            for_in_if_bug_PROC_STATE_next = 0; return;    // test_cthread_for_if.cpp:149:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : for_in_if_bug_ff
    if ( rst ) begin
        integer k;
        k = 0;
        for_in_if_bug_PROC_STATE <= 0;    // test_cthread_for_if.cpp:123:9;
    end
    else begin
        i1 <= i_next1;
        wakeupTime <= wakeupTime_next;
        i2 <= i_next2;
        sleepTime0 <= sleepTime_next0;
        mem_active <= mem_active_next;
        t1 <= t1_next;
        for_in_if_bug_PROC_STATE <= for_in_if_bug_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_with_if1 (test_cthread_for_if.cpp:158:5) 

// Thread-local variables
logic signed [31:0] i3;
logic signed [31:0] i_next3;
logic signed [7:0] arr2[4][5];
logic signed [7:0] arr2_next[4][5];
logic signed [31:0] t2_next;
logic [1:0] for_with_if1_PROC_STATE;
logic [1:0] for_with_if1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_with_if1_comb     // test_cthread_for_if.cpp:158:5
    for_with_if1_func;
end
function void for_with_if1_func;
    arr2_next = arr2;
    i_next3 = i3;
    t2_next = t2;
    for_with_if1_PROC_STATE_next = for_with_if1_PROC_STATE;
    
    case (for_with_if1_PROC_STATE)
        0: begin
            i_next3 = 0;
            if (!(|s))
            begin
                for_with_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:167:21;
            end
            arr2_next[i_next3][i_next3 + 1] = arr2_next[i_next3][i_next3 + 1] + s;
            for_with_if1_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:171:17;
        end
        1: begin
            arr2_next[i_next3][i_next3 + 1] = arr2_next[i_next3][i_next3 + 1] + s;
            for_with_if1_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:171:17;
        end
        2: begin
            i_next3++;
            if (i_next3 < 4)
            begin
                if (!(|s))
                begin
                    for_with_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:167:21;
                end
                arr2_next[i_next3][i_next3 + 1] = arr2_next[i_next3][i_next3 + 1] + s;
                for_with_if1_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:171:17;
            end
            t2_next = arr2_next[0][0];
            i_next3 = 0;
            if (!(|s))
            begin
                for_with_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:167:21;
            end
            arr2_next[i_next3][i_next3 + 1] = arr2_next[i_next3][i_next3 + 1] + s;
            for_with_if1_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:171:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : for_with_if1_ff
    if ( rst ) begin
        arr2[0][0] <= 0; arr2[0][1] <= 0; arr2[0][2] <= 0; arr2[0][3] <= 0; arr2[0][4] <= 0; arr2[1][0] <= 0; arr2[1][1] <= 0; arr2[1][2] <= 0; arr2[1][3] <= 0; arr2[1][4] <= 0; arr2[2][0] <= 0; arr2[2][1] <= 0; arr2[2][2] <= 0; arr2[2][3] <= 0; arr2[2][4] <= 0; arr2[3][0] <= 0; arr2[3][1] <= 0; arr2[3][2] <= 0; arr2[3][3] <= 0; arr2[3][4] <= 0;
        for_with_if1_PROC_STATE <= 0;    // test_cthread_for_if.cpp:161:9;
    end
    else begin
        i3 <= i_next3;
        arr2 <= arr2_next;
        t2 <= t2_next;
        for_with_if1_PROC_STATE <= for_with_if1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_with_if2 (test_cthread_for_if.cpp:178:5) 

// Thread-local variables
logic signed [31:0] i4;
logic signed [31:0] i_next4;
logic signed [31:0] j0;
logic signed [31:0] j_next0;
logic signed [31:0] t3_next;
logic [1:0] for_with_if2_PROC_STATE;
logic [1:0] for_with_if2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_with_if2_comb     // test_cthread_for_if.cpp:178:5
    for_with_if2_func;
end
function void for_with_if2_func;
    i_next4 = i4;
    j_next0 = j0;
    t3_next = t3;
    for_with_if2_PROC_STATE_next = for_with_if2_PROC_STATE;
    
    case (for_with_if2_PROC_STATE)
        0: begin
            i_next4 = 0;
            if (|s)
            begin
                for_with_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:185:34;
            end
            for_with_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:187:17;
        end
        1: begin
            if (|s)
            begin
                for_with_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:185:34;
            end
            for_with_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:187:17;
        end
        2: begin
            if (i_next4 > 2)
            begin
                j_next0 = 0;
                t3_next = i_next4;
                for_with_if2_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:192:25;
            end
            i_next4++;
            if (i_next4 < 4)
            begin
                if (|s)
                begin
                    for_with_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:185:34;
                end
                for_with_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:187:17;
            end
            i_next4 = 0;
            if (|s)
            begin
                for_with_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:185:34;
            end
            for_with_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:187:17;
        end
        3: begin
            j_next0++;
            if (j_next0 < 2)
            begin
                t3_next = i_next4;
                for_with_if2_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:192:25;
            end
            i_next4++;
            if (i_next4 < 4)
            begin
                if (|s)
                begin
                    for_with_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:185:34;
                end
                for_with_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:187:17;
            end
            i_next4 = 0;
            if (|s)
            begin
                for_with_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:185:34;
            end
            for_with_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:187:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : for_with_if2_ff
    if ( rst ) begin
        for_with_if2_PROC_STATE <= 0;    // test_cthread_for_if.cpp:180:9;
    end
    else begin
        i4 <= i_next4;
        j0 <= j_next0;
        t3 <= t3_next;
        for_with_if2_PROC_STATE <= for_with_if2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_with_if3 (test_cthread_for_if.cpp:199:5) 

// Thread-local variables
logic signed [31:0] s_next;
logic signed [31:0] l;
logic signed [31:0] l_next;
logic signed [31:0] i5;
logic signed [31:0] i_next5;
logic signed [31:0] i6;
logic signed [31:0] i_next6;
logic [1:0] for_with_if3_PROC_STATE;
logic [1:0] for_with_if3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_with_if3_comb     // test_cthread_for_if.cpp:199:5
    for_with_if3_func;
end
function void for_with_if3_func;
    i_next5 = i5;
    i_next6 = i6;
    l_next = l;
    s_next = s;
    for_with_if3_PROC_STATE_next = for_with_if3_PROC_STATE;
    
    case (for_with_if3_PROC_STATE)
        0: begin
            i_next5 = 0;
            if (l_next < s)
            begin
                l_next++;
            end
            for_with_if3_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:209:17;
        end
        1: begin
            if (l_next > s)
            begin
                l_next--;
            end else begin
                for_with_if3_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:214:21;
            end
            i_next5++;
            if (i_next5 < 4)
            begin
                if (l_next < s)
                begin
                    l_next++;
                end
                for_with_if3_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:209:17;
            end
            i_next6 = 0;
            s_next = l_next;
            for_with_if3_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:220:17;
        end
        2: begin
            i_next5++;
            if (i_next5 < 4)
            begin
                if (l_next < s)
                begin
                    l_next++;
                end
                for_with_if3_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:209:17;
            end
            i_next6 = 0;
            s_next = l_next;
            for_with_if3_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:220:17;
        end
        3: begin
            ++i_next6;
            if (i_next6 < 3)
            begin
                s_next = l_next;
                for_with_if3_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:220:17;
            end
            i_next5 = 0;
            if (l_next < s)
            begin
                l_next++;
            end
            for_with_if3_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:209:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : for_with_if3_ff
    if ( rst ) begin
        l <= 1;
        s <= 0;
        for_with_if3_PROC_STATE <= 0;    // test_cthread_for_if.cpp:203:9;
    end
    else begin
        s <= s_next;
        l <= l_next;
        i5 <= i_next5;
        i6 <= i_next6;
        for_with_if3_PROC_STATE <= for_with_if3_PROC_STATE_next;
    end
end

endmodule


