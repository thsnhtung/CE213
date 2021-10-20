module datapath(ln1,ln2,SA,SB,DONE,WE,CLK,Out_put,out_reg1,out_reg2,out_reg3);
  parameter n=8;
  input [n-1:0]ln1,ln2;
  input [1:0]SA;
  input [2:0]SB,WE;
  input DONE,CLK;
  output reg [n-1:0]Out_put;
  wire [n-1:0]out_mux4,out_mux8;
  wire [n-1:0]out_abs1,out_abs2;
  wire [n-1:0]out_max,out_min;
  wire [n-1:0]out_add,out_sub;
  wire [n-1:0]out_shift_3bit,out_shift_1bit;
  output [n-1:0]out_reg1,out_reg2,out_reg3;
 
  
  
  Mux_4to1 a1 (.S(SA), .In1(out_abs1), .In2(out_max), .In3(ln1), .In4(), .Out(out_mux4));
  Mux8_to1 a2 (.S(SB), .In1(out_min), .In2(out_abs2), .In3(ln2), .In4(out_add),.In5(out_sub), .In6(out_shift_3bit), .In7(), .In8(), .Out(out_mux8));
  thanhghi a3(.clk(CLK),.input_data(out_mux4),.input_enable(WE[2]),.Out(out_reg1));
  thanhghi a4(.clk(CLK),.input_data(out_mux8),.input_enable(WE[1]),.Out(out_reg2));
  thanhghi a5(.clk(CLK),.input_data(out_shift_1bit),.input_enable(WE[0]),.Out(out_reg3));
  abs a6 (.b(out_reg1),.out(out_abs1));
  abs a7 (.b(out_reg2),.out(out_abs2));
  Min a8 (.a(out_reg2),.b(out_reg1),.Out(out_min));//notice
  Max a9 (.a(out_reg2),.b(out_reg1),.Out(out_max));
  add a10 (.a(out_reg3),.b(out_reg2),.Out(out_add));
  sub a11 (.a(out_reg1),.b(out_reg2),.Out(out_sub));
  shift_right_1bit a12(.a(out_reg2),.Out(out_shift_1bit));
  shift_right_3bit a13(.a(out_reg1),.Out(out_shift_3bit));
  bufif1 a14[8-1:0] (Out_put,out_reg1,DONE);
  
  
  
endmodule  
