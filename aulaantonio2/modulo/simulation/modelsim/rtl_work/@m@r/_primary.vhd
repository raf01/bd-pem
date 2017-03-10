library verilog;
use verilog.vl_types.all;
entity MR is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        writeb          : in     vl_logic;
        endereco        : in     vl_logic_vector(7 downto 0);
        datain          : in     vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic_vector(7 downto 0)
    );
end MR;
