module LoadBlock(Load, Data, Set, Reset);
  input Load;
  input Data;
  output reg Set;
  output reg Reset;
  
  
always @(Load or Data) begin 
  if (Load == 1)
  begin
    if (Data == 1)
    begin
      Set = 1;
      Reset = 0;
    end
    else
    begin
      Set = 0;
      Reset = 1;
    end 
  end
  
  else
    begin
      Set = 0;
      Reset = 0;
    end
  
end
    
    
endmodule  
