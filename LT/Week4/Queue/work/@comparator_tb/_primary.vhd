library verilog;
use verilog.vl_types.all;
entity Comparator_tb is
    generic(
        numOfBit        : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Comparator_tb;
