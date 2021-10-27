module NextState__Moore(Input, State, NextState);
  input wire [3:0] Input;
  input wire [3:0] State;
  output reg [3:0] NextState;
 
parameter S0 = 4'd0;
parameter S1 = 4'd1;
parameter S2 = 4'd2;
parameter S3 = 4'd3;
parameter S4 = 4'd4;
parameter S5 = 4'd5;
parameter S6 = 4'd6;
parameter S7 = 4'd7;
parameter S8 = 4'd8;
parameter S9 = 4'd9;
parameter S10= 4'd10;
parameter S11 = 4'd11;
parameter S12 = 4'd12;
parameter S13 = 4'd13;
parameter S14 = 4'd14;
parameter S15 = 4'd15;


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
            if (Input == 4'd1) 
                NextState = S8;
            else
                NextState = S0;
         end

    S8 : NextState = (Input == 4'd1) ? S1:S0;
    default : NextState = S0;

  endcase
end
 
endmodule



