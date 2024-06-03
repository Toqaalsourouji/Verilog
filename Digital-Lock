module DigitalLock(
input [3:0] in,
input [1:0] en,
input clk, rst,
output [6:0] segment,
output reg [3:0] anode_active
);

wire [3:0] z;
wire out;

PushbuttonDetector DUT1 (clk, rst, in[0],z[0]);
PushbuttonDetector DUT2 (clk, rst, in[1],z[1]);
PushbuttonDetector DUT3 (clk, rst, in[2],z[2]);
PushbuttonDetector DUT4 (clk, rst, in[3],z[3]);

always @ *begin

if(en==2'b00) begin
anode_active = 4'b1110;
end
else if(en==2'b01) begin
anode_active=4'b1101 ;
end    
else if (en== 2'b10)
begin  
anode_active=4'b1011;
end
else if(en==2'b11)
begin
anode_active = 4'b0111;
 end
 end
 
reg [2:0] state, nextState;
parameter [2:0] A=3'b000, B=3'b001, C=3'b010, D= 3'b011, E=3'b100; 

always @ (*)
case (state)
A: if (z==4'b0000) nextState = A;
 else if(z==4'b1000)nextState = B;
 else nextState = A;
B:  if(z == 4'b0100) nextState = C;
 else if(z==4'b0000) nextState = B;
 else nextState=state;
C: if (z==4'b0010) nextState = D;
 else if(z==4'b0000) nextState = C;
 else nextState=state;
D: if (z==4'b0001) nextState = E;
 else if(z==4'b0000) nextState = D;
 else nextState=state;
E: nextState = E;
default: nextState = A;
endcase

always @ (posedge clk or posedge rst) begin
if(rst) state <= A;
else state <= nextState;
end

assign out = (state == E);
assign segment = out ? 7'b1000001 : 7'b1110001;

endmodule
