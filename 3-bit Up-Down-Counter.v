module threebitcounter#(parameter WIDTH = 3 )(
    input clk,              
    input reset,            
    input enable,            
    input UpDown,            
    input Inc,              
    output reg[n-1:0] count  
);

   
    always @(posedge clk or posedge reset) begin
       if (reset==1) begin
            count <= 0;
          end
         if ( (UpDown == 0) && (reset ==0) && (Inc == 0) ) begin
         
          count <= count +1;  
         
          end
         
          else if (Inc == 1) begin
         
          count <= count +2 ;  
         
          end
end
endmodule
