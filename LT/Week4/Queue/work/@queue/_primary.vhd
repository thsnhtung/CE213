library verilog;
use verilog.vl_types.all;
entity Queue is
    generic(
        bitOfColumn     : integer := 3;
        numOfBit        : integer := 10
    );
    port(
        DataIn          : in     vl_logic_vector;
        DataOut         : out    vl_logic_vector;
        Enable          : in     vl_logic;
        RW              : in     vl_logic;
        Reset           : in     vl_logic;
        CLK             : in     vl_logic;
        Empty           : out    vl_logic;
        Full            : out    vl_logic;
        Front_Addr      : out    vl_logic_vector;
        Back_Addr       : out    vl_logic_vector;
        Ram_Addr        : out    vl_logic_vector;
        Front_Enable    : out    vl_logic;
        Back_Enable     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bitOfColumn : constant is 1;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Queue;
