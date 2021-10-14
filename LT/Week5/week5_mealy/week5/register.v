module register #(parameter bit = 8)(input wire CLK, input wire WE, input wire OE1, input wire OE2, input wire [bit-1:0] IN, output wire [bit-1:0] OUT1, output wire[bit-1:0] OUT2);
  //OE = 1: OUT = IN
  //OE = 0: OUT = zzzzz
  reg [bit-1:0] data;
  bufif1 bf1[bit-1:0](OUT1[bit-1:0], data[bit-1:0], OE1);
  bufif1 bf2[bit-1:0](OUT2[bit-1:0], data[bit-1:0], OE2);
  always @(posedge CLK) begin
    if(WE) data <= IN;
    else data <= data;
  end
  
endmodule
