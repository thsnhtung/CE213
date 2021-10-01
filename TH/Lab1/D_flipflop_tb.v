module D_flipflop_tb();
  reg CLK, Reset, Set, D;
  wire Q;
  
  
D_flipflop D_flipflop_inst0( CLK, Reset, 
                   Set,  D,   Q);


initial begin
  #5 CLK = 0;
  Reset = 0;
  Set = 0;
  D = 0;
  
  #100 Set = 1;
  #100 Set = 0;
  
  #100 Reset = 1;
  #100 Reset = 0;
end


always begin
  #5 CLK = ~CLK;
end

always begin
  #13 D = D + 1;
end



/*
always begin
  #50 Set = 0;
  #10 Set = 1;
  #10 Set = 0;
  #10 Reset = 1;
  #10 Reset = 0;
end
*/
endmodule