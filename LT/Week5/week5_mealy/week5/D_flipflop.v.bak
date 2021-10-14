module D_flipflop(Q, Qbar, D, clk, clear);
output Q, Qbar;
input D, clk, clear;


wire q1, clkbar; 

D_latch master_d_latch(.Q(q1), 
		.Qbar(), 
		.D(D), 
		.clk(clk), .
		clear(clear));
		
not(clkbar, clk);
		
D_latch slave_d_latch(.Q(Q), 
							.Qbar(Qbar), 
							.D(q1), 
							.clk(clkbar), .
							clear(clear));
							
							

endmodule