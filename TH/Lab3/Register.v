module Register(CLK, Enable, State);
  input CLK;
  input Enable;
  output reg [3:0]State;
  
  always @(posedge CLK) begin
    if(State == 0 && Enable == 1)
      State = 1;
    else if (State < 12 && State > 0)
      State = State + 1;
    else
      State = 0;
      
end

endmodule