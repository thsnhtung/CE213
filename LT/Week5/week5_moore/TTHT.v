module TTHT(CLK,Q,D);
  input wire CLK;
  input wire [1:0] Q;
  output reg [1:0] D = 2'd0;
  always @ (posedge CLK) begin
    D <= Q;
  end
endmodule