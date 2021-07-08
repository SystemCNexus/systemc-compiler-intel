//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.31
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
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_cast.cpp:389:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic [3:0] s;
logic signed [31:0] is;
logic [31:0] us;
logic [14:0] xs;
logic [14:0] bs;
logic signed [31:0] r1;

// Local parameters generated for C++ constants
localparam logic signed [31:0] M1 = 'd43;
localparam logic signed [31:0] M2 = 'd45;
localparam logic [31:0] CONST_A = 'd1;
localparam logic [31:0] CONST_Z = 'd0;
localparam logic [31:0] CC = 'd42;
localparam logic signed [31:0] SC = -'d42;

//------------------------------------------------------------------------------
// Method process: cast_to_unsigned (test_cast.cpp:62:5) 

always_comb 
begin : cast_to_unsigned     // test_cast.cpp:62:5
    integer i;
    integer unsigned u;
    logic [14:0] x;
    logic [14:0] bx;
    logic signed [14:0] y;
    logic signed [14:0] by;
    logic signed [63:0] res;
    i = -5'sd11;
    u = 12;
    x = 12;
    bx = 12;
    y = -5'sd11;
    by = -5'sd11;
    res = 32'(i);
    res = 32'(y);
    res = 32'(x);
    res = 32'(u);
    res = signed'({1'b0, x}) + 32'(i);
    res = 32'(u) + signed'({1'b0, x});
    res = signed'({1'b0, u}) + 32'(x);
    res = 32'(x) + signed'({1'b0, x});
    res = signed'({1'b0, 32'(x)}) + i;
    res = 32'(xs) + signed'({1'b0, xs});
    res = signed'({1'b0, 32'(xs)}) + is;
    res = 12'(i) + signed'({1'b0, u});
    res = 12'(y) + signed'({1'b0, x});
    res = 12'(is) + signed'({1'b0, us});
    res = 12'(is) + signed'({1'b0, xs});
    res = signed'({1'b0, x}) + i;
    res = 10 - u;
    res = 10 - x;
    res = u - 10;
    res = x - 10;
    res = x - u;
    bx = 10 + signed'({1'b0, bx});
    bx = 10 - signed'({1'b0, bs});
end

//------------------------------------------------------------------------------
// Method process: const_cast_for_variable (test_cast.cpp:121:5) 

always_comb 
begin : const_cast_for_variable     // test_cast.cpp:121:5
    integer i;
    integer j;
    `ifndef INTEL_SVA_OFF
        assert (M1 == 43) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (M2 == 45) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = M1;
    j = 32'(i);
    r1 = j + 1;
end

//------------------------------------------------------------------------------
// Method process: cond_const (test_cast.cpp:134:5) 

always_comb 
begin : cond_const     // test_cast.cpp:134:5
    logic b_1;
    logic [7:0] c_1;
    b_1 = 1;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    b_1 = 1;
    c_1 = 2;
    `ifndef INTEL_SVA_OFF
        assert (c_1 == 2) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    c_1 = 8'd2;
end

//------------------------------------------------------------------------------
// Method process: bool_cast (test_cast.cpp:146:5) 

always_comb 
begin : bool_cast     // test_cast.cpp:146:5
    logic b_1;
    integer i;
    b_1 = 1;
    b_1 = !b_1;
    i = 2;
    i = ~i;
    b_1 = |i;
end

//------------------------------------------------------------------------------
// Method process: const_bool_type_cast (test_cast.cpp:157:5) 

always_comb 
begin : const_bool_type_cast     // test_cast.cpp:157:5
    logic b_1;
    logic [7:0] c_1;
    integer unsigned i;
    c_1 = 2;
    b_1 = |c_1;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    b_1 = 1;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    c_1 = 0;
    b_1 = |c_1;
    `ifndef INTEL_SVA_OFF
        assert (!b_1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = 65536;
    b_1 = |i;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    b_1 = 1;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = 0;
    b_1 = |i;
    `ifndef INTEL_SVA_OFF
        assert (!b_1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: const_cpp_type_cast (test_cast.cpp:187:5) 

always_comb 
begin : const_cpp_type_cast     // test_cast.cpp:187:5
    logic [7:0] c_1;
    logic [15:0] s_1;
    integer unsigned i;
    logic [63:0] l;
    c_1 = 1;
    `ifndef INTEL_SVA_OFF
        assert (c_1 == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    s_1 = 257;
    c_1 = s_1;
    `ifndef INTEL_SVA_OFF
        assert (c_1 == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    l = 64'd1 <<< 32;
    `ifndef INTEL_SVA_OFF
        assert (l == 33'h100000000) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = l + 1;
    `ifndef INTEL_SVA_OFF
        assert (i == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = 1;
    `ifndef INTEL_SVA_OFF
        assert (i == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = 1;
    `ifndef INTEL_SVA_OFF
        assert (i == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = signed'({1'b0, 8'(s_1)}) + 1;
    `ifndef INTEL_SVA_OFF
        assert (i == 2) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: var_cpp_type_cast (test_cast.cpp:213:5) 

always_comb 
begin : var_cpp_type_cast     // test_cast.cpp:213:5
    logic [7:0] c_1;
    logic [15:0] s_1;
    integer unsigned i;
    logic [63:0] l;
    l = 64'hAAAABBBBCCCCDDEE;
    i = l;
    s_1 = i;
    c_1 = s_1;
    `ifndef INTEL_SVA_OFF
        assert (l == 64'hAAAABBBBCCCCDDEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (i == 32'hCCCCDDEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (s_1 == 'hDDEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (c_1 == 'hEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: const_cpp_ref_impl_cast (test_cast.cpp:231:5) 

always_comb 
begin : const_cpp_ref_impl_cast     // test_cast.cpp:231:5
    integer unsigned i;
    logic [15:0] s_1;
    logic [7:0] c_1;
    i = 65537;
    s_1 = 257;
    c_1 = s_1;
    `ifndef INTEL_SVA_OFF
        assert (c_1 == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (s_1 == 257) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    c_1 = signed'({1'b0, s_1}) + 1;
    `ifndef INTEL_SVA_OFF
        assert (c_1 == 2) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: const_cpp_ref_expl_cast (test_cast.cpp:244:5) 

always_comb 
begin : const_cpp_ref_expl_cast     // test_cast.cpp:244:5
    integer unsigned i;
    logic [15:0] s_1;
    integer unsigned j;
    i = 65537;
    s_1 = 257;
    j = 8'(s_1);
    `ifndef INTEL_SVA_OFF
        assert (j == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (s_1 == 257) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    j = signed'({1'b0, 8'(s_1)}) + 1;
    `ifndef INTEL_SVA_OFF
        assert (j == 2) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: var_cpp_expl_cast (test_cast.cpp:257:5) 

always_comb 
begin : var_cpp_expl_cast     // test_cast.cpp:257:5
    integer unsigned u;
    logic [15:0] s_1;
    logic [32:0] ux;
    logic [3:0] bu;
    logic signed [3:0] ix;
    logic signed [3:0] bi;
    integer i;
    ux = 33'h1C0000000;
    bu = 0;
    ix = 0;
    bi = 0;
    i = 32'(ux);
    `ifndef INTEL_SVA_OFF
        assert (i == 32'hC0000000) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = signed'({1'b0, 32'(ux)}) + 1;
    `ifndef INTEL_SVA_OFF
        assert (i == 32'hC0000001) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = signed'(32'(s_1)) + 1;
    i = signed'(32'(u)) + 1;
    i = signed'(32'(ux)) + signed'({1'b0, 32'(ux)}) + signed'({1'b0, 32'(bu)});
    i = 32'(ux);
    i = 32'(bu);
    i = 32'(ix) + 32'(ix) + 32'(bi);
    i = 32'(ix);
    i = 64'(ix);
    i = 64'(ix);
    i = 32'(ix);
    i = 64'(ix);
    i = 64'(ix);
    i = 32'(bi);
    i = 64'(bi);
    i = 64'(bi);
    i = 32'(bi);
    i = 64'(bi);
    i = 64'(bi);
end

//------------------------------------------------------------------------------
// Method process: const_sc_type_cast (test_cast.cpp:296:5) 

always_comb 
begin : const_sc_type_cast     // test_cast.cpp:296:5
    logic [3:0] x;
    logic [2:0] y;
    logic signed [4:0] sx;
    logic signed [2:0] sy;
    logic [4:0] z;
    integer unsigned i;
    logic signed [4:0] sz;
    x = 12;
    y = x;
    `ifndef INTEL_SVA_OFF
        assert (y == 4) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    sx = -4'sd7;
    sy = sx;
    `ifndef INTEL_SVA_OFF
        assert (sy == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    z = 3'(x);
    `ifndef INTEL_SVA_OFF
        assert (z == 4) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    z = 3'(x + 1);
    `ifndef INTEL_SVA_OFF
        assert (z == 5) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    z = 3'd13;
    `ifndef INTEL_SVA_OFF
        assert (z == 5) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    z = 2'd15;
    `ifndef INTEL_SVA_OFF
        assert (z == 3) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    i = 14;
    z = 2'(i);
    `ifndef INTEL_SVA_OFF
        assert (z == 2) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    sz = 0;
    sz = 3'(sx);
    `ifndef INTEL_SVA_OFF
        assert (sz == 1) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    sz = -3'sd13;
    `ifndef INTEL_SVA_OFF
        assert (sz == 3) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: var_sc_type_cast (test_cast.cpp:332:5) 

always_comb 
begin : var_sc_type_cast     // test_cast.cpp:332:5
    logic [7:0] u1;
    logic [15:0] u2;
    logic [31:0] b1;
    logic [47:0] b2;
    integer unsigned i;
    logic [63:0] l;
    u1 = 0;
    u2 = 0;
    b1 = 0;
    b2 = 0;
    i = 32'hAAAABBCD;
    l = 64'hAAAABBBBCCCCDDEE;
    u1 = i;
    `ifndef INTEL_SVA_OFF
        assert (u1 == 'hCD) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    u1 = l;
    `ifndef INTEL_SVA_OFF
        assert (u1 == 'hEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    u2 = i;
    `ifndef INTEL_SVA_OFF
        assert (u2 == 'hBBCD) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    u2 = l;
    `ifndef INTEL_SVA_OFF
        assert (u2 == 'hDDEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    b1 = i;
    `ifndef INTEL_SVA_OFF
        assert (b1 == 32'hAAAABBCD) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    b1 = l;
    `ifndef INTEL_SVA_OFF
        assert (b1 == 32'hCCCCDDEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    b2 = i;
    `ifndef INTEL_SVA_OFF
        assert (b2 == 32'hAAAABBCD) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    b2 = l;
    `ifndef INTEL_SVA_OFF
        assert (b2 == 48'hBBBBCCCCDDEE) else $error("Assertion failed at test_cast.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: multi_sc_type_cast (test_cast.cpp:362:5) 

always_comb 
begin : multi_sc_type_cast     // test_cast.cpp:362:5
    logic [3:0] x;
    logic [7:0] y;
    logic [15:0] z;
    logic signed [15:0] sz;
    x = s;
    y = 8'(6'(x));
    y = 6'(x);
    y = 6'(2'(x));
    y = 2'(x);
    z = {8'(3'(y)), 8'(3'h11)};
    z = {8'(3'(y)), 8'(3'(CC))};
    sz = {8'(-signed'(3'(y))), -8'(3'sh11)};
    sz = {8'(3'(-y)), 8'(3'(SC))};
end

endmodule


