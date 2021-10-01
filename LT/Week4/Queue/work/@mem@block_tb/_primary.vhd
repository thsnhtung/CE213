library verilog;
use verilog.vl_types.all;
entity MemBlock_tb is
    generic(
        Column          : integer := 4;
        bitPerWord      : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Column : constant is 1;
    attribute mti_svvh_generic_type of bitPerWord : constant is 1;
end MemBlock_tb;
