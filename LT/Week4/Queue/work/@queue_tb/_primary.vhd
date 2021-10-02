library verilog;
use verilog.vl_types.all;
entity Queue_tb is
    generic(
        bitOfColumn     : integer := 3;
        numOfBit        : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bitOfColumn : constant is 1;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Queue_tb;
