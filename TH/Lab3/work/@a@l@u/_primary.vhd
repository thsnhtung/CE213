library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        num_bit_of_data : integer := 8;
        num_shift_bit   : integer := 3
    );
    port(
        Opcode          : in     vl_logic_vector(1 downto 0);
        Data_in1        : in     vl_logic_vector;
        Data_in2        : in     vl_logic_vector;
        Out_data        : out    vl_logic_vector;
        Distance        : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_bit_of_data : constant is 1;
    attribute mti_svvh_generic_type of num_shift_bit : constant is 1;
end ALU;
