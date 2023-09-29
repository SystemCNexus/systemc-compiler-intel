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
logic [3:0] sig;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;
logic signed [31:0] t6;
logic signed [31:0] t8;
logic signed [31:0] t9;
logic signed [31:0] t10;
logic signed [31:0] t11;
logic signed [31:0] t12;
logic signed [31:0] t13;
logic signed [31:0] t14;

//------------------------------------------------------------------------------
// Clocked THREAD: mult_array_decl (test_member_array_cthread.cpp:111:5) 

// Thread-local variables
logic qarr_a[5][4][3];
logic qarr_a_next[5][4][3];
logic [3:0] parr_b[4][3][2];
logic [3:0] parr_b_next[4][3][2];
logic signed [31:0] t0_next;

// Next-state combinational logic
always_comb begin : mult_array_decl_comb     // test_member_array_cthread.cpp:111:5
    mult_array_decl_func;
end
function void mult_array_decl_func;
    logic aa;
    logic [3:0] bb;
    parr_b_next = parr_b;
    qarr_a_next = qarr_a;
    t0_next = t0;
    aa = qarr_a_next[3][2][1];
    bb = parr_b_next[2][1][0];
    t0_next = aa + bb;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : mult_array_decl_ff
    if ( rst ) begin
        logic [3:0] qarr_b[5][4][3];
        qarr_b[4][3][2] = 0;
        parr_b[3][2][1] <= 0;
    end
    else begin
        qarr_a <= qarr_a_next;
        parr_b <= parr_b_next;
        t0 <= t0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_decl1 (test_member_array_cthread.cpp:130:5) 

// Next-state combinational logic
always_comb begin : loc_array_decl1_comb     // test_member_array_cthread.cpp:130:5
    loc_array_decl1_func;
end
function void loc_array_decl1_func;
    logic xarr1_a[2][3];
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_decl1_ff
    if ( rst ) begin
        logic xarr1_a[2][3];
        logic [3:0] xarr1_b[2][3];
        xarr1_b[1][2] = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_decl2 (test_member_array_cthread.cpp:142:5) 

// Next-state combinational logic
always_comb begin : loc_array_decl2_comb     // test_member_array_cthread.cpp:142:5
    loc_array_decl2_func;
end
function void loc_array_decl2_func;
    logic xarr2_a[2][3];
    logic [3:0] xarr2_b[2][3];
    xarr2_b[1][2] = 0;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_decl2_ff
    if ( rst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_decl3 (test_member_array_cthread.cpp:155:5) 

// Thread-local variables
logic [3:0] xarr3_b[2][3];
logic [3:0] xarr3_b_next[2][3];
logic signed [31:0] t1_next;
logic loc_array_decl3_PROC_STATE;
logic loc_array_decl3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : loc_array_decl3_comb     // test_member_array_cthread.cpp:155:5
    loc_array_decl3_func;
end
function void loc_array_decl3_func;
    logic xarr3_a[2][3];
    logic [3:0] l;
    t1_next = t1;
    xarr3_b_next = xarr3_b;
    loc_array_decl3_PROC_STATE_next = loc_array_decl3_PROC_STATE;
    
    case (loc_array_decl3_PROC_STATE)
        0: begin
            xarr3_b_next[1][2] = 0;
            loc_array_decl3_PROC_STATE_next = 1; return;    // test_member_array_cthread.cpp:163:13;
        end
        1: begin
            l = xarr3_b_next[1][1];
            t1_next = l;
            xarr3_b_next[1][2] = 0;
            loc_array_decl3_PROC_STATE_next = 1; return;    // test_member_array_cthread.cpp:163:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_decl3_ff
    if ( rst ) begin
        loc_array_decl3_PROC_STATE <= 0;    // test_member_array_cthread.cpp:157:9;
    end
    else begin
        xarr3_b <= xarr3_b_next;
        t1 <= t1_next;
        loc_array_decl3_PROC_STATE <= loc_array_decl3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_decl4 (test_member_array_cthread.cpp:170:5) 

// Thread-local variables
logic [3:0] xarr4_b[2][3];
logic [3:0] xarr4_b_next[2][3];
logic signed [31:0] t2_next;
logic loc_array_decl4_PROC_STATE;
logic loc_array_decl4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : loc_array_decl4_comb     // test_member_array_cthread.cpp:170:5
    loc_array_decl4_func;
end
function void loc_array_decl4_func;
    logic xarr4_a[2][3];
    logic [3:0] l;
    t2_next = t2;
    xarr4_b_next = xarr4_b;
    loc_array_decl4_PROC_STATE_next = loc_array_decl4_PROC_STATE;
    
    case (loc_array_decl4_PROC_STATE)
        0: begin
            xarr4_b_next[1][2] = 0;
            loc_array_decl4_PROC_STATE_next = 1; return;    // test_member_array_cthread.cpp:178:13;
        end
        1: begin
            l = xarr4_b_next[1][2];
            t2_next = l;
            xarr4_b_next[1][2] = 0;
            loc_array_decl4_PROC_STATE_next = 1; return;    // test_member_array_cthread.cpp:178:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_decl4_ff
    if ( rst ) begin
        loc_array_decl4_PROC_STATE <= 0;    // test_member_array_cthread.cpp:172:9;
    end
    else begin
        xarr4_b <= xarr4_b_next;
        t2 <= t2_next;
        loc_array_decl4_PROC_STATE <= loc_array_decl4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_decl5 (test_member_array_cthread.cpp:187:5) 

// Thread-local variables
logic [3:0] xlarr5_b[2][3];
logic [3:0] xlarr5_b_next[2][3];
logic [3:0] xarr5_b[2][3];
logic [3:0] xarr5_b_next[2][3];
logic signed [31:0] t3_next;
logic loc_array_decl5_PROC_STATE;
logic loc_array_decl5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : loc_array_decl5_comb     // test_member_array_cthread.cpp:187:5
    loc_array_decl5_func;
end
function void loc_array_decl5_func;
    integer j;
    logic xlarr5_a[2][3];
    logic [63:0] l;
    t3_next = t3;
    xarr5_b_next = xarr5_b;
    xlarr5_b_next = xlarr5_b;
    loc_array_decl5_PROC_STATE_next = loc_array_decl5_PROC_STATE;
    
    case (loc_array_decl5_PROC_STATE)
        0: begin
            j = sig;
            xarr5_b_next[1][j] = 0;
            xlarr5_b_next[1][j] = 0;
            loc_array_decl5_PROC_STATE_next = 1; return;    // test_member_array_cthread.cpp:199:13;
        end
        1: begin
            l = xarr5_b_next[1][2] + xlarr5_b_next[1][2];
            t3_next = l;
            j = sig;
            xarr5_b_next[1][j] = 0;
            xlarr5_b_next[1][j] = 0;
            loc_array_decl5_PROC_STATE_next = 1; return;    // test_member_array_cthread.cpp:199:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_decl5_ff
    if ( rst ) begin
        loc_array_decl5_PROC_STATE <= 0;    // test_member_array_cthread.cpp:189:9;
    end
    else begin
        xlarr5_b <= xlarr5_b_next;
        xarr5_b <= xarr5_b_next;
        t3 <= t3_next;
        loc_array_decl5_PROC_STATE <= loc_array_decl5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_decl6 (test_member_array_cthread.cpp:207:5) 

// Thread-local variables
logic [3:0] xarr6_b[2][3];
logic [3:0] xarr6_b_next[2][3];
logic signed [31:0] t4_next;

// Next-state combinational logic
always_comb begin : loc_array_decl6_comb     // test_member_array_cthread.cpp:207:5
    loc_array_decl6_func;
end
function void loc_array_decl6_func;
    integer j;
    logic xarr6_a[2][3];
    logic [3:0] l;
    t4_next = t4;
    xarr6_b_next = xarr6_b;
    j = sig;
    xarr6_b_next[j][2] = 0;
    l = xarr6_b_next[1][2];
    t4_next = l;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_decl6_ff
    if ( rst ) begin
    end
    else begin
        xarr6_b <= xarr6_b_next;
        t4 <= t4_next;
    end
end

//------------------------------------------------------------------------------
// Method process: loc_array_decl6_meth (test_member_array_cthread.cpp:225:5) 

always_comb 
begin : loc_array_decl6_meth     // test_member_array_cthread.cpp:225:5
    integer j;
    logic xarr6_a[2][3];
    logic [3:0] xarr6_b_1[2][3];
    logic [3:0] l;
    j = sig;
    xarr6_b_1[j][2] = 0;
    l = xarr6_b_1[1][2];
    t5 = l;
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_copy (test_member_array_cthread.cpp:248:5) 

// Thread-local variables
logic [3:0] par_b[3];
logic [3:0] par_b_next[3];
logic signed [31:0] t6_next;
logic [1:0] loc_array_copy_PROC_STATE;
logic [1:0] loc_array_copy_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : loc_array_copy_comb     // test_member_array_cthread.cpp:248:5
    loc_array_copy_func;
end
function void loc_array_copy_func;
    logic xlarr_a[3];
    logic [3:0] xlarr_b[3];
    logic par_a[3];
    integer j;
    logic [3:0] l;
    par_b_next = par_b;
    t6_next = t6;
    loc_array_copy_PROC_STATE_next = loc_array_copy_PROC_STATE;
    
    case (loc_array_copy_PROC_STATE)
        0: begin
            xlarr_b[0] = 0; xlarr_b[1] = 0; xlarr_b[2] = 0;
            par_a = xlarr_a; par_b_next = xlarr_b;
            // Call rec_param_copy() begin
            j = sig;
            par_b_next[j] = 1;
            loc_array_copy_PROC_STATE_next = 1; return;    // test_member_array_cthread.cpp:242:9;
            // Call rec_param_copy() end
        end
        1: begin
            // Call rec_param_copy() begin
            l = par_b_next[1];
            t6_next = l;
            // Call rec_param_copy() end
            loc_array_copy_PROC_STATE_next = 0; return;    // test_member_array_cthread.cpp:257:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_copy_ff
    if ( rst ) begin
        loc_array_copy_PROC_STATE <= 0;    // test_member_array_cthread.cpp:250:9;
    end
    else begin
        par_b <= par_b_next;
        t6 <= t6_next;
        loc_array_copy_PROC_STATE <= loc_array_copy_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_init (test_member_array_cthread.cpp:288:5) 

// Next-state combinational logic
always_comb begin : loc_array_init_comb     // test_member_array_cthread.cpp:288:5
    loc_array_init_func;
end
function void loc_array_init_func;
    logic xarr_a[2][3];
    logic [3:0] xarr_b[2][3];
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_init_ff
    if ( rst ) begin
        logic x_a[3];
        logic [3:0] x_b[3];
        logic xarr_a[2][3];
        logic [3:0] xarr_b[2][3];
        x_b[0] = 0; x_b[1] = 0; x_b[2] = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_array_unknown (test_member_array_cthread.cpp:301:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic yarr_a[2][3];
logic yarr_a_next[2][3];
logic [3:0] yarr_b[2][3];
logic [3:0] yarr_b_next[2][3];
logic signed [31:0] t11_next;

// Next-state combinational logic
always_comb begin : fcall_array_unknown_comb     // test_member_array_cthread.cpp:301:5
    fcall_array_unknown_func;
end
function void fcall_array_unknown_func;
    logic par_a[3];
    logic [3:0] par_b_1[3];
    logic [3:0] l;
    j_next = j0;
    t11_next = t11;
    yarr_a_next = yarr_a;
    yarr_b_next = yarr_b;
    par_a = yarr_a_next[j_next]; par_b_1 = yarr_b_next[j_next];
    // Call rec_param0() begin
    l = par_b_1[0];
    t11_next = l;
    // Call rec_param0() end
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : fcall_array_unknown_ff
    if ( rst ) begin
        j0 <= sig;
        yarr_a[j0][0] <= 0;
    end
    else begin
        j0 <= j_next;
        yarr_a <= yarr_a_next;
        yarr_b <= yarr_b_next;
        t11 <= t11_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_access (test_member_array_cthread.cpp:322:5) 

// Thread-local variables
logic s_a[3];
logic s_a_next[3];
logic [3:0] s_b[3];
logic [3:0] s_b_next[3];
logic signed [31:0] t8_next;

// Next-state combinational logic
always_comb begin : simple_access_comb     // test_member_array_cthread.cpp:322:5
    simple_access_func;
end
function void simple_access_func;
    integer j;
    logic TMP_0;
    integer i_2;
    s_a_next = s_a;
    s_b_next = s_b;
    t8_next = t8;
    j = sig;
    i_2 = j + 1;
    // Call getA() begin
    TMP_0 = s_a_next[i_2];
    // Call getA() end
    s_b_next[j] = TMP_0 ? j : 0;
    t8_next = s_b_next[j];
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : simple_access_ff
    if ( rst ) begin
        logic par;
        integer i_1;
        for (integer i = 0; i < 3; ++i)
        begin
            par = 0; i_1 = i;
            // Call setA() begin
            s_a[i_1] <= par;
            // Call setA() end
            s_b[i] <= 0;
        end
    end
    else begin
        s_a <= s_a_next;
        s_b <= s_b_next;
        t8 <= t8_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_access (test_member_array_cthread.cpp:344:5) 

// Thread-local variables
logic [3:0] arr_b[2][3];
logic [3:0] arr_b_next[2][3];
logic arr_a[2][3];
logic arr_a_next[2][3];
logic signed [31:0] t9_next;

// Next-state combinational logic
always_comb begin : array_access_comb     // test_member_array_cthread.cpp:344:5
    array_access_func;
end
function void array_access_func;
    integer j_1;
    logic [3:0] l;
    logic TMP_0;
    integer i_2;
    arr_a_next = arr_a;
    arr_b_next = arr_b;
    t9_next = t9;
    j_1 = sig;
    l = arr_b_next[j_1][j_1 + 1];
    i_2 = j_1 + 1;
    // Call getA() begin
    TMP_0 = arr_a_next[j_1][i_2];
    // Call getA() end
    arr_b_next[j_1][j_1 + 1] = TMP_0 ? j_1 : 0;
    t9_next = l;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_access_ff
    if ( rst ) begin
        logic par;
        integer i_1;
        for (integer j = 0; j < 2; ++j)
        begin
            for (integer i = 0; i < 3; ++i)
            begin
                par = 0; i_1 = i;
                // Call setA() begin
                arr_a[j][i_1] <= par;
                // Call setA() end
                arr_b[j][i] <= 0;
            end
        end
    end
    else begin
        arr_b <= arr_b_next;
        arr_a <= arr_a_next;
        t9 <= t9_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_array_access (test_member_array_cthread.cpp:368:5) 

// Thread-local variables
logic [3:0] xarr_b0[2][3];
logic [3:0] xarr_b_next[2][3];
logic [3:0] x_b0[3];
logic [3:0] x_b_next[3];
logic signed [31:0] t10_next;

// Next-state combinational logic
always_comb begin : loc_array_access_comb     // test_member_array_cthread.cpp:368:5
    loc_array_access_func;
end
function void loc_array_access_func;
    logic xarr_a[2][3];
    integer j_1;
    logic [63:0] l;
    logic xarr_par;
    integer xarr_i;
    t10_next = t10;
    x_b_next = x_b0;
    xarr_b_next = xarr_b0;
    j_1 = sig;
    l = x_b_next[j_1] + xarr_b_next[j_1 + 1][j_1 + 2];
    x_b_next[j_1] = 1;
    xarr_b_next[j_1 + 1][j_1 + 2] = 2;
    xarr_par = 0; xarr_i = 1;
    // Call setA() begin
    xarr_a[j_1][xarr_i] = xarr_par;
    // Call setA() end
    t10_next = l;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_array_access_ff
    if ( rst ) begin
        logic x_a[3];
        x_b0[0] <= 0; x_b0[1] <= 0; x_b0[2] <= 0;
        for (integer i = 0; i < 3; ++i)
        begin
            x_b0[i] <= i;
        end
        for (integer j = 0; j < 2; ++j)
        begin
            for (integer k = 0; k < 3; ++k)
            begin
                xarr_b0[j][k] <= 0;
            end
        end
    end
    else begin
        xarr_b0 <= xarr_b_next;
        x_b0 <= x_b_next;
        t10 <= t10_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_fcall_param (test_member_array_cthread.cpp:430:5) 

// Thread-local variables
logic [3:0] varr_b[2][3];
logic [3:0] varr_b_next[2][3];
logic signed [31:0] t14_next;
logic vv_a[3];
logic vv_a_next[3];
logic v_a[3];
logic v_a_next[3];
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic varr_a[2][3];
logic varr_a_next[2][3];
logic signed [31:0] t12_next;
logic signed [31:0] t11_next0;
logic signed [31:0] t13_next;

// Next-state combinational logic
always_comb begin : local_fcall_param_comb     // test_member_array_cthread.cpp:430:5
    local_fcall_param_func;
end
function void local_fcall_param_func;
    logic [3:0] vv_b[3];
    logic [3:0] v_b[3];
    integer k;
    integer i;
    logic TMP_1;
    integer v_i;
    logic par_a[3];
    logic [3:0] par_b_1[3];
    logic [3:0] l;
    logic par_a_1[3];
    logic [3:0] par_b_2[3];
    integer j;
    logic TMP_2;
    integer par_i;
    j_next0 = j1;
    t11_next0 = t11;
    t12_next = t12;
    t13_next = t13;
    t14_next = t14;
    v_a_next = v_a;
    varr_a_next = varr_a;
    varr_b_next = varr_b;
    vv_a_next = vv_a;
    i = 1;
    // Call rec_param1() begin
    vv_b[i] = vv_a_next[i] ? 1 : 2;
    t12_next = vv_b[i];
    // Call rec_param1() end
    k = 1;
    // Call rec_param2_ref() begin
    v_i = k;    // Call of getA()
    // Call getA() begin
    TMP_1 = v_a_next[v_i];
    // Call getA() end
    v_b[k] = TMP_1 ? 1 : 2;
    t14_next = v_b[k];
    // Call rec_param2_ref() end
    par_a = varr_a_next[j_next0]; par_b_1 = varr_b_next[j_next0];
    // Call rec_param0() begin
    l = par_b_1[0];
    t11_next0 = l;
    // Call rec_param0() end
    par_a_1 = varr_a_next[j_next0]; par_b_2 = varr_b_next[j_next0]; j = 0;
    // Call rec_param2_val() begin
    par_i = j;
    // Call getA() begin
    TMP_2 = par_a_1[par_i];
    // Call getA() end
    par_b_2[j] = TMP_2 ? 1 : 2;
    t13_next = par_b_2[j];
    // Call rec_param2_val() end
    k = 1;
    // Call rec_param2_ref() begin
    varr_b_next[j_next0][k] = 2;
    t14_next = varr_b_next[j_next0][k];
    // Call rec_param2_ref() end
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : local_fcall_param_ff
    if ( rst ) begin
        logic [3:0] v_b[3];
        integer k;
        v_b[0] = 0; v_b[1] = 0; v_b[2] = 0;
        for (integer d = 0; d < 2; ++d)
        begin
            for (integer e = 0; e < 3; ++e)
            begin
                varr_a[d][e] <= 0;
            end
        end
        j1 <= sig;
        k = 0;
        // Call rec_param2_ref() begin
        varr_b[j1][k] <= 2;
        t14 <= varr_b[j1][k];
        // Call rec_param2_ref() end
    end
    else begin
        varr_b <= varr_b_next;
        t14 <= t14_next;
        vv_a <= vv_a_next;
        v_a <= v_a_next;
        j1 <= j_next0;
        varr_a <= varr_a_next;
        t12 <= t12_next;
        t11 <= t11_next0;
        t13 <= t13_next;
    end
end

//------------------------------------------------------------------------------
// Method process: local_fcall_param_noinit (test_member_array_cthread.cpp:457:5) 

always_comb 
begin : local_fcall_param_noinit     // test_member_array_cthread.cpp:457:5
    logic varr_a_1[2][3];
    logic [3:0] varr_b_1[2][3];
    integer j;
    integer k;
    logic TMP_0;
    integer varr_i;
    j = sig;
    k = 0;
    // Call rec_param2_ref() begin
    varr_i = k;
    // Call getA() begin
    TMP_0 = varr_a_1[j][varr_i];
    // Call getA() end
    varr_b_1[j][k] = TMP_0 ? 1 : 2;
    t14 = varr_b_1[j][k];
    // Call rec_param2_ref() end
end

endmodule


