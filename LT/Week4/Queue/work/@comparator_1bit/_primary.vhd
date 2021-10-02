library verilog;
use verilog.vl_types.all;
entity Comparator_1bit is
    port(
        DataIn0         : in     vl_logic;
        DataIn1         : in     vl_logic;
        GT_In           : in     vl_logic;
        LT_In           : in     vl_logic;
        EQ_In           : in     vl_logic;
        GT_Out          : out    vl_logic;
        LT_Out          : out    vl_logic;
        EQ_Out          : out    vl_logic
    );
end Comparator_1bit;
