library verilog;
use verilog.vl_types.all;
entity Mux2to1 is
    generic(
        numOfBit        : integer := 4
    );
    port(
        DataIn0         : in     vl_logic_vector;
        DataIn1         : in     vl_logic_vector;
        \Select\        : in     vl_logic;
        Output          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Mux2to1;
