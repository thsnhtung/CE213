library verilog;
use verilog.vl_types.all;
entity Decoder is
    generic(
        num_bit_of_data : integer := 8;
        num_bit_of_column: integer := 4
    );
    port(
        State           : in     vl_logic_vector(3 downto 0);
        Write_en        : out    vl_logic;
        Mux_in          : out    vl_logic;
        Addr_in         : out    vl_logic_vector;
        Opcode          : out    vl_logic_vector(1 downto 0);
        Addr_out1       : out    vl_logic_vector;
        Addr_out2       : out    vl_logic_vector;
        Out_enable      : out    vl_logic;
        Distance        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_bit_of_data : constant is 1;
    attribute mti_svvh_generic_type of num_bit_of_column : constant is 1;
end Decoder;
