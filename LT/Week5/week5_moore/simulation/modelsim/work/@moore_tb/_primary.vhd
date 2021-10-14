library verilog;
use verilog.vl_types.all;
entity Moore_tb is
    generic(
        n               : integer := 64
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end Moore_tb;
