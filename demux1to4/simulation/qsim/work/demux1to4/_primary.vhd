library verilog;
use verilog.vl_types.all;
entity demux1to4 is
    port(
        A               : in     vl_logic;
        Sel             : in     vl_logic_vector(1 downto 0);
        W               : out    vl_logic;
        X               : out    vl_logic;
        Y               : out    vl_logic;
        Z               : out    vl_logic
    );
end demux1to4;
