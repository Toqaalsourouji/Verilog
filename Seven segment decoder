module segmentdecoder(
input en,
input [3:0] num,
output reg [0:6] segments,
output reg [3:0] anode_active
);

always @ * begin
 if(en) begin
anode_active = 4'b1110;
   end
 else begin
anode_active = 4'b1111;
   end
 
case (num)    
    0: segments = 7'b0000001;
    1: segments = 7'b1001111;
    2: segments = 7'b0010010;
    3: segments = 7'b0000110;
    4: segments = 7'b1001100;
    5: segments = 7'b0100100;
    6: segments = 7'b0100000;
    7: segments = 7'b0001111;
    8: segments = 7'b0000000;
    9: segments = 7'b0001100;
    10: segments = 7'b0001000;
    11: segments = 7'b1100000;
    12: segments = 7'b0110001;
    13: segments = 7'b1000010;
    14: segments = 7'b0110000;
    15: segments = 7'b0111000;

endcase
endmodule
