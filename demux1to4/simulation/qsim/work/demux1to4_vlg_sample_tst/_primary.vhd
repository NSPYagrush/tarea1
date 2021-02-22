library verilog;
use verilog.vl_types.all;
entity demux1to4_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        Sel             : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end demux1to4_vlg_sample_tst;
