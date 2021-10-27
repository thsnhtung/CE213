module DFF_4bit(Q, D, CLK, Clear);
  input [3:0]D;
  output [3:0]Q;
  input CLK;
  input Clear;

D_flipflop D_flipflop_inst0(.Q(Q[0]), .Qbar(), .D(D[0]), .clk(CLK), .clear(Clear));
D_flipflop D_flipflop_inst1(.Q(Q[1]), .Qbar(), .D(D[1]), .clk(CLK), .clear(Clear));
D_flipflop D_flipflop_inst2(.Q(Q[2]), .Qbar(), .D(D[2]), .clk(CLK), .clear(Clear));
D_flipflop D_flipflop_inst3(.Q(Q[3]), .Qbar(), .D(D[3]), .clk(CLK), .clear(Clear));



endmodule

