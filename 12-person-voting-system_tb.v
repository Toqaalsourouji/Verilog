module VotingTB();

 reg [11:0] votes;
 wire [3:0] sum;
 wire overflow;

 Voting dut (.votes(votes), .sum(sum), .overflow(overflow) );
 
 wire [3:0] ref_s;
 wire ref_cout, err;
 
 assign {ref_cout, ref_s} = votes[0]+ votes[1]+ votes[2] + votes[3] + votes[4] + votes[5] + votes[6] + votes[7] + votes[8] + votes[9] + votes[10] + votes[11]; 
 assign err = (ref_s != sum) || (ref_cout != overflow);
 
 integer i;
 initial begin
  for ( i = 0; i < 4096; i = i + 1 ) begin
 votes = i; #10
 
 if (err == 1)
 $display("Input combination %d failed.", i);
   end
 end
endmodule
