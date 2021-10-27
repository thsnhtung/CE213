library verilog;
use verilog.vl_types.all;
entity test_counter_tb is
    generic(
        num_of_bit      : integer := 8;
        green_yellow_ratio: integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_of_bit : constant is 1;
    attribute mti_svvh_generic_type of green_yellow_ratio : constant is 1;
end test_counter_tb;
