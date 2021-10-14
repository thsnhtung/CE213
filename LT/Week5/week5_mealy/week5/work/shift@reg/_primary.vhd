library verilog;
use verilog.vl_types.all;
entity shiftReg is
    generic(
        numOfbits       : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        DataIn          : in     vl_logic_vector;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfbits : constant is 1;
end shiftReg;
