module Moore(Input, CLK, isTrue, Reset);
  input [3:0] Input;
  input CLK;
  input Reset;
  output isTrue;

  wire [3:0]State_Q;
  wire [3:0]NextState_D;

NextState__Moore NextState__Moore_inst0(.Input(Input), .State(State_Q), .NextState(NextState_D));
DFF_4bit DFF_4bit_ints0(.Q(State_Q), .D(NextState_D), .CLK(CLK), .Clear(Reset));


MooreDecoder MooreDecoder_inst0(.State(State_Q), .Output(isTrue));


endmodule