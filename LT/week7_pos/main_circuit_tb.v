`timescale 1ns/1ps
module main_circuit_tb();
parameter n=8;
reg clk,Start;
reg [n-1:0]ln1,ln2;
wire [n-1:0]Out_put;
wire [n-1:0]out_reg1,out_reg2,out_reg3;

main_circuit a1(.clk(clk),.Start(Start),.ln1(ln1),.ln2(ln2),.Out_put(Out_put),.out_reg1(out_reg1),.out_reg2(out_reg2),.out_reg3(out_reg3));

//phan khoi tao				   
initial begin
  clk=1'b1;
  Start=1'b1;
  ln1=8'd3;
  ln2=8'd4; 
end                

//test cho input du lieu dau vao
always begin 
  #10 clk=~clk; 
end  

always begin 
  #140 ln1=8'd6;
  
end  
always begin 
  #140 ln2=8'd8;
  
end  
always begin 
  #10 Start=1'd0;
  #150 Start=1'd1;
  #10 Start=1'd0;
  #1000 Start=1'd1;
  
end  

endmodule



