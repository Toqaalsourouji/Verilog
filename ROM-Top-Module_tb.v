module ROMTB();
reg clk;
reg rst;
wire [7:0] W_data;

ROMD DUT (clk, rst, W_data);

initial begin   
   clk =0; 
     forever #10 clk = ~clk;
  end

initial begin
        rst = 1;
        #20;
        rst = 0;
    end
    endmodule
