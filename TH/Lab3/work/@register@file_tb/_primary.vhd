library verilog;
use verilog.vl_types.all;
entity RegisterFile_tb is
    generic(
        num_bit_of_column: integer := 2;
        num_bit_of_data : integer := 32
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_bit_of_column : constant is 1;
    attribute mti_svvh_generic_type of num_bit_of_data : constant is 1;
end RegisterFile_tb;
