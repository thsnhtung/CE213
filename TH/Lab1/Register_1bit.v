module Register_1bit(CLK, Data, Load, D, Q);
  input wire CLK;
  input wire Data;
  input Load;
  input wire D;
  output wire Q;

wire Reset, Set ;

LoadBlock LoadBlock_inst0(.Load(Load), .Data(Data), .Set(Set), .Reset(Reset));

D_flipflop D_flipflop_inst0(.CLK(CLK), .Reset(Reset), 
                   .Set(Set),  .D(D), .Q(Q));
   
              
    
    
endmodule