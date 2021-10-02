module Comparator_1bit(DataIn0, DataIn1, GT_In, LT_In, EQ_In , GT_Out, LT_Out, EQ_Out);
  input DataIn0, DataIn1, GT_In, LT_In, EQ_In;
  output GT_Out, LT_Out, EQ_Out;

// GT_In, LT_In, EQ_In are signal from previos bit
// DataIn0 >  DataIn1 => GT = 1, EQ = 0, LT = 0
// DataIn0 <  DataIn1 => GT = 0, EQ = 0, LT = 1
// DataIn0 =  DataIn1 => GT = 0, EQ = 1, LT = 0
  wire and1_eq, and2, and3_eq, and4_gt, and5_gt, and6_gt, and7_lt, and8_lt, and9_lt;
  wire not1, not_DataIn1, not_DataIn0;
  
  
not n1 (not_DataIn0, DataIn0);  
not n2 (not_DataIn1, DataIn1);
  
  
// DataIn0.DataIn1.EQ_in + DataIn0'.DataIn1'EQ_in
// Start  
and a1 (and1_eq, DataIn0, DataIn1, EQ_In);
and a2 (and2, DataIn0, DataIn1);


and a3 (and3_eq, not_DataIn1, not_DataIn0, EQ_In);

or o1 (EQ_Out, and1_eq, and3_eq);

// End


//  DataIn0.DataIn1' + DataIn0.GT_In + DataIn1'.GT_In
// Start


and a4 (and4_gt, DataIn0, not_DataIn1);

and a5 (and5_gt, DataIn0, GT_In);

and a6 (and6_gt, not_DataIn1, GT_In);

or o2 (GT_Out, and4_gt, and5_gt, and6_gt);

// End


//  DataIn0'.DataIn1 + DataIn0'.LT_In + DataIn1.LT_In
// Start


and a7 (and7_lt, not_DataIn0, DataIn1);

and a8 (and8_lt, DataIn1, LT_In);

and a9 (and9_lt, not_DataIn0, LT_In);

or o3 (LT_Out, and7_lt, and8_lt, and9_lt);

// End



endmodule
