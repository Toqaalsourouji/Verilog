module RCA_8(
    input [7:0] A,
    input [7:0] B,
    input cin,
    output [7:0] Sum,
    output Cout
);

wire [7:0] c; 

genvar i;
    generate
   for (i=0; i<=7; i=i+1) begin
    if(i==0) begin
        fulladder adderi(A[0], B[0], cin, Sum[0], c[0]);
    end
    else begin
        fulladder addderi(A[i], B[i], c[i-1], Sum[i], c[i]);
    end
    end
endgenerate
assign Cout = c[7];
endmodule
