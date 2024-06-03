module SecMinCounter( 
input clk,
input reset,
output [3:0] seconds_units, 
output [2:0] seconds_tens,
output [3:0] minutes_units,
output [2:0] minutes_tens
);

wire one_hz_clk;
reg [3:0] enable;


Module10counter DUT (.clk( clk) , .reset(reset), .en(enable[0]), .count( seconds_units) ); 
  
Modulo6counter DUT1 (.clk( clk) , .reset(reset), .en(enable[1]), .count( seconds_tens ) );   
  
Module10counter DUT2 (.clk(clk) , .reset(reset), .en(enable[2]), .count( minutes_units ) );  

Modulo6counter DUT3 (.clk(clk) , .reset(reset), .en(enable[3]), .count( minutes_tens ) );     

always @(*) begin
    enable[0] = 1'b1;
        if (seconds_units == 9 ) begin
            enable[1] = 1;
       end     
        else enable[1]=0; 
        
        if (seconds_tens == 5 && seconds_units == 9 ) begin
            enable[2] = 1;
        end    
        else enable[2] = 0;
        
        if (minutes_units == 9 && seconds_tens == 5 && seconds_units == 9 ) begin
            enable[3] = 1;
        end    
        else enable[3] = 0;
                
    end

endmodule
