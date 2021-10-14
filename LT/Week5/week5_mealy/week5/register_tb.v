module register_tb();
  reg CLK;
  reg [7:0] IN;
  wire [7:0] OUT1, OUT2;
  reg OE1, OE2;
  reg WE;
  register re1(CLK, WE, OE1, OE2, IN, OUT1, OUT2);
  //module register #(parameter bit = 8)(input wire CLK, input wire WE, input wire OE1, input wire OE2, input wire [bit-1:0] IN, output wire [bit-1:0] OUT1, output wire[bit-1:0] OUT2);
  initial begin 
  WE = 0;
  OE1 = 1;
  OE2 = 1;
  CLK = 0;
  IN = 0;
end
  always begin
  #5 WE = 1;
  #40 WE = 0;
end
  always begin
    #5 CLK = ~CLK;
  end
  
  always begin
    #10 IN = $random%100;

  end
    always begin
    #30 OE1 = ~OE1;
    end
    always begin 
      #7 OE2 = 0;
      #25 OE2 = 1;
      end
endmodule
