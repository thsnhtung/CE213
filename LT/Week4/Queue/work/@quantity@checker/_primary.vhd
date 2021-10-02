library verilog;
use verilog.vl_types.all;
entity QuantityChecker is
    generic(
        numOfBit        : integer := 10
    );
    port(
        DataIn0         : in     vl_logic_vector;
        DataIn1         : in     vl_logic_vector;
        isFull          : out    vl_logic;
        isEmpty         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end QuantityChecker;
