module SID(
    input [9:0] in, 
    input rst,
    input clk,
    output [6:0] segments,
    output reg [3:0] anode_active
);

reg [2:0] state, nextState;
parameter [2:0] S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011,S4 = 3'b100, S5 = 3'b101;
                
    always @ (in) begin
        case (state)
S0: if (in[0]) nextState = S1;
                else nextState = S0;
                
S1: if (in[2]) nextState = S2;
     else if (in[0]) nextState = S1;
        else nextState = S0;
            
S2: if (in[3]) nextState = S3;
     else if (in[0]) nextState = S1;
         else nextState = S0;
            
S3: if (in[1]) nextState = S4;
     else if (in[0]) nextState = S1;
           else nextState = S0;
            
S4: if (in[4]) nextState = S5;
     else if (in[0]) nextState = S1;
           else nextState = S0;
            
S5: nextState = S5; 
default: nextState = S0; 
     endcase
    end
    
  always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= nextState;
end

  always @ (posedge clk) begin
    anode_active <= 4'b1110; 
end
