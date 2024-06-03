module Voting (
input [11:0] votes, 
output [3:0] sum, 
output overflow 
);

wire [3:0] sumintermediate;
wire [3:0] carryint;
wire [3:0] sum1;
wire [3:0] sum2;
wire ground;

 assign ground = 1'b0;
 
 genvar i;
 generate
for (i = 0; i < 4; i = i + 1) begin
  input [3:0] A, input [3:0] B, input cin, output cout,  output [3:0] sum
  fulladder fa(votes[3*i],votes[3*i + 1], votes[3*i + 2], sumintermediate[i], carryint[i]);
 end
 endgenerate

 RCA rca1(
 .A({2'b0 ,carryint[0], sumintermediate[0]}),
 .B({2'b0 ,carryint[1], sumintermediate[1]}),
 .cin(ground), .sum(sum1),.cout(ground));

 RCA rca2(
 .A({2'b0 ,carryint[2], sumintermediate[2]}),
 .B({2'b0 ,carryint[3], sumintermediate[3]}),
 .cin(1'b0), .sum(sum2),.cout(ground));
 
 RCA last(
 .A({ground, sum1[2:0]}), 
 .B({ground, sum2[2:0]}), 
 .cin(ground), 
 .cout(overflow),
 .sum(sum)
);

endmodule

