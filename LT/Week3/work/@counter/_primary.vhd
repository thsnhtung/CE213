library verilog;
use verilog.vl_types.all;
entity Counter is
    generic(
        numOfBit        : integer := 4
    );
    port(
        Enable          : in     vl_logic;
        Direction       : in     vl_logic;
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Counter;
