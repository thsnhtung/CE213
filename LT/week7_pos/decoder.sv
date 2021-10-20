module decoder(Q,SA,SB,Done,WE);
input [2:0]Q;
output wire[1:0]SA;
output wire[2:0]SB,WE;
output wire Done;


assign SA[1]=~Q[2]&~Q[1]&~Q[0];
assign SA[0]=Q[2]|Q[1];
assign SB[2]=Q[1]&Q[0] |(Q[2]&(~Q[0]));
assign SB[1]=~Q[2]&~Q[1]&~Q[0] |  (Q[2]&(Q[0]));
assign SB[0]=Q[0];
assign Done=Q[2]&Q[1]&Q[0];
assign WE[2]=((~Q[2]&~Q[1])) | (Q[1]&(~Q[0]));
assign WE[1]=1'd1;
assign WE[0]=~Q[2];








endmodule
