module TTKT(Start,Q,D);
input Start;
input [2:0]Q;
output wire [2:0]D;

assign D[2]=((~Q[2])&Q[1]&Q[0]) | (Q[2]&(~Q[1])&(~Q[0]))| (Q[2] & (~Q[1]) & Q[0] ) | (Q[2] & Q[1] & (~Q[0]));
assign D[1]=(Q[2] & (~Q[1]) & Q[0]) | (Q[2] & Q[1] & (~Q[0])) | ((~Q[2])& (~Q[1]) & Q[0]) | ((~Q[2]) & Q[1] & (~Q[1]));
assign D[0]=((~Q[2])&(~Q[1])&(~Q[0]) & Start) | ((~Q[2]) & Q[1] & (~Q[0])) | (Q[2] & (~Q[1]) & (~Q[0])) | (Q[2] & Q[1] &(~Q[0]));



endmodule