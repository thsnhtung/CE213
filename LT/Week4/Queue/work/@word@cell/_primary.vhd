library verilog;
use verilog.vl_types.all;
entity WordCell is
    generic(
        numOfBit        : integer := 10
    );
    port(
        DataIn          : in     vl_logic_vector;
        RowSelect       : in     vl_logic;
        WriteEn         : in     vl_logic;
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end WordCell;
