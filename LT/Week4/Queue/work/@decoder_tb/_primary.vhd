library verilog;
use verilog.vl_types.all;
entity Decoder_tb is
    generic(
        numOfBit        : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Decoder_tb;