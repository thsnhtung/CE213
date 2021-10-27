library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    generic(
        num_bit_of_data : integer := 8;
        num_bit_of_column: integer := 4
    );
    port(
        CLK             : in     vl_logic;
        WE              : in     vl_logic;
        In_Addr         : in     vl_logic_vector;
        Data_in         : in     vl_logic_vector;
        Out_Addr1       : in     vl_logic_vector;
        Out_Addr2       : in     vl_logic_vector;
        Data_out1       : out    vl_logic_vector;
        Data_out2       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_bit_of_data : constant is 1;
    attribute mti_svvh_generic_type of num_bit_of_column : constant is 1;
end RegisterFile;
