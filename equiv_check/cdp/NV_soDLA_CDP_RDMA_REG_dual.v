module NV_soDLA_CDP_RDMA_REG_dual( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn,
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en, // @[:@6.4]
  output [31:0] cya, // @[:@6.4]
  output [12:0] channel, // @[:@6.4]
  output [12:0] height, // @[:@6.4]
  output [12:0] cdp_width, // @[:@6.4]
  output [1:0]  input_data, // @[:@6.4]
  output        dma_en, // @[:@6.4]
  output [31:0] src_base_addr_high, // @[:@6.4]
  output [31:0] src_base_addr_low, // @[:@6.4]
  output        src_ram_type, // @[:@6.4]
  output [31:0] src_line_stride, // @[:@6.4]
  output [31:0] src_surface_stride, // @[:@6.4]
  output        op_en_trigger, // @[:@6.4]
  input         op_en, // @[:@6.4]
  input  [31:0] perf_read_stall // @[:@6.4]
);
  wire [31:0] _GEN_11; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 49:54:@8.4]
  wire  _T_44; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 49:54:@8.4]
  wire  nvdla_cdp_rdma_d_cya_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 49:78:@9.4]
  wire  _T_46; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 50:68:@10.4]
  wire  nvdla_cdp_rdma_d_data_cube_channel_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 50:92:@11.4]
  wire  _T_48; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 51:67:@12.4]
  wire  nvdla_cdp_rdma_d_data_cube_height_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 51:91:@13.4]
  wire  _T_50; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 52:66:@14.4]
  wire  nvdla_cdp_rdma_d_data_cube_width_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 52:90:@15.4]
  wire  _T_52; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 53:62:@16.4]
  wire  nvdla_cdp_rdma_d_data_format_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 53:86:@17.4]
  wire  _T_56; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 55:60:@20.4]
  wire  _T_58; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 56:62:@22.4]
  wire  nvdla_cdp_rdma_d_perf_enable_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 56:86:@23.4]
  wire  _T_62; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 58:69:@26.4]
  wire  nvdla_cdp_rdma_d_src_base_addr_high_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 58:93:@27.4]
  wire  _T_64; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 59:68:@28.4]
  wire  nvdla_cdp_rdma_d_src_base_addr_low_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 59:92:@29.4]
  wire  _T_68; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 61:62:@32.4]
  wire  nvdla_cdp_rdma_d_src_dma_cfg_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 61:86:@33.4]
  wire  _T_70; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 62:66:@34.4]
  wire  nvdla_cdp_rdma_d_src_line_stride_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 62:90:@35.4]
  wire  _T_72; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 63:69:@36.4]
  wire  nvdla_cdp_rdma_d_src_surface_stride_0_wren; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 63:93:@37.4]
  wire [31:0] _T_77; // @[Cat.scala 30:58:@39.4]
  wire [31:0] _T_80; // @[Cat.scala 30:58:@40.4]
  wire [31:0] _T_83; // @[Cat.scala 30:58:@41.4]
  wire [31:0] _T_86; // @[Cat.scala 30:58:@42.4]
  wire [31:0] _T_92; // @[Cat.scala 30:58:@44.4]
  wire [31:0] _T_95; // @[Cat.scala 30:58:@45.4]
  wire [31:0] _T_104; // @[Cat.scala 30:58:@47.4]
  wire  _T_107; // @[Mux.scala 46:19:@48.4]
  wire [31:0] _T_108; // @[Mux.scala 46:16:@49.4]
  wire  _T_109; // @[Mux.scala 46:19:@50.4]
  wire [31:0] _T_110; // @[Mux.scala 46:16:@51.4]
  wire  _T_111; // @[Mux.scala 46:19:@52.4]
  wire [31:0] _T_112; // @[Mux.scala 46:16:@53.4]
  wire  _T_113; // @[Mux.scala 46:19:@54.4]
  wire [31:0] _T_114; // @[Mux.scala 46:16:@55.4]
  wire  _T_115; // @[Mux.scala 46:19:@56.4]
  wire [31:0] _T_116; // @[Mux.scala 46:16:@57.4]
  wire  _T_117; // @[Mux.scala 46:19:@58.4]
  wire [31:0] _T_118; // @[Mux.scala 46:16:@59.4]
  wire  _T_119; // @[Mux.scala 46:19:@60.4]
  wire [31:0] _T_120; // @[Mux.scala 46:16:@61.4]
  wire  _T_121; // @[Mux.scala 46:19:@62.4]
  wire [31:0] _T_122; // @[Mux.scala 46:16:@63.4]
  wire  _T_123; // @[Mux.scala 46:19:@64.4]
  wire [31:0] _T_124; // @[Mux.scala 46:16:@65.4]
  wire  _T_125; // @[Mux.scala 46:19:@66.4]
  wire [31:0] _T_126; // @[Mux.scala 46:16:@67.4]
  wire  _T_127; // @[Mux.scala 46:19:@68.4]
  wire [31:0] _T_128; // @[Mux.scala 46:16:@69.4]
  wire  _T_129; // @[Mux.scala 46:19:@70.4]
  wire [31:0] _T_130; // @[Mux.scala 46:16:@71.4]
  wire  _T_131; // @[Mux.scala 46:19:@72.4]
  wire [31:0] _T_132; // @[Mux.scala 46:16:@73.4]
  wire  _T_133; // @[Mux.scala 46:19:@74.4]
  wire [31:0] _T_134; // @[Mux.scala 46:16:@75.4]
  wire  _T_135; // @[Mux.scala 46:19:@76.4]
  reg [31:0] _T_140; // @[Reg.scala 19:20:@80.4]
  reg [31:0] _RAND_0;
  wire [31:0] _GEN_0; // @[Reg.scala 20:19:@81.4]
  wire [12:0] _T_141; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 111:49:@85.4]
  reg [12:0] _T_144; // @[Reg.scala 19:20:@86.4]
  reg [31:0] _RAND_1;
  wire [12:0] _GEN_1; // @[Reg.scala 20:19:@87.4]
  reg [12:0] _T_148; // @[Reg.scala 19:20:@92.4]
  reg [31:0] _RAND_2;
  wire [12:0] _GEN_2; // @[Reg.scala 20:19:@93.4]
  reg [12:0] _T_152; // @[Reg.scala 19:20:@98.4]
  reg [31:0] _RAND_3;
  wire [12:0] _GEN_3; // @[Reg.scala 20:19:@99.4]
  wire [1:0] _T_153; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 117:52:@103.4]
  reg [1:0] _T_156; // @[Reg.scala 19:20:@104.4]
  reg [31:0] _RAND_4;
  wire [1:0] _GEN_4; // @[Reg.scala 20:19:@105.4]
  wire  _T_157; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 119:48:@109.4]
  reg  _T_160; // @[Reg.scala 19:20:@110.4]
  reg [31:0] _RAND_5;
  wire  _GEN_5; // @[Reg.scala 20:19:@111.4]
  reg [31:0] _T_164; // @[Reg.scala 19:20:@116.4]
  reg [31:0] _RAND_6;
  wire [31:0] _GEN_6; // @[Reg.scala 20:19:@117.4]
  reg [31:0] _T_168; // @[Reg.scala 19:20:@122.4]
  reg [31:0] _RAND_7;
  wire [31:0] _GEN_7; // @[Reg.scala 20:19:@123.4]
  reg  _T_172; // @[Reg.scala 19:20:@128.4]
  reg [31:0] _RAND_8;
  wire  _GEN_8; // @[Reg.scala 20:19:@129.4]
  reg [31:0] _T_176; // @[Reg.scala 19:20:@134.4]
  reg [31:0] _RAND_9;
  wire [31:0] _GEN_9; // @[Reg.scala 20:19:@135.4]
  reg [31:0] _T_180; // @[Reg.scala 19:20:@140.4]
  reg [31:0] _RAND_10;
  wire [31:0] _GEN_10; // @[Reg.scala 20:19:@141.4]
  assign _GEN_11 = {{20'd0}, reg_offset}; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 49:54:@8.4]
  assign _T_44 = _GEN_11 == 32'h40; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 49:54:@8.4]
  assign nvdla_cdp_rdma_d_cya_0_wren = _T_44 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 49:78:@9.4]
  assign _T_46 = _GEN_11 == 32'h14; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 50:68:@10.4]
  assign nvdla_cdp_rdma_d_data_cube_channel_0_wren = _T_46 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 50:92:@11.4]
  assign _T_48 = _GEN_11 == 32'h10; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 51:67:@12.4]
  assign nvdla_cdp_rdma_d_data_cube_height_0_wren = _T_48 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 51:91:@13.4]
  assign _T_50 = _GEN_11 == 32'hc; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 52:66:@14.4]
  assign nvdla_cdp_rdma_d_data_cube_width_0_wren = _T_50 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 52:90:@15.4]
  assign _T_52 = _GEN_11 == 32'h34; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 53:62:@16.4]
  assign nvdla_cdp_rdma_d_data_format_0_wren = _T_52 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 53:86:@17.4]
  assign _T_56 = _GEN_11 == 32'h8; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 55:60:@20.4]
  assign _T_58 = _GEN_11 == 32'h38; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 56:62:@22.4]
  assign nvdla_cdp_rdma_d_perf_enable_0_wren = _T_58 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 56:86:@23.4]
  assign _T_62 = _GEN_11 == 32'h1c; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 58:69:@26.4]
  assign nvdla_cdp_rdma_d_src_base_addr_high_0_wren = _T_62 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 58:93:@27.4]
  assign _T_64 = _GEN_11 == 32'h18; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 59:68:@28.4]
  assign nvdla_cdp_rdma_d_src_base_addr_low_0_wren = _T_64 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 59:92:@29.4]
  assign _T_68 = _GEN_11 == 32'h28; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 61:62:@32.4]
  assign nvdla_cdp_rdma_d_src_dma_cfg_0_wren = _T_68 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 61:86:@33.4]
  assign _T_70 = _GEN_11 == 32'h20; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 62:66:@34.4]
  assign nvdla_cdp_rdma_d_src_line_stride_0_wren = _T_70 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 62:90:@35.4]
  assign _T_72 = _GEN_11 == 32'h24; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 63:69:@36.4]
  assign nvdla_cdp_rdma_d_src_surface_stride_0_wren = _T_72 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 63:93:@37.4]
  assign _T_77 = {19'h0,channel}; // @[Cat.scala 30:58:@39.4]
  assign _T_80 = {19'h0,height}; // @[Cat.scala 30:58:@40.4]
  assign _T_83 = {19'h0,cdp_width}; // @[Cat.scala 30:58:@41.4]
  assign _T_86 = {30'h0,input_data}; // @[Cat.scala 30:58:@42.4]
  assign _T_92 = {31'h0,op_en}; // @[Cat.scala 30:58:@44.4]
  assign _T_95 = {31'h0,dma_en}; // @[Cat.scala 30:58:@45.4]
  assign _T_104 = {31'h0,src_ram_type}; // @[Cat.scala 30:58:@47.4]
  assign _T_107 = 32'h24 == _GEN_11; // @[Mux.scala 46:19:@48.4]
  assign _T_108 = _T_107 ? src_surface_stride : 32'h0; // @[Mux.scala 46:16:@49.4]
  assign _T_109 = 32'h20 == _GEN_11; // @[Mux.scala 46:19:@50.4]
  assign _T_110 = _T_109 ? src_line_stride : _T_108; // @[Mux.scala 46:16:@51.4]
  assign _T_111 = 32'h28 == _GEN_11; // @[Mux.scala 46:19:@52.4]
  assign _T_112 = _T_111 ? _T_104 : _T_110; // @[Mux.scala 46:16:@53.4]
  assign _T_113 = 32'h2c == _GEN_11; // @[Mux.scala 46:19:@54.4]
  assign _T_114 = _T_113 ? 32'h0 : _T_112; // @[Mux.scala 46:16:@55.4]
  assign _T_115 = 32'h18 == _GEN_11; // @[Mux.scala 46:19:@56.4]
  assign _T_116 = _T_115 ? src_base_addr_low : _T_114; // @[Mux.scala 46:16:@57.4]
  assign _T_117 = 32'h1c == _GEN_11; // @[Mux.scala 46:19:@58.4]
  assign _T_118 = _T_117 ? src_base_addr_high : _T_116; // @[Mux.scala 46:16:@59.4]
  assign _T_119 = 32'h3c == _GEN_11; // @[Mux.scala 46:19:@60.4]
  assign _T_120 = _T_119 ? perf_read_stall : _T_118; // @[Mux.scala 46:16:@61.4]
  assign _T_121 = 32'h38 == _GEN_11; // @[Mux.scala 46:19:@62.4]
  assign _T_122 = _T_121 ? _T_95 : _T_120; // @[Mux.scala 46:16:@63.4]
  assign _T_123 = 32'h8 == _GEN_11; // @[Mux.scala 46:19:@64.4]
  assign _T_124 = _T_123 ? _T_92 : _T_122; // @[Mux.scala 46:16:@65.4]
  assign _T_125 = 32'h30 == _GEN_11; // @[Mux.scala 46:19:@66.4]
  assign _T_126 = _T_125 ? 32'h0 : _T_124; // @[Mux.scala 46:16:@67.4]
  assign _T_127 = 32'h34 == _GEN_11; // @[Mux.scala 46:19:@68.4]
  assign _T_128 = _T_127 ? _T_86 : _T_126; // @[Mux.scala 46:16:@69.4]
  assign _T_129 = 32'hc == _GEN_11; // @[Mux.scala 46:19:@70.4]
  assign _T_130 = _T_129 ? _T_83 : _T_128; // @[Mux.scala 46:16:@71.4]
  assign _T_131 = 32'h10 == _GEN_11; // @[Mux.scala 46:19:@72.4]
  assign _T_132 = _T_131 ? _T_80 : _T_130; // @[Mux.scala 46:16:@73.4]
  assign _T_133 = 32'h14 == _GEN_11; // @[Mux.scala 46:19:@74.4]
  assign _T_134 = _T_133 ? _T_77 : _T_132; // @[Mux.scala 46:16:@75.4]
  assign _T_135 = 32'h40 == _GEN_11; // @[Mux.scala 46:19:@76.4]
  assign _GEN_0 = nvdla_cdp_rdma_d_cya_0_wren ? reg_wr_data : _T_140; // @[Reg.scala 20:19:@81.4]
  assign _T_141 = reg_wr_data[12:0]; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 111:49:@85.4]
  assign _GEN_1 = nvdla_cdp_rdma_d_data_cube_channel_0_wren ? _T_141 : _T_144; // @[Reg.scala 20:19:@87.4]
  assign _GEN_2 = nvdla_cdp_rdma_d_data_cube_height_0_wren ? _T_141 : _T_148; // @[Reg.scala 20:19:@93.4]
  assign _GEN_3 = nvdla_cdp_rdma_d_data_cube_width_0_wren ? _T_141 : _T_152; // @[Reg.scala 20:19:@99.4]
  assign _T_153 = reg_wr_data[1:0]; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 117:52:@103.4]
  assign _GEN_4 = nvdla_cdp_rdma_d_data_format_0_wren ? _T_153 : _T_156; // @[Reg.scala 20:19:@105.4]
  assign _T_157 = reg_wr_data[0]; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 119:48:@109.4]
  assign _GEN_5 = nvdla_cdp_rdma_d_perf_enable_0_wren ? _T_157 : _T_160; // @[Reg.scala 20:19:@111.4]
  assign _GEN_6 = nvdla_cdp_rdma_d_src_base_addr_high_0_wren ? reg_wr_data : _T_164; // @[Reg.scala 20:19:@117.4]
  assign _GEN_7 = nvdla_cdp_rdma_d_src_base_addr_low_0_wren ? reg_wr_data : _T_168; // @[Reg.scala 20:19:@123.4]
  assign _GEN_8 = nvdla_cdp_rdma_d_src_dma_cfg_0_wren ? _T_157 : _T_172; // @[Reg.scala 20:19:@129.4]
  assign _GEN_9 = nvdla_cdp_rdma_d_src_line_stride_0_wren ? reg_wr_data : _T_176; // @[Reg.scala 20:19:@135.4]
  assign _GEN_10 = nvdla_cdp_rdma_d_src_surface_stride_0_wren ? reg_wr_data : _T_180; // @[Reg.scala 20:19:@141.4]
  assign reg_rd_data = _T_135 ? cya : _T_134; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 72:20:@78.4]
  assign cya = _T_140; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 109:18:@84.4]
  assign channel = _T_144; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 111:22:@90.4]
  assign height = _T_148; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 113:21:@96.4]
  assign cdp_width = _T_152; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 115:24:@102.4]
  assign input_data = _T_156; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 117:25:@108.4]
  assign dma_en = _T_160; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 119:21:@114.4]
  assign src_base_addr_high = _T_164; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 121:33:@120.4]
  assign src_base_addr_low = _T_168; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 123:32:@126.4]
  assign src_ram_type = _T_172; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 125:27:@132.4]
  assign src_line_stride = _T_176; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 127:30:@138.4]
  assign src_surface_stride = _T_180; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 129:33:@144.4]
  assign op_en_trigger = _T_56 & reg_wr_en; // @[NV_NVDLA_CDP_RDMA_REG_dual.scala 68:22:@38.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_140 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_144 = _RAND_1[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_148 = _RAND_2[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_152 = _RAND_3[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_156 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_160 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_164 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_168 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_172 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_176 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_180 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!nvdla_core_rstn) begin
      _T_140 <= 32'h0;
    end else begin
      if (nvdla_cdp_rdma_d_cya_0_wren) begin
        _T_140 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_144 <= 13'h0;
    end else begin
      if (nvdla_cdp_rdma_d_data_cube_channel_0_wren) begin
        _T_144 <= _T_141;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_148 <= 13'h0;
    end else begin
      if (nvdla_cdp_rdma_d_data_cube_height_0_wren) begin
        _T_148 <= _T_141;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_152 <= 13'h0;
    end else begin
      if (nvdla_cdp_rdma_d_data_cube_width_0_wren) begin
        _T_152 <= _T_141;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_156 <= 2'h0;
    end else begin
      if (nvdla_cdp_rdma_d_data_format_0_wren) begin
        _T_156 <= _T_153;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_160 <= 1'h0;
    end else begin
      if (nvdla_cdp_rdma_d_perf_enable_0_wren) begin
        _T_160 <= _T_157;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_164 <= 32'h0;
    end else begin
      if (nvdla_cdp_rdma_d_src_base_addr_high_0_wren) begin
        _T_164 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_168 <= 32'h0;
    end else begin
      if (nvdla_cdp_rdma_d_src_base_addr_low_0_wren) begin
        _T_168 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_172 <= 1'h0;
    end else begin
      if (nvdla_cdp_rdma_d_src_dma_cfg_0_wren) begin
        _T_172 <= _T_157;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_176 <= 32'h0;
    end else begin
      if (nvdla_cdp_rdma_d_src_line_stride_0_wren) begin
        _T_176 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_180 <= 32'h0;
    end else begin
      if (nvdla_cdp_rdma_d_src_surface_stride_0_wren) begin
        _T_180 <= reg_wr_data;
      end
    end
  end
endmodule

// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDP_RDMA_REG_dual.v
module NV_NVDLA_CDP_RDMA_REG_dual (
   reg_rd_data
  ,reg_offset
// verilint 498 off
// leda UNUSED_DEC off
  ,reg_wr_data
// verilint 498 on
// leda UNUSED_DEC on
  ,reg_wr_en
  ,nvdla_core_clk
  ,nvdla_core_rstn
  ,cya
  ,channel
  ,height
  ,width
  ,input_data
  ,op_en_trigger
  ,dma_en
  ,src_base_addr_high
  ,src_base_addr_low
  ,src_ram_type
  ,src_line_stride
  ,src_surface_stride
  ,op_en
  ,perf_read_stall
  );
wire [31:0] nvdla_cdp_rdma_d_cya_0_out;
wire [31:0] nvdla_cdp_rdma_d_data_cube_channel_0_out;
wire [31:0] nvdla_cdp_rdma_d_data_cube_height_0_out;
wire [31:0] nvdla_cdp_rdma_d_data_cube_width_0_out;
wire [31:0] nvdla_cdp_rdma_d_data_format_0_out;
wire [31:0] nvdla_cdp_rdma_d_op_enable_0_out;
wire [31:0] nvdla_cdp_rdma_d_operation_mode_0_out;
wire [31:0] nvdla_cdp_rdma_d_perf_enable_0_out;
wire [31:0] nvdla_cdp_rdma_d_perf_read_stall_0_out;
wire [31:0] nvdla_cdp_rdma_d_src_base_addr_high_0_out;
wire [31:0] nvdla_cdp_rdma_d_src_base_addr_low_0_out;
wire [31:0] nvdla_cdp_rdma_d_src_compression_en_0_out;
wire [31:0] nvdla_cdp_rdma_d_src_dma_cfg_0_out;
wire [31:0] nvdla_cdp_rdma_d_src_line_stride_0_out;
wire [31:0] nvdla_cdp_rdma_d_src_surface_stride_0_out;
wire [1:0] operation_mode;
wire [11:0] reg_offset_rd_int;
wire [31:0] reg_offset_wr;
wire src_compression_en;
// Register control interface
output [31:0] reg_rd_data;
input [11:0] reg_offset;
input [31:0] reg_wr_data; //(UNUSED_DEC)
input reg_wr_en;
input nvdla_core_clk;
input nvdla_core_rstn;
// Writable register flop/trigger outputs
output [31:0] cya;
output [12:0] channel;
output [12:0] height;
output [12:0] width;
output [1:0] input_data;
output op_en_trigger;
output dma_en;
output [31:0] src_base_addr_high;
output [31:0] src_base_addr_low;
output src_ram_type;
output [31:0] src_line_stride;
output [31:0] src_surface_stride;
// Read-only register inputs
input op_en;
input [31:0] perf_read_stall;
// wr_mask register inputs
// rstn register inputs
// leda FM_2_23 off
reg arreggen_abort_on_invalid_wr;
reg arreggen_abort_on_rowr;
reg arreggen_dump;
// leda FM_2_23 on
reg [12:0] channel;
reg [31:0] cya;
reg dma_en;
reg [12:0] height;
reg [1:0] input_data;
reg [31:0] reg_rd_data;
reg [31:0] src_base_addr_high;
reg [31:0] src_base_addr_low;
reg [31:0] src_line_stride;
reg src_ram_type;
reg [31:0] src_surface_stride;
reg [12:0] width;
assign reg_offset_wr = {20'b0 , reg_offset};
// SCR signals
// Address decode
wire nvdla_cdp_rdma_d_cya_0_wren = (reg_offset_wr == (32'he040 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_data_cube_channel_0_wren = (reg_offset_wr == (32'he014 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_data_cube_height_0_wren = (reg_offset_wr == (32'he010 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_data_cube_width_0_wren = (reg_offset_wr == (32'he00c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_data_format_0_wren = (reg_offset_wr == (32'he034 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_operation_mode_0_wren = (reg_offset_wr == (32'he030 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_op_enable_0_wren = (reg_offset_wr == (32'he008 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_perf_enable_0_wren = (reg_offset_wr == (32'he038 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_perf_read_stall_0_wren = (reg_offset_wr == (32'he03c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_src_base_addr_high_0_wren = (reg_offset_wr == (32'he01c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_src_base_addr_low_0_wren = (reg_offset_wr == (32'he018 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_src_compression_en_0_wren = (reg_offset_wr == (32'he02c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_src_dma_cfg_0_wren = (reg_offset_wr == (32'he028 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_src_line_stride_0_wren = (reg_offset_wr == (32'he020 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_rdma_d_src_surface_stride_0_wren = (reg_offset_wr == (32'he024 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
assign operation_mode = 2'h0;
assign src_compression_en = 1'h0;
assign nvdla_cdp_rdma_d_cya_0_out[31:0] = { cya };
assign nvdla_cdp_rdma_d_data_cube_channel_0_out[31:0] = { 19'b0, channel };
assign nvdla_cdp_rdma_d_data_cube_height_0_out[31:0] = { 19'b0, height };
assign nvdla_cdp_rdma_d_data_cube_width_0_out[31:0] = { 19'b0, width };
assign nvdla_cdp_rdma_d_data_format_0_out[31:0] = { 30'b0, input_data };
assign nvdla_cdp_rdma_d_operation_mode_0_out[31:0] = { 30'b0, operation_mode };
assign nvdla_cdp_rdma_d_op_enable_0_out[31:0] = { 31'b0, op_en };
assign nvdla_cdp_rdma_d_perf_enable_0_out[31:0] = { 31'b0, dma_en };
assign nvdla_cdp_rdma_d_perf_read_stall_0_out[31:0] = { perf_read_stall };
assign nvdla_cdp_rdma_d_src_base_addr_high_0_out[31:0] = { src_base_addr_high };
assign nvdla_cdp_rdma_d_src_base_addr_low_0_out[31:0] = { src_base_addr_low };
assign nvdla_cdp_rdma_d_src_compression_en_0_out[31:0] = { 31'b0, src_compression_en };
assign nvdla_cdp_rdma_d_src_dma_cfg_0_out[31:0] = { 31'b0, src_ram_type };
assign nvdla_cdp_rdma_d_src_line_stride_0_out[31:0] = { src_line_stride };
assign nvdla_cdp_rdma_d_src_surface_stride_0_out[31:0] = { src_surface_stride };
assign op_en_trigger = nvdla_cdp_rdma_d_op_enable_0_wren; //(W563)
assign reg_offset_rd_int = reg_offset;
// Output mux
//spyglass disable_block W338, W263
always @(
  reg_offset_rd_int
  or nvdla_cdp_rdma_d_cya_0_out
  or nvdla_cdp_rdma_d_data_cube_channel_0_out
  or nvdla_cdp_rdma_d_data_cube_height_0_out
  or nvdla_cdp_rdma_d_data_cube_width_0_out
  or nvdla_cdp_rdma_d_data_format_0_out
  or nvdla_cdp_rdma_d_operation_mode_0_out
  or nvdla_cdp_rdma_d_op_enable_0_out
  or nvdla_cdp_rdma_d_perf_enable_0_out
  or nvdla_cdp_rdma_d_perf_read_stall_0_out
  or nvdla_cdp_rdma_d_src_base_addr_high_0_out
  or nvdla_cdp_rdma_d_src_base_addr_low_0_out
  or nvdla_cdp_rdma_d_src_compression_en_0_out
  or nvdla_cdp_rdma_d_src_dma_cfg_0_out
  or nvdla_cdp_rdma_d_src_line_stride_0_out
  or nvdla_cdp_rdma_d_src_surface_stride_0_out
  ) begin
  case (reg_offset_rd_int)
     (32'he040 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_cya_0_out ;
                            end
     (32'he014 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_data_cube_channel_0_out ;
                            end
     (32'he010 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_data_cube_height_0_out ;
                            end
     (32'he00c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_data_cube_width_0_out ;
                            end
     (32'he034 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_data_format_0_out ;
                            end
     (32'he030 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_operation_mode_0_out ;
                            end
     (32'he008 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_op_enable_0_out ;
                            end
     (32'he038 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_perf_enable_0_out ;
                            end
     (32'he03c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_perf_read_stall_0_out ;
                            end
     (32'he01c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_src_base_addr_high_0_out ;
                            end
     (32'he018 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_src_base_addr_low_0_out ;
                            end
     (32'he02c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_src_compression_en_0_out ;
                            end
     (32'he028 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_src_dma_cfg_0_out ;
                            end
     (32'he020 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_src_line_stride_0_out ;
                            end
     (32'he024 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_rdma_d_src_surface_stride_0_out ;
                            end
    default: reg_rd_data = {32{1'b0}};
  endcase
end
//spyglass enable_block W338, W263
// spyglass disable_block STARC-2.10.1.6, NoConstWithXZ, W443
// Register flop declarations
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cya[31:0] <= 32'b00000000000000000000000000000000;
    channel[12:0] <= 13'b0000000000000;
    height[12:0] <= 13'b0000000000000;
    width[12:0] <= 13'b0000000000000;
    input_data[1:0] <= 2'b00;
    dma_en <= 1'b0;
    src_base_addr_high[31:0] <= 32'b00000000000000000000000000000000;
    src_base_addr_low[31:0] <= 32'b00000000000000000000000000000000;
    src_ram_type <= 1'b0;
    src_line_stride[31:0] <= 32'b00000000000000000000000000000000;
    src_surface_stride[31:0] <= 32'b00000000000000000000000000000000;
  end else begin
// Register: NVDLA_CDP_RDMA_D_CYA_0 Field: cya
  if (nvdla_cdp_rdma_d_cya_0_wren) begin
    cya[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL_0 Field: channel
  if (nvdla_cdp_rdma_d_data_cube_channel_0_wren) begin
    channel[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT_0 Field: height
  if (nvdla_cdp_rdma_d_data_cube_height_0_wren) begin
    height[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH_0 Field: width
  if (nvdla_cdp_rdma_d_data_cube_width_0_wren) begin
    width[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CDP_RDMA_D_DATA_FORMAT_0 Field: input_data
  if (nvdla_cdp_rdma_d_data_format_0_wren) begin
    input_data[1:0] <= reg_wr_data[1:0];
  end
// Not generating flops for constant field NVDLA_CDP_RDMA_D_OPERATION_MODE_0::operation_mode
// Not generating flops for field NVDLA_CDP_RDMA_D_OP_ENABLE_0::op_en (to be implemented outside)
// Register: NVDLA_CDP_RDMA_D_PERF_ENABLE_0 Field: dma_en
  if (nvdla_cdp_rdma_d_perf_enable_0_wren) begin
    dma_en <= reg_wr_data[0];
  end
// Not generating flops for read-only field NVDLA_CDP_RDMA_D_PERF_READ_STALL_0::perf_read_stall
// Register: NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH_0 Field: src_base_addr_high
  if (nvdla_cdp_rdma_d_src_base_addr_high_0_wren) begin
    src_base_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW_0 Field: src_base_addr_low
  if (nvdla_cdp_rdma_d_src_base_addr_low_0_wren) begin
    src_base_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Not generating flops for constant field NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN_0::src_compression_en
// Register: NVDLA_CDP_RDMA_D_SRC_DMA_CFG_0 Field: src_ram_type
  if (nvdla_cdp_rdma_d_src_dma_cfg_0_wren) begin
    src_ram_type <= reg_wr_data[0];
  end
// Register: NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE_0 Field: src_line_stride
  if (nvdla_cdp_rdma_d_src_line_stride_0_wren) begin
    src_line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE_0 Field: src_surface_stride
  if (nvdla_cdp_rdma_d_src_surface_stride_0_wren) begin
    src_surface_stride[31:0] <= reg_wr_data[31:0];
  end
  end
end
// spyglass enable_block STARC-2.10.1.6, NoConstWithXZ, W443
// synopsys translate_off
// VCS coverage off
initial begin
  arreggen_dump = $test$plusargs("arreggen_dump_wr");
  arreggen_abort_on_rowr = $test$plusargs("arreggen_abort_on_rowr");
  arreggen_abort_on_invalid_wr = $test$plusargs("arreggen_abort_on_invalid_wr");
`ifdef VERILATOR
`else
  $timeformat(-9, 2, "ns", 15);
`endif
end
always @(posedge nvdla_core_clk) begin
  if (reg_wr_en) begin
    case(reg_offset)
      (32'he040 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_CYA_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_cya_0_out, nvdla_cdp_rdma_d_cya_0_out);
      (32'he014 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_data_cube_channel_0_out, nvdla_cdp_rdma_d_data_cube_channel_0_out);
      (32'he010 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_data_cube_height_0_out, nvdla_cdp_rdma_d_data_cube_height_0_out);
      (32'he00c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_data_cube_width_0_out, nvdla_cdp_rdma_d_data_cube_width_0_out);
      (32'he034 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_DATA_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_data_format_0_out, nvdla_cdp_rdma_d_data_format_0_out);
      (32'he030 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_RDMA_D_OPERATION_MODE_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'he008 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_OP_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_op_enable_0_out, nvdla_cdp_rdma_d_op_enable_0_out);
      (32'he038 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_PERF_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_perf_enable_0_out, nvdla_cdp_rdma_d_perf_enable_0_out);
      (32'he03c & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_RDMA_D_PERF_READ_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'he01c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_src_base_addr_high_0_out, nvdla_cdp_rdma_d_src_base_addr_high_0_out);
      (32'he018 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_src_base_addr_low_0_out, nvdla_cdp_rdma_d_src_base_addr_low_0_out);
      (32'he02c & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'he028 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_SRC_DMA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_src_dma_cfg_0_out, nvdla_cdp_rdma_d_src_dma_cfg_0_out);
      (32'he020 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_src_line_stride_0_out, nvdla_cdp_rdma_d_src_line_stride_0_out);
      (32'he024 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_rdma_d_src_surface_stride_0_out, nvdla_cdp_rdma_d_src_surface_stride_0_out);
      default: begin
          if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
          if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
        end
    endcase
  end
end
// VCS coverage on
// synopsys translate_on
endmodule // NV_NVDLA_CDP_RDMA_REG_dual
