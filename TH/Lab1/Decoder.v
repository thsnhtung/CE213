module Decoder(State, Value);
  input wire[2:0]State;
  output reg[3:0] Value;
  
  
  always @(State) begin
      case(State) 
        3'b000: Value = 4'd1 ;
        3'b001: Value = 4'd9 ;
        3'b010: Value = 4'd5 ;
        3'b011: Value = 4'd2 ;
        3'b100: Value = 4'd2 ;
        3'b101: Value = 4'd4 ;
        3'b110: Value = 4'd9 ;
        3'b111: Value = 4'd1 ;
    endcase
end

endmodule