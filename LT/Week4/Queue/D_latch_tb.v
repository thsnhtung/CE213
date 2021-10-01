module D_latch_tb();
  wire Q_test, Qbar_test;
  reg Enable_test, clear_test, D;



D_latch D_latch_inst0(.Q(Q_test), .Qbar(Qbar_test), .D(D), .Enable(Enable_test), .clear(clear_test));
  
 initial begin
   Enable_test = 0;
   clear_test = 0 ;
   D = 0;
end

always begin
  #20 Enable_test = 0;
  #20 #20 Enable_test = 1;
end


always begin
  #88 clear_test = 0;
  #5 clear_test = 1;
  #88 clear_test = 0;
end



always begin
  #7 D = 0;
  #7 D = 1;
end

endmodule




