//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.28
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: and_reduce1 (test_unary_sc.cpp:42:5) 

always_comb 
begin : and_reduce1     // test_unary_sc.cpp:42:5
    logic [3:0] x1;
    logic [7:0] x2;
    logic [7:0] x3;
    logic l1;
    logic l2;
    x1 = 'hC;
    `ifndef INTEL_SVA_OFF
        assert (~&x1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (~&x1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x2 = 'hFF;
    x3 = 'hFA;
    l1 = &x1;
    l2 = ~&x2;
    `ifndef INTEL_SVA_OFF
        assert (!l1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (!l2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (&x2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (~&x3) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: or_reduce1 (test_unary_sc.cpp:58:5) 

always_comb 
begin : or_reduce1     // test_unary_sc.cpp:58:5
    logic [3:0] x1;
    logic [7:0] x2;
    logic [7:0] x3;
    logic l1;
    logic l2;
    logic l3;
    logic l4;
    logic l5;
    integer i;
    x1 = 'hC;
    `ifndef INTEL_SVA_OFF
        assert (!~|x1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (!~|x1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x2 = 0;
    x3 = 'h10;
    l1 = |x1;
    l2 = ~|x2;
    `ifndef INTEL_SVA_OFF
        assert (l1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (l2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (!(|x2)) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (!~|x3) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    l3 = 1'(x2);
    l4 = |2'(l3);
    l5 = |2'(1'(x2));
    l5 = 1'(x2);
    l5 = 1'(|2'(x2));
    i = 1;
    i = ~|4'(1'(x1) + x2) && 1;
    i = 1 && ~|1'(x1++);
    i = 0;
    i = 1;
end

//------------------------------------------------------------------------------
// Method process: xor_reduce1 (test_unary_sc.cpp:87:6) 

always_comb 
begin : xor_reduce1     // test_unary_sc.cpp:87:6
    logic [3:0] x1;
    logic [7:0] x2;
    logic l1;
    logic l2;
    x1 = 1;
    x2 = 0;
    `ifndef INTEL_SVA_OFF
        assert (^x1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (!~^x1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    l1 = ^x2;
    l2 = ~^x2;
    `ifndef INTEL_SVA_OFF
        assert (!l1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (l2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: sc_types_exclaim (test_unary_sc.cpp:100:5) 

always_comb 
begin : sc_types_exclaim     // test_unary_sc.cpp:100:5
    logic [2:0] x;
    logic b_1;
    x = 1;
    b_1 = |x;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x = 0;
    `ifndef INTEL_SVA_OFF
        assert (!(|x)) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    b_1 = 1;
    b_1 = !(|x) && |x;
end

//------------------------------------------------------------------------------
// Method process: sc_types_inc_dec (test_unary_sc.cpp:116:5) 

always_comb 
begin : sc_types_inc_dec     // test_unary_sc.cpp:116:5
    logic [2:0] x;
    x = 1;
    x++;
    `ifndef INTEL_SVA_OFF
        assert (x == 2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    ++x;
    `ifndef INTEL_SVA_OFF
        assert (x == 3) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    --x;
    `ifndef INTEL_SVA_OFF
        assert (x == 2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x--;
    `ifndef INTEL_SVA_OFF
        assert (x == 1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: sc_types_comp_assign (test_unary_sc.cpp:128:5) 

always_comb 
begin : sc_types_comp_assign     // test_unary_sc.cpp:128:5
    logic [2:0] x;
    logic signed [7:0] y;
    x = 1;
    x = x + 2;
    `ifndef INTEL_SVA_OFF
        assert (x == 3) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    y = 2;
    y = y - signed'({1'b0, x});
    `ifndef INTEL_SVA_OFF
        assert (y == -2'sd1) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    y = y + signed'({1'b0, x});
    `ifndef INTEL_SVA_OFF
        assert (y == 2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    y = y * signed'({1'b0, x});
    `ifndef INTEL_SVA_OFF
        assert (y == 6) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    y = -2'sd1;
    x = x + y;
    `ifndef INTEL_SVA_OFF
        assert (x == 2) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x = x + (y + 2);
    `ifndef INTEL_SVA_OFF
        assert (x == 3) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x = x + x;
    x = x + 2;
end

//------------------------------------------------------------------------------
// Method process: sc_to_int (test_unary_sc.cpp:149:5) 

always_comb 
begin : sc_to_int     // test_unary_sc.cpp:149:5
    logic [65:0] x;
    integer i;
    integer unsigned u;
    logic [63:0] ul;
    logic signed [63:0] l;
    x = 15;
    i = 32'(x);
    `ifndef INTEL_SVA_OFF
        assert (i == 15) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x = -5'sd10;
    i = 64'(x);
    `ifndef INTEL_SVA_OFF
        assert (i == -5'sd10) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x = 12;
    u = 32'(x);
    `ifndef INTEL_SVA_OFF
        assert (u == 12) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x = 11;
    u = 64'(x);
    `ifndef INTEL_SVA_OFF
        assert (u == 11) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    ul = 64'(x);
    `ifndef INTEL_SVA_OFF
        assert (ul == 11) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
    x = -6'sd20;
    l = 64'(x);
    `ifndef INTEL_SVA_OFF
        assert (l == -6'sd20) else $error("Assertion failed at test_unary_sc.cpp:40:24>");
    `endif // INTEL_SVA_OFF
end

endmodule


