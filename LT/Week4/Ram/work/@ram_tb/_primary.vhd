library verilog;
use verilog.vl_types.all;
entity Ram_tb is
    generic(
        bitPerWord      : integer := 8;
        bitOfColumn     : integer := 5
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bitPerWord : constant is 1;
    attribute mti_svvh_generic_type of bitOfColumn : constant is 1;
end Ram_tb;
