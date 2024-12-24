module fulladder (
input x,
input y,
input cin,
output cout,
output sum
);

assign sum = x^y^cin; 
assign cout = (x&y)| (y&cin)| (x&cin) ; 

endmodule
