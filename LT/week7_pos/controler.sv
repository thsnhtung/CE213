module controler(Start,clk,SA,SB,Done,WE);
input Start,clk;
output reg[1:0]SA;
output reg[2:0]SB,WE;
output reg Done;
wire [2:0]temp;



convert1 a0(.Start(Start),.Clk(clk),.Out(temp));
decoder a1(.Q(temp),.SA(SA),.SB(SB),.Done(Done),.WE(WE));



endmodule
