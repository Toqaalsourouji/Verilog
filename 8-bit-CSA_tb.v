module csa8_testbench();
    reg [7:0] X;
    reg [7:0] Y;
    reg cin;
    wire [7:0] s;
    wire cout;
    wire [7:0] ref_sel;
    wire ref_Cout;
    wire error;
    
    csa8 CSA(.X(X),.Y(Y),.cin(cin),.cout(cout),.s(s));
    
    assign {ref_Cout, ref_sel} = X + Y + cin;
    assign error = (ref_sel != s) || (ref_Cout != cout);
    
    integer i;
    initial begin
        for ( i = 0; i < 131072; i = i + 1 ) begin
            {X, Y, cin} = i; #10
       if (error == 1)
            $display("Input combination %d failed.", i);
        end
     end
endmodule

