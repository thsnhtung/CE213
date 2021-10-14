library verilog;
use verilog.vl_types.all;
entity \register\ is
    generic(
        bit             : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        WE              : in     vl_logic;
        OE1             : in     vl_logic;
        OE2             : in     vl_logic;
        \IN\            : in     vl_logic_vector;
        OUT1            : out    vl_logic_vector;
        OUT2            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bit : constant is 1;
end \register\;
