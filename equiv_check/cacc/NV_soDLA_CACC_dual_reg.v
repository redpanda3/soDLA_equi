module NV_soDLA_CACC_dual_reg( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn,
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en, // @[:@6.4]
  output [4:0]  batches, // @[:@6.4]
  output [4:0]  clip_truncate, // @[:@6.4]
  output [31:0] cya, // @[:@6.4]
  output [31:0] dataout_addr, // @[:@6.4]
  output        line_packed, // @[:@6.4]
  output        surf_packed, // @[:@6.4]
  output [12:0] dataout_height, // @[:@6.4]
  output [12:0] dataout_width, // @[:@6.4]
  output [12:0] dataout_channel, // @[:@6.4]
  output [23:0] line_stride, // @[:@6.4]
  output        conv_mode, // @[:@6.4]
  output [1:0]  proc_precision, // @[:@6.4]
  output [23:0] surf_stride, // @[:@6.4]
  output        op_en_trigger, // @[:@6.4]
  input         op_en, // @[:@6.4]
  input  [31:0] sat_count // @[:@6.4]
);
  wire [31:0] _GEN_13; // @[NV_NVDLA_CACC_dual_reg.scala 50:58:@8.4]
  wire  _T_48; // @[NV_NVDLA_CACC_dual_reg.scala 50:58:@8.4]
  wire  nvdla_cacc_d_batch_number_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 50:82:@9.4]
  wire  _T_50; // @[NV_NVDLA_CACC_dual_reg.scala 51:54:@10.4]
  wire  nvdla_cacc_d_clip_cfg_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 51:78:@11.4]
  wire  _T_52; // @[NV_NVDLA_CACC_dual_reg.scala 52:49:@12.4]
  wire  nvdla_cacc_d_cya_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 52:73:@13.4]
  wire  _T_54; // @[NV_NVDLA_CACC_dual_reg.scala 53:58:@14.4]
  wire  nvdla_cacc_d_dataout_addr_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 53:82:@15.4]
  wire  _T_56; // @[NV_NVDLA_CACC_dual_reg.scala 54:57:@16.4]
  wire  nvdla_cacc_d_dataout_map_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 54:81:@17.4]
  wire  _T_58; // @[NV_NVDLA_CACC_dual_reg.scala 55:60:@18.4]
  wire  nvdla_cacc_d_dataout_size_0_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 55:84:@19.4]
  wire  _T_60; // @[NV_NVDLA_CACC_dual_reg.scala 56:60:@20.4]
  wire  nvdla_cacc_d_dataout_size_1_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 56:84:@21.4]
  wire  _T_62; // @[NV_NVDLA_CACC_dual_reg.scala 57:57:@22.4]
  wire  nvdla_cacc_d_line_stride_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 57:81:@23.4]
  wire  _T_64; // @[NV_NVDLA_CACC_dual_reg.scala 58:54:@24.4]
  wire  nvdla_cacc_d_misc_cfg_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 58:78:@25.4]
  wire  _T_66; // @[NV_NVDLA_CACC_dual_reg.scala 59:55:@26.4]
  wire  _T_70; // @[NV_NVDLA_CACC_dual_reg.scala 61:57:@30.4]
  wire  nvdla_cacc_d_surf_stride_0_wren; // @[NV_NVDLA_CACC_dual_reg.scala 61:81:@31.4]
  wire [31:0] _T_74; // @[Cat.scala 30:58:@33.4]
  wire [31:0] _T_77; // @[Cat.scala 30:58:@34.4]
  wire [31:0] _T_85; // @[Cat.scala 30:58:@37.4]
  wire [31:0] _T_91; // @[Cat.scala 30:58:@40.4]
  wire [31:0] _T_94; // @[Cat.scala 30:58:@41.4]
  wire [31:0] _T_97; // @[Cat.scala 30:58:@42.4]
  wire [31:0] _T_103; // @[Cat.scala 30:58:@45.4]
  wire [31:0] _T_106; // @[Cat.scala 30:58:@46.4]
  wire [31:0] _T_110; // @[Cat.scala 30:58:@47.4]
  wire  _T_111; // @[Mux.scala 46:19:@48.4]
  wire [31:0] _T_112; // @[Mux.scala 46:16:@49.4]
  wire  _T_113; // @[Mux.scala 46:19:@50.4]
  wire [31:0] _T_114; // @[Mux.scala 46:16:@51.4]
  wire  _T_115; // @[Mux.scala 46:19:@52.4]
  wire [31:0] _T_116; // @[Mux.scala 46:16:@53.4]
  wire  _T_117; // @[Mux.scala 46:19:@54.4]
  wire [31:0] _T_118; // @[Mux.scala 46:16:@55.4]
  wire  _T_119; // @[Mux.scala 46:19:@56.4]
  wire [31:0] _T_120; // @[Mux.scala 46:16:@57.4]
  wire  _T_121; // @[Mux.scala 46:19:@58.4]
  wire [31:0] _T_122; // @[Mux.scala 46:16:@59.4]
  wire  _T_123; // @[Mux.scala 46:19:@60.4]
  wire [31:0] _T_124; // @[Mux.scala 46:16:@61.4]
  wire  _T_125; // @[Mux.scala 46:19:@62.4]
  wire [31:0] _T_126; // @[Mux.scala 46:16:@63.4]
  wire  _T_127; // @[Mux.scala 46:19:@64.4]
  wire [31:0] _T_128; // @[Mux.scala 46:16:@65.4]
  wire  _T_129; // @[Mux.scala 46:19:@66.4]
  wire [31:0] _T_130; // @[Mux.scala 46:16:@67.4]
  wire  _T_131; // @[Mux.scala 46:19:@68.4]
  wire [31:0] _T_132; // @[Mux.scala 46:16:@69.4]
  wire  _T_133; // @[Mux.scala 46:19:@70.4]
  wire [4:0] _T_135; // @[NV_NVDLA_CACC_dual_reg.scala 96:48:@73.4]
  reg [4:0] _T_138; // @[Reg.scala 19:20:@74.4]
  reg [31:0] _RAND_0;
  wire [4:0] _GEN_0; // @[Reg.scala 20:19:@75.4]
  reg [4:0] _T_142; // @[Reg.scala 19:20:@80.4]
  reg [31:0] _RAND_1;
  wire [4:0] _GEN_1; // @[Reg.scala 20:19:@81.4]
  reg [31:0] _T_146; // @[Reg.scala 19:20:@86.4]
  reg [31:0] _RAND_2;
  wire [31:0] _GEN_2; // @[Reg.scala 20:19:@87.4]
  reg [31:0] _T_150; // @[Reg.scala 19:20:@92.4]
  reg [31:0] _RAND_3;
  wire [31:0] _GEN_3; // @[Reg.scala 20:19:@93.4]
  wire  _T_151; // @[NV_NVDLA_CACC_dual_reg.scala 104:52:@97.4]
  reg  _T_154; // @[Reg.scala 19:20:@98.4]
  reg [31:0] _RAND_4;
  wire  _GEN_4; // @[Reg.scala 20:19:@99.4]
  wire  _T_155; // @[NV_NVDLA_CACC_dual_reg.scala 106:52:@103.4]
  reg  _T_158; // @[Reg.scala 19:20:@104.4]
  reg [31:0] _RAND_5;
  wire  _GEN_5; // @[Reg.scala 20:19:@105.4]
  wire [12:0] _T_159; // @[NV_NVDLA_CACC_dual_reg.scala 108:55:@109.4]
  reg [12:0] _T_162; // @[Reg.scala 19:20:@110.4]
  reg [31:0] _RAND_6;
  wire [12:0] _GEN_6; // @[Reg.scala 20:19:@111.4]
  wire [12:0] _T_163; // @[NV_NVDLA_CACC_dual_reg.scala 110:54:@115.4]
  reg [12:0] _T_166; // @[Reg.scala 19:20:@116.4]
  reg [31:0] _RAND_7;
  wire [12:0] _GEN_7; // @[Reg.scala 20:19:@117.4]
  reg [12:0] _T_170; // @[Reg.scala 19:20:@122.4]
  reg [31:0] _RAND_8;
  wire [12:0] _GEN_8; // @[Reg.scala 20:19:@123.4]
  wire [23:0] _T_171; // @[NV_NVDLA_CACC_dual_reg.scala 114:52:@127.4]
  reg [23:0] _T_174; // @[Reg.scala 19:20:@128.4]
  reg [31:0] _RAND_9;
  wire [23:0] _GEN_9; // @[Reg.scala 20:19:@129.4]
  reg  _T_178; // @[Reg.scala 19:20:@134.4]
  reg [31:0] _RAND_10;
  wire  _GEN_10; // @[Reg.scala 20:19:@135.4]
  wire [1:0] _T_179; // @[NV_NVDLA_CACC_dual_reg.scala 118:55:@139.4]
  reg [1:0] _T_182; // @[Reg.scala 19:20:@140.4]
  reg [31:0] _RAND_11;
  wire [1:0] _GEN_11; // @[Reg.scala 20:19:@141.4]
  reg [23:0] _T_186; // @[Reg.scala 19:20:@146.4]
  reg [31:0] _RAND_12;
  wire [23:0] _GEN_12; // @[Reg.scala 20:19:@147.4]
  assign _GEN_13 = {{20'd0}, reg_offset}; // @[NV_NVDLA_CACC_dual_reg.scala 50:58:@8.4]
  assign _T_48 = _GEN_13 == 32'h1c; // @[NV_NVDLA_CACC_dual_reg.scala 50:58:@8.4]
  assign nvdla_cacc_d_batch_number_0_wren = _T_48 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 50:82:@9.4]
  assign _T_50 = _GEN_13 == 32'h2c; // @[NV_NVDLA_CACC_dual_reg.scala 51:54:@10.4]
  assign nvdla_cacc_d_clip_cfg_0_wren = _T_50 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 51:78:@11.4]
  assign _T_52 = _GEN_13 == 32'h34; // @[NV_NVDLA_CACC_dual_reg.scala 52:49:@12.4]
  assign nvdla_cacc_d_cya_0_wren = _T_52 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 52:73:@13.4]
  assign _T_54 = _GEN_13 == 32'h18; // @[NV_NVDLA_CACC_dual_reg.scala 53:58:@14.4]
  assign nvdla_cacc_d_dataout_addr_0_wren = _T_54 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 53:82:@15.4]
  assign _T_56 = _GEN_13 == 32'h28; // @[NV_NVDLA_CACC_dual_reg.scala 54:57:@16.4]
  assign nvdla_cacc_d_dataout_map_0_wren = _T_56 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 54:81:@17.4]
  assign _T_58 = _GEN_13 == 32'h10; // @[NV_NVDLA_CACC_dual_reg.scala 55:60:@18.4]
  assign nvdla_cacc_d_dataout_size_0_0_wren = _T_58 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 55:84:@19.4]
  assign _T_60 = _GEN_13 == 32'h14; // @[NV_NVDLA_CACC_dual_reg.scala 56:60:@20.4]
  assign nvdla_cacc_d_dataout_size_1_0_wren = _T_60 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 56:84:@21.4]
  assign _T_62 = _GEN_13 == 32'h20; // @[NV_NVDLA_CACC_dual_reg.scala 57:57:@22.4]
  assign nvdla_cacc_d_line_stride_0_wren = _T_62 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 57:81:@23.4]
  assign _T_64 = _GEN_13 == 32'hc; // @[NV_NVDLA_CACC_dual_reg.scala 58:54:@24.4]
  assign nvdla_cacc_d_misc_cfg_0_wren = _T_64 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 58:78:@25.4]
  assign _T_66 = _GEN_13 == 32'h8; // @[NV_NVDLA_CACC_dual_reg.scala 59:55:@26.4]
  assign _T_70 = _GEN_13 == 32'h24; // @[NV_NVDLA_CACC_dual_reg.scala 61:57:@30.4]
  assign nvdla_cacc_d_surf_stride_0_wren = _T_70 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 61:81:@31.4]
  assign _T_74 = {27'h0,batches}; // @[Cat.scala 30:58:@33.4]
  assign _T_77 = {27'h0,clip_truncate}; // @[Cat.scala 30:58:@34.4]
  assign _T_85 = {15'h0,surf_packed,15'h0,line_packed}; // @[Cat.scala 30:58:@37.4]
  assign _T_91 = {3'h0,dataout_height,3'h0,dataout_width}; // @[Cat.scala 30:58:@40.4]
  assign _T_94 = {19'h0,dataout_channel}; // @[Cat.scala 30:58:@41.4]
  assign _T_97 = {8'h0,line_stride}; // @[Cat.scala 30:58:@42.4]
  assign _T_103 = {18'h0,proc_precision,11'h0,conv_mode}; // @[Cat.scala 30:58:@45.4]
  assign _T_106 = {31'h0,op_en}; // @[Cat.scala 30:58:@46.4]
  assign _T_110 = {8'h0,surf_stride}; // @[Cat.scala 30:58:@47.4]
  assign _T_111 = 32'h24 == _GEN_13; // @[Mux.scala 46:19:@48.4]
  assign _T_112 = _T_111 ? _T_110 : 32'h0; // @[Mux.scala 46:16:@49.4]
  assign _T_113 = 32'h30 == _GEN_13; // @[Mux.scala 46:19:@50.4]
  assign _T_114 = _T_113 ? sat_count : _T_112; // @[Mux.scala 46:16:@51.4]
  assign _T_115 = 32'h8 == _GEN_13; // @[Mux.scala 46:19:@52.4]
  assign _T_116 = _T_115 ? _T_106 : _T_114; // @[Mux.scala 46:16:@53.4]
  assign _T_117 = 32'hc == _GEN_13; // @[Mux.scala 46:19:@54.4]
  assign _T_118 = _T_117 ? _T_103 : _T_116; // @[Mux.scala 46:16:@55.4]
  assign _T_119 = 32'h20 == _GEN_13; // @[Mux.scala 46:19:@56.4]
  assign _T_120 = _T_119 ? _T_97 : _T_118; // @[Mux.scala 46:16:@57.4]
  assign _T_121 = 32'h14 == _GEN_13; // @[Mux.scala 46:19:@58.4]
  assign _T_122 = _T_121 ? _T_94 : _T_120; // @[Mux.scala 46:16:@59.4]
  assign _T_123 = 32'h10 == _GEN_13; // @[Mux.scala 46:19:@60.4]
  assign _T_124 = _T_123 ? _T_91 : _T_122; // @[Mux.scala 46:16:@61.4]
  assign _T_125 = 32'h28 == _GEN_13; // @[Mux.scala 46:19:@62.4]
  assign _T_126 = _T_125 ? _T_85 : _T_124; // @[Mux.scala 46:16:@63.4]
  assign _T_127 = 32'h18 == _GEN_13; // @[Mux.scala 46:19:@64.4]
  assign _T_128 = _T_127 ? dataout_addr : _T_126; // @[Mux.scala 46:16:@65.4]
  assign _T_129 = 32'h34 == _GEN_13; // @[Mux.scala 46:19:@66.4]
  assign _T_130 = _T_129 ? cya : _T_128; // @[Mux.scala 46:16:@67.4]
  assign _T_131 = 32'h2c == _GEN_13; // @[Mux.scala 46:19:@68.4]
  assign _T_132 = _T_131 ? _T_77 : _T_130; // @[Mux.scala 46:16:@69.4]
  assign _T_133 = 32'h1c == _GEN_13; // @[Mux.scala 46:19:@70.4]
  assign _T_135 = reg_wr_data[4:0]; // @[NV_NVDLA_CACC_dual_reg.scala 96:48:@73.4]
  assign _GEN_0 = nvdla_cacc_d_batch_number_0_wren ? _T_135 : _T_138; // @[Reg.scala 20:19:@75.4]
  assign _GEN_1 = nvdla_cacc_d_clip_cfg_0_wren ? _T_135 : _T_142; // @[Reg.scala 20:19:@81.4]
  assign _GEN_2 = nvdla_cacc_d_cya_0_wren ? reg_wr_data : _T_146; // @[Reg.scala 20:19:@87.4]
  assign _GEN_3 = nvdla_cacc_d_dataout_addr_0_wren ? reg_wr_data : _T_150; // @[Reg.scala 20:19:@93.4]
  assign _T_151 = reg_wr_data[0]; // @[NV_NVDLA_CACC_dual_reg.scala 104:52:@97.4]
  assign _GEN_4 = nvdla_cacc_d_dataout_map_0_wren ? _T_151 : _T_154; // @[Reg.scala 20:19:@99.4]
  assign _T_155 = reg_wr_data[16]; // @[NV_NVDLA_CACC_dual_reg.scala 106:52:@103.4]
  assign _GEN_5 = nvdla_cacc_d_dataout_map_0_wren ? _T_155 : _T_158; // @[Reg.scala 20:19:@105.4]
  assign _T_159 = reg_wr_data[28:16]; // @[NV_NVDLA_CACC_dual_reg.scala 108:55:@109.4]
  assign _GEN_6 = nvdla_cacc_d_dataout_size_0_0_wren ? _T_159 : _T_162; // @[Reg.scala 20:19:@111.4]
  assign _T_163 = reg_wr_data[12:0]; // @[NV_NVDLA_CACC_dual_reg.scala 110:54:@115.4]
  assign _GEN_7 = nvdla_cacc_d_dataout_size_0_0_wren ? _T_163 : _T_166; // @[Reg.scala 20:19:@117.4]
  assign _GEN_8 = nvdla_cacc_d_dataout_size_1_0_wren ? _T_163 : _T_170; // @[Reg.scala 20:19:@123.4]
  assign _T_171 = reg_wr_data[23:0]; // @[NV_NVDLA_CACC_dual_reg.scala 114:52:@127.4]
  assign _GEN_9 = nvdla_cacc_d_line_stride_0_wren ? _T_171 : _T_174; // @[Reg.scala 20:19:@129.4]
  assign _GEN_10 = nvdla_cacc_d_misc_cfg_0_wren ? _T_151 : _T_178; // @[Reg.scala 20:19:@135.4]
  assign _T_179 = reg_wr_data[13:12]; // @[NV_NVDLA_CACC_dual_reg.scala 118:55:@139.4]
  assign _GEN_11 = nvdla_cacc_d_misc_cfg_0_wren ? _T_179 : _T_182; // @[Reg.scala 20:19:@141.4]
  assign _GEN_12 = nvdla_cacc_d_surf_stride_0_wren ? _T_171 : _T_186; // @[Reg.scala 20:19:@147.4]
  assign reg_rd_data = _T_133 ? _T_74 : _T_132; // @[NV_NVDLA_CACC_dual_reg.scala 67:19:@72.4]
  assign batches = _T_138; // @[NV_NVDLA_CACC_dual_reg.scala 96:21:@78.4]
  assign clip_truncate = _T_142; // @[NV_NVDLA_CACC_dual_reg.scala 98:27:@84.4]
  assign cya = _T_146; // @[NV_NVDLA_CACC_dual_reg.scala 100:17:@90.4]
  assign dataout_addr = _T_150; // @[NV_NVDLA_CACC_dual_reg.scala 102:26:@96.4]
  assign line_packed = _T_154; // @[NV_NVDLA_CACC_dual_reg.scala 104:25:@102.4]
  assign surf_packed = _T_158; // @[NV_NVDLA_CACC_dual_reg.scala 106:25:@108.4]
  assign dataout_height = _T_162; // @[NV_NVDLA_CACC_dual_reg.scala 108:28:@114.4]
  assign dataout_width = _T_166; // @[NV_NVDLA_CACC_dual_reg.scala 110:27:@120.4]
  assign dataout_channel = _T_170; // @[NV_NVDLA_CACC_dual_reg.scala 112:29:@126.4]
  assign line_stride = _T_174; // @[NV_NVDLA_CACC_dual_reg.scala 114:25:@132.4]
  assign conv_mode = _T_178; // @[NV_NVDLA_CACC_dual_reg.scala 116:23:@138.4]
  assign proc_precision = _T_182; // @[NV_NVDLA_CACC_dual_reg.scala 118:28:@144.4]
  assign surf_stride = _T_186; // @[NV_NVDLA_CACC_dual_reg.scala 120:25:@150.4]
  assign op_en_trigger = _T_66 & reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 63:21:@32.4]
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
  _T_138 = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_142 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_146 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_150 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_154 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_158 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_162 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_166 = _RAND_7[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_170 = _RAND_8[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_174 = _RAND_9[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_178 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_182 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_186 = _RAND_12[23:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!nvdla_core_rstn) begin
      _T_138 <= 5'h0;
    end else begin
      if (nvdla_cacc_d_batch_number_0_wren) begin
        _T_138 <= _T_135;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_142 <= 5'h0;
    end else begin
      if (nvdla_cacc_d_clip_cfg_0_wren) begin
        _T_142 <= _T_135;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_146 <= 32'h0;
    end else begin
      if (nvdla_cacc_d_cya_0_wren) begin
        _T_146 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_150 <= 32'h0;
    end else begin
      if (nvdla_cacc_d_dataout_addr_0_wren) begin
        _T_150 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_154 <= 1'h0;
    end else begin
      if (nvdla_cacc_d_dataout_map_0_wren) begin
        _T_154 <= _T_151;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_158 <= 1'h0;
    end else begin
      if (nvdla_cacc_d_dataout_map_0_wren) begin
        _T_158 <= _T_155;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_162 <= 13'h0;
    end else begin
      if (nvdla_cacc_d_dataout_size_0_0_wren) begin
        _T_162 <= _T_159;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_166 <= 13'h0;
    end else begin
      if (nvdla_cacc_d_dataout_size_0_0_wren) begin
        _T_166 <= _T_163;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_170 <= 13'h0;
    end else begin
      if (nvdla_cacc_d_dataout_size_1_0_wren) begin
        _T_170 <= _T_163;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_174 <= 24'h0;
    end else begin
      if (nvdla_cacc_d_line_stride_0_wren) begin
        _T_174 <= _T_171;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_178 <= 1'h0;
    end else begin
      if (nvdla_cacc_d_misc_cfg_0_wren) begin
        _T_178 <= _T_151;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_182 <= 2'h1;
    end else begin
      if (nvdla_cacc_d_misc_cfg_0_wren) begin
        _T_182 <= _T_179;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_186 <= 24'h0;
    end else begin
      if (nvdla_cacc_d_surf_stride_0_wren) begin
        _T_186 <= _T_171;
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
// File Name: NV_NVDLA_CACC_dual_reg.v
module NV_NVDLA_CACC_dual_reg (
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
  ,batches
  ,clip_truncate
  ,cya
  ,dataout_addr
  ,line_packed
  ,surf_packed
  ,dataout_height
  ,dataout_width
  ,dataout_channel
  ,line_stride
  ,conv_mode
  ,proc_precision
  ,op_en_trigger
  ,surf_stride
  ,op_en
  ,sat_count
  );
wire [31:0] nvdla_cacc_d_batch_number_0_out;
wire [31:0] nvdla_cacc_d_clip_cfg_0_out;
wire [31:0] nvdla_cacc_d_cya_0_out;
wire [31:0] nvdla_cacc_d_dataout_addr_0_out;
wire [31:0] nvdla_cacc_d_dataout_map_0_out;
wire [31:0] nvdla_cacc_d_dataout_size_0_0_out;
wire [31:0] nvdla_cacc_d_dataout_size_1_0_out;
wire [31:0] nvdla_cacc_d_line_stride_0_out;
wire [31:0] nvdla_cacc_d_misc_cfg_0_out;
wire [31:0] nvdla_cacc_d_op_enable_0_out;
wire [31:0] nvdla_cacc_d_out_saturation_0_out;
wire [31:0] nvdla_cacc_d_surf_stride_0_out;
wire [11:0] reg_offset_rd_int;
wire [31:0] reg_offset_wr;
// Register control interface
output [31:0] reg_rd_data;
input [11:0] reg_offset;
input [31:0] reg_wr_data; //(UNUSED_DEC)
input reg_wr_en;
input nvdla_core_clk;
input nvdla_core_rstn;
// Writable register flop/trigger outputs
output [4:0] batches;
output [4:0] clip_truncate;
output [31:0] cya;
output [31:0] dataout_addr;
output line_packed;
output surf_packed;
output [12:0] dataout_height;
output [12:0] dataout_width;
output [12:0] dataout_channel;
output [23:0] line_stride;
output conv_mode;
output [1:0] proc_precision;
output op_en_trigger;
output [23:0] surf_stride;
// Read-only register inputs
input op_en;
input [31:0] sat_count;
// wr_mask register inputs
// rstn register inputs
// leda FM_2_23 off
reg arreggen_abort_on_invalid_wr;
reg arreggen_abort_on_rowr;
reg arreggen_dump;
// leda FM_2_23 on
reg [4:0] batches;
reg [4:0] clip_truncate;
reg conv_mode;
reg [31:0] cya;
reg [31:0] dataout_addr;
reg [12:0] dataout_channel;
reg [12:0] dataout_height;
reg [12:0] dataout_width;
reg line_packed;
reg [23:0] line_stride;
reg [1:0] proc_precision;
reg [31:0] reg_rd_data;
reg surf_packed;
reg [23:0] surf_stride;
assign reg_offset_wr = {20'b0 , reg_offset};
// SCR signals
// Address decode
wire nvdla_cacc_d_batch_number_0_wren = (reg_offset_wr == (32'h901c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_clip_cfg_0_wren = (reg_offset_wr == (32'h902c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_cya_0_wren = (reg_offset_wr == (32'h9034 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_dataout_addr_0_wren = (reg_offset_wr == (32'h9018 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_dataout_map_0_wren = (reg_offset_wr == (32'h9028 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_dataout_size_0_0_wren = (reg_offset_wr == (32'h9010 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_dataout_size_1_0_wren = (reg_offset_wr == (32'h9014 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_line_stride_0_wren = (reg_offset_wr == (32'h9020 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_misc_cfg_0_wren = (reg_offset_wr == (32'h900c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_op_enable_0_wren = (reg_offset_wr == (32'h9008 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_out_saturation_0_wren = (reg_offset_wr == (32'h9030 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cacc_d_surf_stride_0_wren = (reg_offset_wr == (32'h9024 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
assign nvdla_cacc_d_batch_number_0_out[31:0] = { 27'b0, batches };
assign nvdla_cacc_d_clip_cfg_0_out[31:0] = { 27'b0, clip_truncate };
assign nvdla_cacc_d_cya_0_out[31:0] = { cya };
assign nvdla_cacc_d_dataout_addr_0_out[31:0] = { dataout_addr};
assign nvdla_cacc_d_dataout_map_0_out[31:0] = { 15'b0, surf_packed, 15'b0, line_packed };
assign nvdla_cacc_d_dataout_size_0_0_out[31:0] = { 3'b0, dataout_height, 3'b0, dataout_width };
assign nvdla_cacc_d_dataout_size_1_0_out[31:0] = { 19'b0, dataout_channel };
assign nvdla_cacc_d_line_stride_0_out[31:0] = { 8'b0, line_stride};
assign nvdla_cacc_d_misc_cfg_0_out[31:0] = { 18'b0, proc_precision, 11'b0, conv_mode };
assign nvdla_cacc_d_op_enable_0_out[31:0] = { 31'b0, op_en };
assign nvdla_cacc_d_out_saturation_0_out[31:0] = { sat_count };
assign nvdla_cacc_d_surf_stride_0_out[31:0] = { 8'b0, surf_stride};
assign op_en_trigger = nvdla_cacc_d_op_enable_0_wren; //(W563)
assign reg_offset_rd_int = reg_offset;
// Output mux
//spyglass disable_block W338, W263
always @(
  reg_offset_rd_int
  or nvdla_cacc_d_batch_number_0_out
  or nvdla_cacc_d_clip_cfg_0_out
  or nvdla_cacc_d_cya_0_out
  or nvdla_cacc_d_dataout_addr_0_out
  or nvdla_cacc_d_dataout_map_0_out
  or nvdla_cacc_d_dataout_size_0_0_out
  or nvdla_cacc_d_dataout_size_1_0_out
  or nvdla_cacc_d_line_stride_0_out
  or nvdla_cacc_d_misc_cfg_0_out
  or nvdla_cacc_d_op_enable_0_out
  or nvdla_cacc_d_out_saturation_0_out
  or nvdla_cacc_d_surf_stride_0_out
  ) begin
  case (reg_offset_rd_int)
     (32'h901c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_batch_number_0_out ;
                            end
     (32'h902c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_clip_cfg_0_out ;
                            end
     (32'h9034 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_cya_0_out ;
                            end
     (32'h9018 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_dataout_addr_0_out ;
                            end
     (32'h9028 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_dataout_map_0_out ;
                            end
     (32'h9010 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_dataout_size_0_0_out ;
                            end
     (32'h9014 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_dataout_size_1_0_out ;
                            end
     (32'h9020 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_line_stride_0_out ;
                            end
     (32'h900c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_misc_cfg_0_out ;
                            end
     (32'h9008 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_op_enable_0_out ;
                            end
     (32'h9030 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_out_saturation_0_out ;
                            end
     (32'h9024 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cacc_d_surf_stride_0_out ;
                            end
    default: reg_rd_data = {32{1'b0}};
  endcase
end
//spyglass enable_block W338, W263
// spyglass disable_block STARC-2.10.1.6, NoConstWithXZ, W443
// Register flop declarations
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    batches[4:0] <= 5'b00000;
    clip_truncate[4:0] <= 5'b00000;
    cya[31:0] <= 32'b00000000000000000000000000000000;
    dataout_addr[31:0] <= 32'h0;
    line_packed <= 1'b0;
    surf_packed <= 1'b0;
    dataout_height[12:0] <= 13'b0000000000000;
    dataout_width[12:0] <= 13'b0000000000000;
    dataout_channel[12:0] <= 13'b0000000000000;
    line_stride[23:0] <= 24'b000000000000000000000000;
    conv_mode <= 1'b0;
    proc_precision[1:0] <= 2'b01;
    surf_stride[23:0] <= 24'b000000000000000000000000;
  end else begin
// Register: NVDLA_CACC_D_BATCH_NUMBER_0 Field: batches
  if (nvdla_cacc_d_batch_number_0_wren) begin
    batches[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CACC_D_CLIP_CFG_0 Field: clip_truncate
  if (nvdla_cacc_d_clip_cfg_0_wren) begin
    clip_truncate[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CACC_D_CYA_0 Field: cya
  if (nvdla_cacc_d_cya_0_wren) begin
    cya[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CACC_D_DATAOUT_ADDR_0 Field: dataout_addr
  if (nvdla_cacc_d_dataout_addr_0_wren) begin
    dataout_addr[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CACC_D_DATAOUT_MAP_0 Field: line_packed
  if (nvdla_cacc_d_dataout_map_0_wren) begin
    line_packed <= reg_wr_data[0];
  end
// Register: NVDLA_CACC_D_DATAOUT_MAP_0 Field: surf_packed
  if (nvdla_cacc_d_dataout_map_0_wren) begin
    surf_packed <= reg_wr_data[16];
  end
// Register: NVDLA_CACC_D_DATAOUT_SIZE_0_0 Field: dataout_height
  if (nvdla_cacc_d_dataout_size_0_0_wren) begin
    dataout_height[12:0] <= reg_wr_data[28:16];
  end
// Register: NVDLA_CACC_D_DATAOUT_SIZE_0_0 Field: dataout_width
  if (nvdla_cacc_d_dataout_size_0_0_wren) begin
    dataout_width[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CACC_D_DATAOUT_SIZE_1_0 Field: dataout_channel
  if (nvdla_cacc_d_dataout_size_1_0_wren) begin
    dataout_channel[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CACC_D_LINE_STRIDE_0 Field: line_stride
  if (nvdla_cacc_d_line_stride_0_wren) begin
    line_stride[23:0] <= reg_wr_data[23:0];
  end
// Register: NVDLA_CACC_D_MISC_CFG_0 Field: conv_mode
  if (nvdla_cacc_d_misc_cfg_0_wren) begin
    conv_mode <= reg_wr_data[0];
  end
// Register: NVDLA_CACC_D_MISC_CFG_0 Field: proc_precision
  if (nvdla_cacc_d_misc_cfg_0_wren) begin
    proc_precision[1:0] <= reg_wr_data[13:12];
  end
// Not generating flops for field NVDLA_CACC_D_OP_ENABLE_0::op_en (to be implemented outside)
// Not generating flops for read-only field NVDLA_CACC_D_OUT_SATURATION_0::sat_count
// Register: NVDLA_CACC_D_SURF_STRIDE_0 Field: surf_stride
  if (nvdla_cacc_d_surf_stride_0_wren) begin
    surf_stride[23:0] <= reg_wr_data[23:0];
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
      (32'h901c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_BATCH_NUMBER_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_batch_number_0_out, nvdla_cacc_d_batch_number_0_out);
      (32'h902c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_CLIP_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_clip_cfg_0_out, nvdla_cacc_d_clip_cfg_0_out);
      (32'h9034 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_CYA_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_cya_0_out, nvdla_cacc_d_cya_0_out);
      (32'h9018 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_DATAOUT_ADDR_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_dataout_addr_0_out, nvdla_cacc_d_dataout_addr_0_out);
      (32'h9028 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_DATAOUT_MAP_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_dataout_map_0_out, nvdla_cacc_d_dataout_map_0_out);
      (32'h9010 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_DATAOUT_SIZE_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_dataout_size_0_0_out, nvdla_cacc_d_dataout_size_0_0_out);
      (32'h9014 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_DATAOUT_SIZE_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_dataout_size_1_0_out, nvdla_cacc_d_dataout_size_1_0_out);
      (32'h9020 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_line_stride_0_out, nvdla_cacc_d_line_stride_0_out);
      (32'h900c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_MISC_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_misc_cfg_0_out, nvdla_cacc_d_misc_cfg_0_out);
      (32'h9008 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_OP_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_op_enable_0_out, nvdla_cacc_d_op_enable_0_out);
      (32'h9030 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CACC_D_OUT_SATURATION_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h9024 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CACC_D_SURF_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cacc_d_surf_stride_0_out, nvdla_cacc_d_surf_stride_0_out);
      default: begin
          if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
          if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
        end
    endcase
  end
end
// VCS coverage on
// synopsys translate_on
endmodule // NV_NVDLA_CACC_dual_reg

