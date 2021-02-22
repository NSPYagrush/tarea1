library verilog;
use verilog.vl_types.all;
entity encoder8to3_vlg_check_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end encoder8to3_vlg_check_tst;
