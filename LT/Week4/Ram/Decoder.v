module Decoder#(parameter numOfBit = 4)(In, Out);
  input [numOfBit-1:0]In;
   
  output wire [2**numOfBit -1:0]Out;
  reg [2**numOfBit -1:0]One;

/*

genvar i;
generate
    for (i=0; i< numOfBit; i=i+1) begin : decodeBlock
        Decoder_1bit Decoder_1bit_inst(In[i], Out[i*2+1:i*2]);
end assign Out = 1 << In;
endgenerate */


assign Out = 1 << In;
endmodule
