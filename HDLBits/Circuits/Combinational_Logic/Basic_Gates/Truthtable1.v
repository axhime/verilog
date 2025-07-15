module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    wire t1, t2, t3;
    and (t1, ~x3, x2);
    and (t2, x3, ~x2, x1);
    and (t3, x3, x2, x1);
    or (f, t1, t2, t3);

endmodule
