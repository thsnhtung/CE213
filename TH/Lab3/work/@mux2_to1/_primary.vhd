library verilog;
use verilog.vl_types.all;
entity Mux2_to1 is
    generic(
        num_bit_of_data : integer := 8
    );
    port(
        Data_in1        : in     vl_logic_vector;
        Data_in2        : in     vl_logic_vector;
        \Select\        : in     vl_logic;
        Data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_bit_of_data : constant is 1;
end Mux2_to1;
