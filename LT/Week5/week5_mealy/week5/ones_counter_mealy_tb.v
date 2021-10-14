`timescale 1ns/1ps
module mealy_tb();
  //module ones_counter_mealy #(parameter bitcount = 4, parameter bitInput = 8)
  //(input wire CLK, input wire Reset,input wire Start, input wire [bitInput-1:0] DataIn, 
  //output wire Done, output wire [bitcount-1:0]DataOut, output wire [bitInput-1:0] current_data, output wire [bitcount-1:0] Outbuf);


reg CLK, Reset, Start;
reg [7:0] DataIn;
wire [7:0] currentData; 
wire Done;
wire [3:0] DataOut, outputBuf;

ones_counter_mealy ocm(CLK, Reset, Start, DataIn, Done, DataOut, currentData, outputBuf);

initial begin
  CLK = 0;
  Reset = 0;
  Start = 1;
  DataIn = $random;
  #3 Reset = 1;
  #10 Start=0;
end

always #5 CLK = ~CLK;

always #40 DataIn = $random;

always begin
#100 Start = 1;
#10 Start = 0;
end
endmodule;