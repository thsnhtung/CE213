library verilog;
use verilog.vl_types.all;
entity Counter_upper_tb is
    generic(
        numOfBit        : integer := 11
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Counter_upper_tb;
