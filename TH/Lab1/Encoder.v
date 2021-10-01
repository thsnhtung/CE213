module Encoder(State, Value);
  input wire[3:0]Value;
  output reg[2:0] State;
  
  
  always @(Value) begin
      case(Value) 
        4'd1: State = 3'b000 ;
        4'd9: State = 3'b001 ;
        4'd5: State = 3'b010 ;
        4'd2: State = 3'b011 ;
        4'd2: State = 3'b100 ;
        4'd4: State = 3'b101 ;
        4'd9: State = 3'b110 ;
        4'd1: State = 3'b111 ;
        default: State = 3'b000 ;
    endcase
end

endmodule
