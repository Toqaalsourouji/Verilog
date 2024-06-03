module Modulo10counter (
input clk, 
reset, 
en,
output [3:0] count
);
 wire clk_out;
 clockDivider clockkdiv (clk, reset,  clk_out);
 Counter #(10) DUT (clk_out, reset, en, count);
endmodule


module Modulo6counter (
input clk,
reset, 
en,
output [2:0] count
);
  wire clk_out;
  clockDivider clockkdiv (clk, reset,  clk_out);
  Counter #(6) DUT (clk_out, reset, en, count);
endmodule

