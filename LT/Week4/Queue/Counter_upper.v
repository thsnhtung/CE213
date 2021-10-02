module Counter_upper#(parameter numOfBit = 11)(Enable, CLK, Reset, DataOut);
  input Enable;
  supply0 ground;
  input CLK ; 
  input Reset;
  output wire [numOfBit-1:0]DataOut;


Counter #(.numOfBit(numOfBit)) Counter_inst0(.Enable(Enable), .Direction(ground), .CLK(CLK), .Reset(Reset), .DataOut(DataOut));

endmodule