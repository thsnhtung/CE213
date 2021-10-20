module convert1(Start,Clk,Out);
input Start,Clk;
output reg [2:0]Out;
//wire [2:0]temp_D,temp_out;

initial begin
  Out=8'd0;
end    


always @(posedge Clk)
begin
if(Start ==0 && Out==0)
  Out=3'd0;

else if(Start ==0 && Out!=0)
  Out+=3'd1;
  
else if(Start == 1)
   Out+=3'd1;

end


endmodule