module TTHT(clk,D,Out);
input clk;
input [2:0]D;
output reg [2:0]Out;

always @(posedge clk)
begin
   Out<=D;
end

endmodule