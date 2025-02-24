//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;
logic [31:0] s;
logic [1:0] st1_a;
logic [1:0] st2_a;
logic [1:0] sa_a[2];
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;

// Local parameters generated for C++ constants
localparam logic [1:0] scRec_A = 1;
localparam logic [31:0] scRec_B = 2;
localparam logic [1:0] scRecArr_A[2] = '{ 1, 1 };
localparam logic [31:0] B = 1;
localparam logic [31:0] B0 = 2;
localparam logic [31:0] B1 = 3;

//------------------------------------------------------------------------------
// Method process: record_const (test_simple_method.cpp:104:5) 

// Process-local variables
logic [1:0] scRec_a;
logic [1:0] scRecArr_a[2];
logic [2:0] scRecArr_b[2];

always_comb 
begin : record_const     // test_simple_method.cpp:104:5
    integer i;
    integer m[3];
    i = B;
    i = B0;
    i = B1 + B1;
    i = scRec_A + scRec_B + scRec_a;
    i = scRec_B + scRecArr_a[0];
    i = scRecArr_a[0] + scRec_B + scRecArr_b[1];
    i = scRecArr_a[0] + scRec_B + scRecArr_b[1];
    i = scRec_B + scRecArr_A[1] + scRecArr_a[0] + scRecArr_b[1];
    i = scRecArr_A[1] + scRecArr_a[0] + scRec_B + scRecArr_b[0];
    i = scRecArr_A[1] + scRecArr_a[0] + scRec_B + scRecArr_b[0];
    i = scRecArr_a[s] + scRecArr_A[s + 1];
    i = scRecArr_b[s] + scRec_B;
    i = scRec_B + scRec_B;
    m[0] = scRec_B + scRec_B + scRecArr_A[0];
    t0 = m[0] + i;
end

//------------------------------------------------------------------------------
// Method process: record_decl1 (test_simple_method.cpp:132:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: record_decl2 (test_simple_method.cpp:140:5) 

// Next-state combinational logic
always_comb begin : record_decl2_comb     // test_simple_method.cpp:140:5
    record_decl2_func;
end
function void record_decl2_func;
    logic [1:0] scRecLoc_A;
    logic [1:0] scRecLoc_a;
    logic [2:0] scRecLoc_b;
    scRecLoc_A = 1;
    scRecLoc_a = 0;
    scRecLoc_b = 0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : record_decl2_ff
    if ( ~rst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Method process: record_local_var1 (test_simple_method.cpp:162:5) 

always_comb 
begin : record_local_var1     // test_simple_method.cpp:162:5
    integer r_x;
    logic signed [1:0] r_y;
    r_y = 1;
    // Call Rec1() begin
    r_x = 1;
    // Call Rec1() end
    r_x = r_y + 2;
end

//------------------------------------------------------------------------------
// Method process: record_local_var2 (test_simple_method.cpp:189:5) 

always_comb 
begin : record_local_var2     // test_simple_method.cpp:189:5
    integer x_;
    integer y_;
    integer c_x;
    logic signed [1:0] c_y;
    logic [7:0] c_z;
    integer c_t;
    integer c_tt;
    integer c_s;
    x_ = 2; y_ = 3;
    c_x = x_;
    c_y = 0;
    c_z = 3;
    c_t = 4;
    c_tt = 5;
    // Call Rec2() begin
    c_y = y_ - 1;
    // Call Rec2() end
    c_x = 4;
end

//------------------------------------------------------------------------------
// Method process: record_loop_conflict1 (test_simple_method.cpp:231:5) 

always_comb 
begin : record_loop_conflict1     // test_simple_method.cpp:231:5
    integer r_x[3][3];
    integer TMP_0;
    integer r_res;
    integer TMP_1;
    // Call loop() begin
    r_res = 0;
    for (integer i = 0; i < 3; i++)
    begin
        r_res = r_res + r_x[0][i];
    end
    TMP_0 = r_res;
    // Call loop() end
    for (integer i_3 = 0; i_3 < 3; i_3++)
    begin
        // Call loop() begin
        r_res = 0;
        for (integer i = 0; i < 3; i++)
        begin
            r_res = r_res + r_x[i_3][i];
        end
        TMP_1 = r_res;
        // Call loop() end
    end
end

//------------------------------------------------------------------------------
// Method process: record_loop_conflict2 (test_simple_method.cpp:245:5) 

// Process-local variables
logic signed [31:0] i_1;
logic signed [31:0] rr_x[3][3];

always_comb 
begin : record_loop_conflict2     // test_simple_method.cpp:245:5
    integer TMP_0;
    integer res;
    integer TMP_1;
    integer i_3_1;
    for (integer i = 0; i < 3; i++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_2 = 0; i_2 < 3; i_2++)
        begin
            res = res + rr_x[i][i_2];
        end
        TMP_0 = res;
        // Call loop() end
    end
    i_1 = 0;
    for (integer i_3 = 0; i_3 < 3; i_3++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_2 = 0; i_2 < 3; i_2++)
        begin
            res = res + rr_x[i_3][i_2];
        end
        TMP_1 = res;
        // Call loop() end
        i_1 = i_1 + TMP_1;
    end
    i_3_1 = i_1;
    t1 = i_3_1;
end

//------------------------------------------------------------------------------
// Method process: record_loop_conflict3 (test_simple_method.cpp:262:5) 

// Process-local variables
logic signed [31:0] rrr_x[3][3];

always_comb 
begin : record_loop_conflict3     // test_simple_method.cpp:262:5
    integer TMP_0;
    integer res;
    integer i_2_1;
    integer TMP_2;
    t2 = 0;
    for (integer i = 0; i < 3; i++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_2 = 0; i_2 < 3; i_2++)
        begin
            res = res + rrr_x[i][i_2];
        end
        TMP_0 = res;
        // Call loop() end
        i_2_1 = TMP_0;
        t2 = i_2_1;
    end
    // Call ff2() begin
    for (integer i_3 = 0; i_3 < 3; i_3++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_2 = 0; i_2 < 3; i_2++)
        begin
            res = res + rrr_x[i_3][i_2];
        end
        TMP_2 = res;
        // Call loop() end
    end
    // Call ff2() end
end

endmodule


