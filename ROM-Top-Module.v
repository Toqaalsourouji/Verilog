module ROMD( input clk, rst, output[7:0] W_data );
wire [7:0] A, B;
wire ZFlag;
wire [7:0] Result;
wire [2:0] count;
wire [5:0] addr;
wire [33:0] data_out;
wire [7:0] data_in;
wire [7:0] B_out;


ALU  DUT1 (A, B, Result, data_out[10:8], ZFlag);
Counter #(6)DUT2(.clk(clk), .reset(rst), .enable(1'b1), .count(count));
regFile DUT3(.clk(clk), .rst(rst), .A_data(A), .B_data (B_out), .W_data(W_data), .A_addr(data_out[25:22]), .B_addr(data_out[21:18]), .W_addr(data_out[17:14]), .wr(data_out[13]));
ROM DUT4 ( {3'b000,count} , data_out);

assign W_data = data_out[12] ? data_out[7:0] : Result; 
assign B = (data_out[11]==1)? data_out[33:26] : B_out; 

endmodule
