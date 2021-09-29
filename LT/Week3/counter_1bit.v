module counter_1bit(
  input Enable,
  input Direction,
  input Reset,
  input CLK,
  input Cin,
  output wire Cout,
  output wire Data
);

wire Sum_D ;




HAS HAS_inst0(
  .Enable(Enable), 
  .Direction(Direction),
  .Data(Data),
  .Ci(Cin),
  .Sum(Sum_D) ,
  .Co(Cout) );
  

D_flipflop D_flipflop_inst0(.Q(Data), .Qbar(), .D(Sum_D), .clk(CLK), .clear(Reset));




endmodule

