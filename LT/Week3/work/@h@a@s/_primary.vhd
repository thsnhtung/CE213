library verilog;
use verilog.vl_types.all;
entity HAS is
    port(
        Enable          : in     vl_logic;
        Direction       : in     vl_logic;
        Data            : in     vl_logic;
        Ci              : in     vl_logic;
        Sum             : out    vl_logic;
        Co              : out    vl_logic
    );
end HAS;
