module StateRegister #(parameter nbit=2) (input wire CLK, input wire RESET, input wire [nbit-1:0]next_state, output wire [nbit-1:0] current_state);
   //module DFF(D, CLK, Q, Qnot, R, S);
   DFF dff[nbit-1:0](next_state, CLK, current_state, , RESET, 1'b1);
 endmodule 
