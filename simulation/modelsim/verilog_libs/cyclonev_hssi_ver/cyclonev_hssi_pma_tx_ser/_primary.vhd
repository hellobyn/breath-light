library verilog;
use verilog.vl_types.all;
entity cyclonev_hssi_pma_tx_ser is
    generic(
        enable_debug_info: string  := "false";
        auto_negotiation: string  := "false";
        channel_number  : integer := 0;
        clk_divtx_deskew: integer := 0;
        clk_forward_only_mode: string  := "false";
        forced_data_mode: vl_logic_vector(0 downto 0) := (others => Hi0);
        mode            : integer := 8;
        post_tap_1_en   : string  := "false";
        ser_loopback    : string  := "false";
        avmm_group_channel_index: integer := 0;
        use_default_base_address: string  := "true";
        user_base_address: integer := 0;
        pma_direct      : string  := "false";
        duty_cycle_tune : string  := "duty_cycle3"
    );
    port(
        cpulse          : in     vl_logic_vector(0 downto 0);
        datain          : in     vl_logic_vector(79 downto 0);
        hfclk           : in     vl_logic_vector(0 downto 0);
        hfclkn          : in     vl_logic_vector(0 downto 0);
        lfclk           : in     vl_logic_vector(0 downto 0);
        lfclkn          : in     vl_logic_vector(0 downto 0);
        pclk            : in     vl_logic_vector(2 downto 0);
        rstn            : in     vl_logic_vector(0 downto 0);
        slpbk           : in     vl_logic_vector(0 downto 0);
        clkdivtx        : out    vl_logic_vector(0 downto 0);
        dataout         : out    vl_logic_vector(0 downto 0);
        lbvop           : out    vl_logic_vector(0 downto 0);
        preenout        : out    vl_logic_vector(0 downto 0);
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0);
        avgvon          : out    vl_logic_vector(0 downto 0);
        avgvop          : out    vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of auto_negotiation : constant is 1;
    attribute mti_svvh_generic_type of channel_number : constant is 1;
    attribute mti_svvh_generic_type of clk_divtx_deskew : constant is 1;
    attribute mti_svvh_generic_type of clk_forward_only_mode : constant is 1;
    attribute mti_svvh_generic_type of forced_data_mode : constant is 2;
    attribute mti_svvh_generic_type of mode : constant is 1;
    attribute mti_svvh_generic_type of post_tap_1_en : constant is 1;
    attribute mti_svvh_generic_type of ser_loopback : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of pma_direct : constant is 1;
    attribute mti_svvh_generic_type of duty_cycle_tune : constant is 1;
end cyclonev_hssi_pma_tx_ser;