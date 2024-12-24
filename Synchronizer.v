module Synchronizer(
input  clk,    
input  SIG,    
output reg SIG1  
);

    reg meta; 
    
    
    always @(posedge clk) begin
        meta <= SIG ;
        SIG1 <= meta;
    end
    
endmodule
