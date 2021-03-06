library verilog;
use verilog.vl_types.all;
entity cyclonev_vfifo is
    port(
        wrclk           : in     vl_logic;
        rdclk           : in     vl_logic;
        rstn            : in     vl_logic;
        qvldin          : in     vl_logic;
        incwrptr        : in     vl_logic;
        qvldreg         : out    vl_logic
    );
end cyclonev_vfifo;
