module thanhghi(clk,input_data,input_enable,Out);
parameter n=8;
input clk,input_enable;
input [n-1:0]input_data;
output reg[n-1:0]Out;
wire [n-1:0]temp_mux;

 Mux_2to1 a1(.S_Mux2(input_enable), .In1(Out), .In2(input_data), .Out_Mux2(temp_mux));
 register a2 (.clk(clk),.input_data(temp_mux),.Out(Out));

 endmodule