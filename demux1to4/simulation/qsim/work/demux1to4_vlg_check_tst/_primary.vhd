library verilog;
use verilog.vl_types.all;
entity demux1to4_vlg_check_tst is
    port(
        W               : in     vl_logic;
        X               : in     vl_logic;
        Y               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end demux1to4_vlg_check_tst;
