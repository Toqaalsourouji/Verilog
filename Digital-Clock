module DigitalClock(
input clk,  
input reset,
output [6:0] segments,  
output  [3:0] anode_active  
);
reg [3:0] mux_output;   
wire bit_200hz_clk;
wire [1:0] two_bit_counter_output;
wire [3:0] seconds_units, minutes_units;
wire [2:0] seconds_tens, minutes_tens;

  clockDivider #(.n(250000)) clk_div (.clk(clk),.reset(reset),.clk_out(bit_200hz_clk));
  Counter #(.n(4)) two_bit_counter (.clk(bit_200hz_clk),.reset(reset),.enable(1'b1),.count(two_bit_counter_output));
  SecMinCounter sec_min_counter (.clk(clk),.reset(reset),.seconds_units(seconds_units),.seconds_tens(seconds_tens),.minutes_units(minutes_units),.minutes_tens(minutes_tens));

    always @* begin
        case(two_bit_counter_output)
            2'b00: mux_output = seconds_units;
            2'b01: mux_output = seconds_tens;
            2'b10: mux_output = minutes_units;
            2'b11: mux_output = minutes_tens;
        endcase
    end
   
   
     SegmentDecoder segment_decoder (.en(1'b1),.two_bit_counter_output(two_bit_counter_output),.num(mux_output),.segments(segments),.anode_active(anode_active));


endmodule

