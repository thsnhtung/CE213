library verilog;
use verilog.vl_types.all;
entity Counter_tb is
    generic(
        numOfParameter  : integer := 2
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfParameter : constant is 1;
end Counter_tb;
