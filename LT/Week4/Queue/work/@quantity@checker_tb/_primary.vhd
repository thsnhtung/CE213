library verilog;
use verilog.vl_types.all;
entity QuantityChecker_tb is
    generic(
        numOfBit        : integer := 5
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end QuantityChecker_tb;
