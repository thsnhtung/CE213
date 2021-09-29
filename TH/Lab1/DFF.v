module DFF(CLK, Load, Data, D, Q);
  input CLK;
  input Load;
  input [2:0]D;
  input [2:0]Data;
  output reg [2:0]Q;
  
  reg [2:0]out_data;
  
always @(posedge CLK) begin
  if (Load == 0)
      out_data = D;
  else
      out_data = Data;
end

always @(Load) begin
	if (Load == 1)
    Q = Data; 
	else
	 Q = out_data;
 end
 

endmodule

