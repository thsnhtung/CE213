`timescale 1ns/100ps
module Moore_tb();
  reg [3:0] Input_test;
  reg CLK_test;
  reg Reset_test;
  wire isTrue_test;



Moore Moore_inst0(.Input(Input_test), .CLK(CLK_test), .isTrue(isTrue_test), .Reset(Reset_test));

initial begin
CLK_test = 0; 
Reset_test = 1;
Input_test =0;

#10 
Reset_test = 0;

#20; Input_test = 1;//1
#20; Input_test = 9;
#20; Input_test = 5;
#20; Input_test = 2;
#20; Input_test = 3;
#20; Input_test = 4;
#20; Input_test = 9;
#20; Input_test = 1;

#20; Input_test = 1; // 2
#20; Input_test = 9;
#20; Input_test = 5;
#20; Input_test = 2;
#20; Input_test = 2;
#20; Input_test = 4;
#20; Input_test = 9; 
#20; Input_test = 1;


#20; Input_test = 1;// 3
#20; Input_test = 1;
#20; Input_test = 1; 
#20; Input_test = 9;
#20; Input_test = 5;
#20; Input_test = 2;
#20; Input_test = 2;
#20; Input_test = 4;
#20; Input_test = 9;
#20; Input_test = 1; 


#20; Input_test = 1; // 4
#20; Input_test = 9;
#20; Input_test = 5;
#20; Input_test = 2;
#20; Input_test = 2;
#20; Input_test = 4;
#20; Input_test = 9;
#20; Input_test = 1;
#20; Input_test = 1;
#20; Input_test = 1;
#20; Input_test = 1;


#20; Input_test = 1;  // 5
#20; Input_test = 9;
#20; Input_test = 5;
#20; Input_test = 2;
#20; Input_test = 2;
#20; Input_test = 2;
#20; Input_test = 2;
#20; Input_test = 4;
#20; Input_test = 9;
#20; Input_test = 1;


#20; Input_test = 1;  // 6
#20; Input_test = 9;
#20; Input_test = 1;
#20; Input_test = 9;
#20; Input_test = 5;
#20; Input_test = 2;
#20; Input_test = 2;
#20; Input_test = 4;
#20; Input_test = 9;
#20; Input_test = 1;


#50000
$stop;
end


always 
begin
	#15 CLK_test = 1;
	#5 CLK_test = 0;
end
endmodule

