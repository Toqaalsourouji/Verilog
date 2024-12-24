module PushbuttonDetector(input clk, rst, in, output z);

wire out;
wire SIG1;
wire clk_out;
clock_div #(500000) div(clk,rst,clk_out);
Debouncer DUT_debouncer(clk_out, rst, in,  out);
Synchronizer DUT_synch(clk_out, out, SIG1);
rising_edge_detector DUT_edge_det( clk_out, rst, SIG1,z);

endmodule
