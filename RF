module regFile (clk, rst, A_data, B_data, W_data, A_addr, B_addr, W_addr, wr); 
input clk, rst; 
output[7:0] A_data, B_data; 
input[7:0] W_data; 
input[3:0] A_addr, B_addr, W_addr; 
input wr; 

reg[7:0] RegFile[0:15]; 

assign A_data = RegFile[A_addr]; 
assign B_data = RegFile[B_addr]; 

always @ (posedge clk) begin 
if(!rst) 
if(wr) 
RegFile[W_addr] <= W_data; 

end 
endmodule 
