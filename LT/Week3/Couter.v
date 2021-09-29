module Counter #(parameter numOfBit = 4)(Enable, Direction, CLK, Reset, DataOut);
  
  
  input Enable;
  input Direction;
  input CLK ; 
  input Reset;
  output wire [numOfBit-1:0]DataOut;
  
  wire [numOfBit:0] Cout_cin;
  assign Cout_cin[0] = Enable;

genvar i;
generate
    for (i=0; i< numOfBit; i=i+1) begin : generate_block_identifier
        counter_1bit counter_1bit_inst (
        .Enable(Enable),
        .Direction(Direction),
        .Reset(Reset),
        .CLK(CLK),
        .Cin(Cout_cin[i]),
        .Cout(Cout_cin[i+1]),
        .Data(DataOut[i]));
end 
endgenerate

endmodule
