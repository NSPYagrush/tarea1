library verilog;
use verilog.vl_types.all;
entity decoder3to8Es_vlg_check_tst is
    port(
        F               : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end decoder3to8Es_vlg_check_tst;
