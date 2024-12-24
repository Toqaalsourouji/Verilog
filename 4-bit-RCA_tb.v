module RCA_TB();
reg [3:0] xt;
reg [3:0] yt;
reg cin;
wire [3:0] s;
wire cout;
wire [3:0]ref_s;
wire ref_cout, err;

RCA dut(.A(xt),.B(yt),.cin(cin),.sum(s),.cout(cout));

assign {ref_cout, ref_s} = xt + yt + cin;

assign err = (ref_s != s) || (ref_cout != cout);

integer i;
initial begin
for ( i = 0; i < 512; i = i + 1 ) begin
 {xt, yt, cin} = i; #10

 if (err == 1)
 $display("Input combination %d failed.", i);
end
end
endmodule

