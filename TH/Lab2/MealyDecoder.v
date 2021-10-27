module MealyDecoder(Input, State, Output);
  input [3:0]Input;
  input [2:0]State;
  output reg Output;


parameter S0 = 3'd0;
parameter S1 = 3'd1;
parameter S2 = 3'd2;
parameter S3 = 3'd3;
parameter S4 = 3'd4;
parameter S5 = 3'd5;
parameter S6 = 3'd6;
parameter S7 = 3'd7;

 
always @(Input, State) begin
	case (State)
		S0: begin Output = 0; end
		S1: begin Output = 0; end
		S2: begin Output = 0; end
		S3: begin Output = 0; end
		S4: begin Output = 0; end
		S5: begin Output = 0; end
		S6: begin Output = 0; end
		S7 : begin
		if (Input == 4'd1)
					Output = 1;
		else
					Output = 0;
			end
		
	endcase
end
endmodule
