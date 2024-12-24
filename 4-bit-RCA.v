module RCA ( 
input [3:0] A,
input [3:0] B,
input cin,
output cout,
output [3:0] sum
);
    wire x,y,z;
    fulladder add1 (A[0], B[0], cin, x, sum[0]);
    fulladder add2 (A[1], B[1], x, y, sum[1]);
    fulladder add3 (A[2], B[2], y, z, sum[2]);
    fulladder add4 (A[3], B[3], z, cout, sum[3]);

endmodule
