module Mealy(Input, CLK, isTrue, Reset);
  input [3:0] Input;
  input CLK;
  input Reset;
  output isTrue;

  wire [2:0]State_Q;
  wire [2:0]NextState_D;

NextState__Mealy NextState__Mealy_inst0(.Input(Input), .State(State_Q), .NextState(NextState_D));
DFF_3bit DFF_3bit(.Q(State_Q), .D(NextState_D), .CLK(CLK), .Clear(Reset));


MealyDecoder MealyDecoder(.Input(Input) ,.State(State_Q), .Output(isTrue));


endmodule

