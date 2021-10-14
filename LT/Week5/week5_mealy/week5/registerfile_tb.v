module registerfile_tb();
 //module registerfile #(parameter bitADDR = 2, parameter bitReg = 8)(CLK, WRITE_ADDR, IN, READ_ADDR1, READ_ADDR2, OUT1, OUT2);

 
reg CLK;
reg [7:0] IN;
reg [1:0] READ_ADDR1, READ_ADDR2;
reg [1:0] WRITE_ADDR;
wire [7:0] OUT1, OUT2;
registerfile regfile(CLK, WRITE_ADDR, IN, READ_ADDR1, READ_ADDR2, OUT1, OUT2);
initial begin
  CLK = 0;
end
always begin
  #5 CLK = ~CLK;
end
always begin
  WRITE_ADDR = $random%4;
  READ_ADDR1 = $random%4;
  READ_ADDR2 =  $random%4;
  #20;
end
always begin
  IN = $random%100;
  #10;
end

endmodule
  

  
