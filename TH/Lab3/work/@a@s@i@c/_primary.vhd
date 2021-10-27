library verilog;
use verilog.vl_types.all;
entity ASIC is
    generic(
        num_bit_of_data : integer := 8;
        num_bit_of_column: integer := 4
    );
    port(
        CLK             : in     vl_logic;
        Enable          : in     vl_logic;
        Data_in         : in     vl_logic_vector;
        Data_out        : out    vl_logic_vector;
        Finish          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_bit_of_data : constant is 1;
    attribute mti_svvh_generic_type of num_bit_of_column : constant is 1;
end ASIC;
