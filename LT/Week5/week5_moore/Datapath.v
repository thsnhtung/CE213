module Datapath (CLK, In, LoadShift, Out,feedback,Done);
	parameter n = 64;
	input [n-1:0] In;
	input CLK, LoadShift;
	output [n-1:0] Out;
	//output isZero;
	output feedback,Done;
	
	wire [n-1:0] OutShift, OutCounter;
	wire [n-1:0]check_empty;
	wire LoadShift_not;
	not(LoadShift_not,LoadShift);
	

	
	REG_LoadandShift REG_LaS (.CLK(CLK), .Shift(LoadShift_not), .Value(In), .Out(OutShift));
	UpDownCounter REG_UD (.CLK(CLK), .En(OutShift[0]), .Load(LoadShift), .In(64'd0), .Out(OutCounter));
	//isZero is0 (.In(OutShift), .Out(isZero));
	empty_n n1(.input_data(OutShift),.empty(check_empty[0]));
	
	bufif1 b[63:0] (Out, OutCounter,check_empty[0]);
	and(feedback,check_empty[0],check_empty[0]);
	and(Done,check_empty[0],check_empty[0]);
	
endmodule