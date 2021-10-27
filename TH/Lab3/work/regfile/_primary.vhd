library verilog;
use verilog.vl_types.all;
entity regfile is
    port(
        CLK             : in     vl_logic;
        RsAddress       : in     vl_logic_vector(4 downto 0);
        RtAddress       : in     vl_logic_vector(4 downto 0);
        ImmediateData   : in     vl_logic_vector(15 downto 0);
        LUI             : in     vl_logic;
        JAL             : in     vl_logic;
        RsData          : out    vl_logic_vector(31 downto 0);
        RtData          : out    vl_logic_vector(31 downto 0);
        zero            : out    vl_logic_vector(31 downto 0);
        at              : out    vl_logic_vector(31 downto 0);
        v0              : out    vl_logic_vector(31 downto 0);
        v1              : out    vl_logic_vector(31 downto 0);
        a0              : out    vl_logic_vector(31 downto 0);
        a1              : out    vl_logic_vector(31 downto 0);
        a2              : out    vl_logic_vector(31 downto 0);
        a3              : out    vl_logic_vector(31 downto 0);
        t0              : out    vl_logic_vector(31 downto 0);
        t1              : out    vl_logic_vector(31 downto 0);
        t2              : out    vl_logic_vector(31 downto 0);
        t3              : out    vl_logic_vector(31 downto 0);
        t4              : out    vl_logic_vector(31 downto 0);
        t5              : out    vl_logic_vector(31 downto 0);
        t6              : out    vl_logic_vector(31 downto 0);
        t7              : out    vl_logic_vector(31 downto 0);
        t8              : out    vl_logic_vector(31 downto 0);
        t9              : out    vl_logic_vector(31 downto 0);
        s0              : out    vl_logic_vector(31 downto 0);
        s1              : out    vl_logic_vector(31 downto 0);
        s2              : out    vl_logic_vector(31 downto 0);
        s3              : out    vl_logic_vector(31 downto 0);
        s4              : out    vl_logic_vector(31 downto 0);
        s5              : out    vl_logic_vector(31 downto 0);
        s6              : out    vl_logic_vector(31 downto 0);
        s7              : out    vl_logic_vector(31 downto 0);
        k0              : out    vl_logic_vector(31 downto 0);
        k1              : out    vl_logic_vector(31 downto 0);
        gp              : out    vl_logic_vector(31 downto 0);
        sp              : out    vl_logic_vector(31 downto 0);
        fp              : out    vl_logic_vector(31 downto 0);
        ra              : out    vl_logic_vector(31 downto 0);
        RW              : in     vl_logic;
        WAddress        : in     vl_logic_vector(4 downto 0);
        WData           : in     vl_logic_vector(31 downto 0)
    );
end regfile;