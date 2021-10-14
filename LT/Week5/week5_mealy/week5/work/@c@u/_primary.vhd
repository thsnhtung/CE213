library verilog;
use verilog.vl_types.all;
entity CU is
    generic(
        bitcount        : integer := 4;
        bitInput        : integer := 8
    );
    port(
        current_state   : in     vl_logic_vector(1 downto 0);
        Start           : in     vl_logic;
        current_data    : in     vl_logic_vector;
        next_state      : out    vl_logic_vector(1 downto 0);
        S0              : out    vl_logic;
        S1              : out    vl_logic;
        E               : out    vl_logic;
        outputEN        : out    vl_logic;
        RSTcount        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bitcount : constant is 1;
    attribute mti_svvh_generic_type of bitInput : constant is 1;
end CU;
