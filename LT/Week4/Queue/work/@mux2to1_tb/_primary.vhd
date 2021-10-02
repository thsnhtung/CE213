library verilog;
use verilog.vl_types.all;
entity Mux2to1_tb is
    generic(
        numOfBit        : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Mux2to1_tb;
