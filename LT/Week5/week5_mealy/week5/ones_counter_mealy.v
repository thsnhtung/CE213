
module ones_counter_mealy #(parameter bitcount = 4, parameter bitInput = 8)(input wire CLK, input wire Reset,input wire Start, input wire [bitInput-1:0] DataIn, output wire Done, output wire [bitcount-1:0]DataOut, output wire [bitInput-1:0] current_data, output wire [bitcount-1:0] Outbuf);
  //module DFF(D, CLK, Q, Qnot, R, S)
 

  wire [1:0] next_state, current_state;
  //output wire [bitInput-1:0] current_data;
  wire S0, S1, E, outputEN, RSTcount;
  //wire [bitcount-1:0] Outbuf;
  DFF_ dff[1:0] (next_state, CLK, current_state, , Reset, 1'b1);
   //module CU #(parameter bitcount = 4, parameter bitInput = 8)
  //(input wire [1:0] current_state, input wire Start,input wire [bitInput-1:0] current_data,
  //output wire [1:0] next_state, output wire S0, output wire S1, output wire E, output wire outputEN, output wire RSTcount);
  CU #(bitcount, bitInput) cu(current_state, Start, current_data, next_state, S0, S1, E, outputEN, RSTcount);
  //module shiftReg #(parameter numOfbits = 8)
  //(input reg CLK, input wire [numOfbits-1:0] DataIn, input wire S0, input wire S1, output wire [numOfbits-1:0] DataOut);
  shiftReg #(bitInput) shft(CLK, DataIn, S0, S1, current_data);
  
  //module Counter #(parameter numOfBit = 4)(Enable, Direction, CLK, Reset, DataOut);
  Counter #(bitcount) cnt(E, 1'b0, CLK, RSTcount, Outbuf);
  
  assign Done = outputEN;
  generate
    genvar i;
    for(i = 0; i < bitcount; i = i+1) begin
      bufif1 bf1(DataOut[i], Outbuf[i], outputEN);
    end
  endgenerate
  
  
  
endmodule