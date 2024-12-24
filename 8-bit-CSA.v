module csa8(
    input [7:0] X,
    input [7:0] Y,
    input cin,
    output [7:0] s,
    output cout
);

wire Wire1, Wire2, Wire3;
wire [7:4] Wire4;
wire [7:4] Wire5;

RCA r1(.A(X[3:0]), .B(Y[3:0]), .cin(cin), .cout(Wire1), .sum(s[3:0]));
RCA r2(.A(X[7:4]), .B(Y[7:4]), .cin(1'b0), .cout(Wire2),.sum(Wire4));
RCA r3(.A(X[7:4]), .B(Y[7:4]), .cin(1'b1), .cout(Wire3), .sum(Wire5));

assign s[7:4] = (Wire1 == 0) ? Wire4 : Wire5;
assign cout = (Wire1 == 0) ? Wire2 : Wire3;

endmodule
