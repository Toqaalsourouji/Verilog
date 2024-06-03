module add-sub ( 
input [3:0] A,
input [3:0] B,
input cin,
output [3:0] s,
output cout
);
wire [3:0] w; 

genvar i;
generate
for(i=0;i<=3;i=i+1) begin
assign w[i]=B[i]^cin; 
end
endgenerate

RCA rca1(.A(A),.B(w),.cin(cin),.cout(cout),.sum(s));

endmodule
