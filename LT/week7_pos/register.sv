module register(clk,input_data,Out);
parameter n=8;
input clk;
input[n-1:0]input_data;
output reg [n-1:0]Out;


always @ (posedge clk) begin
   Out <=input_data;

end
endmodule 

  

