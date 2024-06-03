module Counter #(parameter n = 8 ) (
input clk, 
reset,
enable,
output count
);
    parameter x =  $clog2(n); 
    reg [x-1:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0; 
        end
        else if (enable) begin
            if (count == (n - 1)) 
                count <= 0; 
            else 
                count <= count + 1; 
        end     
    end

endmodule

