module CounterTestBench();
    reg clk, reset, en;
    wire [3:0] count;   
    Counter #(4, 12) DUT (clk, reset, en, count);
   
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        en = 1;
        reset = 1; 
        #100       
        reset = 0; 
        #100       
        en = 0;  
        #100       
        en = 1;    
        #100;      
        $finish;   
    end
    
    initial begin
        $monitor("Time = %0t, Count = %d", $time, count);
    end
endmodule
