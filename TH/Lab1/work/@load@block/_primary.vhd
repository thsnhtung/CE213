library verilog;
use verilog.vl_types.all;
entity LoadBlock is
    port(
        Load            : in     vl_logic;
        Data            : in     vl_logic;
        Set             : out    vl_logic;
        Reset           : out    vl_logic
    );
end LoadBlock;
