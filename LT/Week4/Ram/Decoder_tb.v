module Decoder_tb();
  parameter numOfBit = 4;
  reg [numOfBit-1:0]In;
  wire [2**numOfBit -1:0]Out;

  
  
Decoder#(.numOfBit(numOfBit)) Decoder_inst0(.In(In), .Out(Out));


initial begin
  In = 0;
end

always begin
  #5 In = In +1 ;
end

endmodule
