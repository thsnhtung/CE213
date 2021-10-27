library verilog;
use verilog.vl_types.all;
entity ALU_tb is
    generic(
        num_shift_bit   : integer := 3;
        num_bit_of_data : integer := 32
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_shift_bit : constant is 1;
    attribute mti_svvh_generic_type of num_bit_of_data : constant is 1;
end ALU_tb;
