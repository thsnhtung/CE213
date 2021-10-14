module shiftReg_tb();
  //module shiftReg #(parameter numOfbits = 8)(input reg CLK, input wire [numOfbits-1:0] DataIn, input wire S0, input wire S1, output wire [numOfbits-1:0] DataOut);
reg CLK, S0, S1;
reg [7:0] DataIn;
wire [7:0] DataOut;
shiftReg sft(CLK, DataIn, S0, S1, DataOut);

initial begin 
  CLK = 0;
  S0 = 0;
  S1 = 0;
  DataIn = $random%100;
  
end

always #5 CLK = ~CLK;

always #40 DataIn = $random%100;

always begin
  #10 S0 = 1;
  S1 = 0;
  #20 S0 = 0;
  S1 = 1;
  #30
  S0 = 1;
  S1 = 1;
end

endmodule
  
  