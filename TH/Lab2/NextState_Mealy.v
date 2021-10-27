module NextState__Mealy(Input, State, NextState);
  input wire [3:0] Input;
  input wire [2:0] State;
  output reg [2:0] NextState;
 
parameter S0 = 3'd0;
parameter S1 = 3'd1;
parameter S2 = 3'd2;
parameter S3 = 3'd3;
parameter S4 = 3'd4;
parameter S5 = 3'd5;
parameter S6 = 3'd6;
parameter S7 = 3'd7;


always @(Input, State) begin
  case(State)
    S0 : NextState = (Input == 4'd1) ? S1:S0;
    S1 : begin 
            if (Input == 4'd9) 
                NextState = S2;
            else if (Input == 4'd1)
                NextState = S1;
            else
                NextState = S0;
         end
    S2 : begin 
            if (Input == 4'd5) 
                NextState = S3;
            else if (Input == 4'd1)
                NextState = S1;
            else
                NextState = S0;
				 end
    S3 : begin 
            if (Input == 4'd2) 
                NextState = S4;
            else if (Input == 4'd1)
                NextState = S1;
            else
                NextState = S0;
         end
         
    S4 : begin 
            if (Input == 4'd2) 
                NextState = S5;
            else if (Input == 4'd1)
                NextState = S1;
            else
                NextState = S0;
         end
        
    S5 : begin 
            if (Input == 4'd4) 
                NextState = S6;
            else if (Input == 4'd1)
                NextState = S1;
            else
                NextState = S0;
         end
         
    S6 : begin 
            if (Input == 4'd9) 
                NextState = S7;
            else if (Input == 4'd1)
                NextState = S1;
            else
                NextState = S0;
         end
         
    S7 : begin 
              NextState = S0;
         end
  endcase
end
 
endmodule





