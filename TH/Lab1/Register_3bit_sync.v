module Register_3bit_sync(CLK, Data, Load, D, Q);
  input CLK;
  input [2:0]Data;
  input Load;
  input [2:0]D;
  output reg [2:0]Q;
  
initial begin
  Q = 0;
end
  
  
  
always @(posedge CLK) begin
    if (Load == 1)
      Q = Data;
    else
      Q = D;
      
end

endmodule