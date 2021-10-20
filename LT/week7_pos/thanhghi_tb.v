module thanhghi_tb();
  parameter n=8;
  reg clk;
  reg [n-1:0]input_data;
  reg input_enable;
  wire  [n-1:0]Out;
  
  
  thanhghi a1(.clk(clk),.input_data(input_data),.input_enable(input_enable),.Out(Out));

//phan khoi tao				   
initial begin
  clk=1'b1;
  input_enable=1'd0;
  input_data=8'd0; 
end                

//test cho input du lieu dau vao
always begin 
  #10 clk=~clk; 
end  

always begin 
  #80 input_data=input_data+1;
  
end  

always begin 
  #20 input_enable=~input_enable;
end  

endmodule