module DigitalClockTB;

    reg clk = 0;
    reg reset = 1;
    wire [6:0] segments;
    wire [3:0] anode_active;
 
    DigitalClock Dut (.clk(clk),.reset(reset),.segments(segments),.anode_active(anode_active));

    initial begin
          clk =0; begin
            forever# 10;
           
            clk= ~ clk;
        end
   end
 
    initial begin
     
        reset = 1;
        #100;
        reset = 0;

        #200000000;

        $finish;
    end

endmodule
