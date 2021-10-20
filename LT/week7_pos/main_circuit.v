module main_circuit(clk,Start,ln1,ln2,Out_put,out_reg1,out_reg2,out_reg3);
parameter n=8;
input [n-1:0]ln1,ln2;
input clk,Start;
output [n-1:0]Out_put,out_reg1,out_reg2,out_reg3;
wire done_temp;
wire [1:0]SA_temp;
wire [2:0]SB_temp,WE_temp;




controler a1(.Start(Start),.clk(clk),.SA(SA_temp),.SB(SB_temp),.Done(done_temp),.WE(WE_temp));
datapath  a2(.ln1(ln1),.ln2(ln2),.SA(SA_temp),.SB(SB_temp),.DONE(done_temp),.WE(WE_temp),.CLK(clk),.Out_put(Out_put),.out_reg1(out_reg1),.out_reg2(out_reg2),.out_reg3(out_reg3));


endmodule

