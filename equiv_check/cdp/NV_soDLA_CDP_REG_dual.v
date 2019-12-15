module NV_soDLA_CDP_REG_dual( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn,
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en, // @[:@6.4]
  output [31:0] cya, // @[:@6.4]
  output [1:0]  input_data_type, // @[:@6.4]
  output [15:0] datin_offset, // @[:@6.4]
  output [15:0] datin_scale, // @[:@6.4]
  output [4:0]  datin_shifter, // @[:@6.4]
  output [31:0] datout_offset, // @[:@6.4]
  output [15:0] datout_scale, // @[:@6.4]
  output [5:0]  datout_shifter, // @[:@6.4]
  output [31:0] dst_base_addr_high, // @[:@6.4]
  output [31:0] dst_base_addr_low, // @[:@6.4]
  output        dst_ram_type, // @[:@6.4]
  output [31:0] dst_line_stride, // @[:@6.4]
  output [31:0] dst_surface_stride, // @[:@6.4]
  output        mul_bypass, // @[:@6.4]
  output        sqsum_bypass, // @[:@6.4]
  output [1:0]  normalz_len, // @[:@6.4]
  output        nan_to_zero, // @[:@6.4]
  output        dma_en, // @[:@6.4]
  output        lut_en, // @[:@6.4]
  output        op_en_trigger, // @[:@6.4]
  input  [31:0] inf_input_num, // @[:@6.4]
  input  [31:0] nan_input_num, // @[:@6.4]
  input  [31:0] nan_output_num, // @[:@6.4]
  input         op_en, // @[:@6.4]
  input  [31:0] out_saturation, // @[:@6.4]
  input  [31:0] perf_lut_hybrid, // @[:@6.4]
  input  [31:0] perf_lut_le_hit, // @[:@6.4]
  input  [31:0] perf_lut_lo_hit, // @[:@6.4]
  input  [31:0] perf_lut_oflow, // @[:@6.4]
  input  [31:0] perf_lut_uflow, // @[:@6.4]
  input  [31:0] perf_write_stall // @[:@6.4]
);
  wire [31:0] _GEN_19; // @[NV_NVDLA_CDP_REG_dual.scala 58:49:@8.4]
  wire  _T_78; // @[NV_NVDLA_CDP_REG_dual.scala 58:49:@8.4]
  wire  nvdla_cdp_d_cya_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 58:73:@9.4]
  wire  _T_80; // @[NV_NVDLA_CDP_REG_dual.scala 59:57:@10.4]
  wire  nvdla_cdp_d_data_format_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 59:81:@11.4]
  wire  _T_82; // @[NV_NVDLA_CDP_REG_dual.scala 60:58:@12.4]
  wire  nvdla_cdp_d_datin_offset_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 60:82:@13.4]
  wire  _T_84; // @[NV_NVDLA_CDP_REG_dual.scala 61:57:@14.4]
  wire  nvdla_cdp_d_datin_scale_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 61:81:@15.4]
  wire  _T_86; // @[NV_NVDLA_CDP_REG_dual.scala 62:59:@16.4]
  wire  nvdla_cdp_d_datin_shifter_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 62:83:@17.4]
  wire  _T_88; // @[NV_NVDLA_CDP_REG_dual.scala 63:59:@18.4]
  wire  nvdla_cdp_d_datout_offset_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 63:83:@19.4]
  wire  _T_90; // @[NV_NVDLA_CDP_REG_dual.scala 64:58:@20.4]
  wire  nvdla_cdp_d_datout_scale_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 64:82:@21.4]
  wire  _T_92; // @[NV_NVDLA_CDP_REG_dual.scala 65:60:@22.4]
  wire  nvdla_cdp_d_datout_shifter_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 65:84:@23.4]
  wire  _T_94; // @[NV_NVDLA_CDP_REG_dual.scala 66:64:@24.4]
  wire  nvdla_cdp_d_dst_base_addr_high_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 66:88:@25.4]
  wire  _T_100; // @[NV_NVDLA_CDP_REG_dual.scala 69:57:@30.4]
  wire  nvdla_cdp_d_dst_dma_cfg_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 69:81:@31.4]
  wire  _T_102; // @[NV_NVDLA_CDP_REG_dual.scala 70:61:@32.4]
  wire  nvdla_cdp_d_dst_line_stride_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 70:85:@33.4]
  wire  _T_104; // @[NV_NVDLA_CDP_REG_dual.scala 71:64:@34.4]
  wire  nvdla_cdp_d_dst_surface_stride_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 71:88:@35.4]
  wire  _T_106; // @[NV_NVDLA_CDP_REG_dual.scala 72:57:@36.4]
  wire  nvdla_cdp_d_func_bypass_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 72:81:@37.4]
  wire  _T_110; // @[NV_NVDLA_CDP_REG_dual.scala 74:53:@40.4]
  wire  nvdla_cdp_d_lrn_cfg_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 74:77:@41.4]
  wire  _T_112; // @[NV_NVDLA_CDP_REG_dual.scala 75:63:@42.4]
  wire  nvdla_cdp_d_nan_flush_to_zero_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 75:87:@43.4]
  wire  _T_118; // @[NV_NVDLA_CDP_REG_dual.scala 78:55:@48.4]
  wire  _T_122; // @[NV_NVDLA_CDP_REG_dual.scala 80:57:@52.4]
  wire  nvdla_cdp_d_perf_enable_0_wren; // @[NV_NVDLA_CDP_REG_dual.scala 80:81:@53.4]
  wire [31:0] _T_139; // @[Cat.scala 30:58:@67.4]
  wire [31:0] _T_142; // @[Cat.scala 30:58:@68.4]
  wire [31:0] _T_145; // @[Cat.scala 30:58:@69.4]
  wire [31:0] _T_148; // @[Cat.scala 30:58:@70.4]
  wire [31:0] _T_152; // @[Cat.scala 30:58:@71.4]
  wire [31:0] _T_155; // @[Cat.scala 30:58:@72.4]
  wire [31:0] _T_163; // @[Cat.scala 30:58:@74.4]
  wire [31:0] _T_169; // @[Cat.scala 30:58:@76.4]
  wire [31:0] _T_173; // @[Cat.scala 30:58:@77.4]
  wire [31:0] _T_176; // @[Cat.scala 30:58:@78.4]
  wire [31:0] _T_181; // @[Cat.scala 30:58:@79.4]
  wire [31:0] _T_186; // @[Cat.scala 30:58:@81.4]
  wire  _T_193; // @[Mux.scala 46:19:@82.4]
  wire [31:0] _T_194; // @[Mux.scala 46:16:@83.4]
  wire  _T_195; // @[Mux.scala 46:19:@84.4]
  wire [31:0] _T_196; // @[Mux.scala 46:16:@85.4]
  wire  _T_197; // @[Mux.scala 46:19:@86.4]
  wire [31:0] _T_198; // @[Mux.scala 46:16:@87.4]
  wire  _T_199; // @[Mux.scala 46:19:@88.4]
  wire [31:0] _T_200; // @[Mux.scala 46:16:@89.4]
  wire  _T_201; // @[Mux.scala 46:19:@90.4]
  wire [31:0] _T_202; // @[Mux.scala 46:16:@91.4]
  wire  _T_203; // @[Mux.scala 46:19:@92.4]
  wire [31:0] _T_204; // @[Mux.scala 46:16:@93.4]
  wire  _T_205; // @[Mux.scala 46:19:@94.4]
  wire [31:0] _T_206; // @[Mux.scala 46:16:@95.4]
  wire  _T_207; // @[Mux.scala 46:19:@96.4]
  wire [31:0] _T_208; // @[Mux.scala 46:16:@97.4]
  wire  _T_209; // @[Mux.scala 46:19:@98.4]
  wire [31:0] _T_210; // @[Mux.scala 46:16:@99.4]
  wire  _T_211; // @[Mux.scala 46:19:@100.4]
  wire [31:0] _T_212; // @[Mux.scala 46:16:@101.4]
  wire  _T_213; // @[Mux.scala 46:19:@102.4]
  wire [31:0] _T_214; // @[Mux.scala 46:16:@103.4]
  wire  _T_215; // @[Mux.scala 46:19:@104.4]
  wire [31:0] _T_216; // @[Mux.scala 46:16:@105.4]
  wire  _T_217; // @[Mux.scala 46:19:@106.4]
  wire [31:0] _T_218; // @[Mux.scala 46:16:@107.4]
  wire  _T_219; // @[Mux.scala 46:19:@108.4]
  wire [31:0] _T_220; // @[Mux.scala 46:16:@109.4]
  wire  _T_221; // @[Mux.scala 46:19:@110.4]
  wire [31:0] _T_222; // @[Mux.scala 46:16:@111.4]
  wire  _T_223; // @[Mux.scala 46:19:@112.4]
  wire [31:0] _T_224; // @[Mux.scala 46:16:@113.4]
  wire  _T_225; // @[Mux.scala 46:19:@114.4]
  wire [31:0] _T_226; // @[Mux.scala 46:16:@115.4]
  wire  _T_227; // @[Mux.scala 46:19:@116.4]
  wire [31:0] _T_228; // @[Mux.scala 46:16:@117.4]
  wire  _T_229; // @[Mux.scala 46:19:@118.4]
  wire [31:0] _T_230; // @[Mux.scala 46:16:@119.4]
  wire  _T_231; // @[Mux.scala 46:19:@120.4]
  wire [31:0] _T_232; // @[Mux.scala 46:16:@121.4]
  wire  _T_233; // @[Mux.scala 46:19:@122.4]
  wire [31:0] _T_234; // @[Mux.scala 46:16:@123.4]
  wire  _T_235; // @[Mux.scala 46:19:@124.4]
  wire [31:0] _T_236; // @[Mux.scala 46:16:@125.4]
  wire  _T_237; // @[Mux.scala 46:19:@126.4]
  wire [31:0] _T_238; // @[Mux.scala 46:16:@127.4]
  wire  _T_239; // @[Mux.scala 46:19:@128.4]
  wire [31:0] _T_240; // @[Mux.scala 46:16:@129.4]
  wire  _T_241; // @[Mux.scala 46:19:@130.4]
  wire [31:0] _T_242; // @[Mux.scala 46:16:@131.4]
  wire  _T_243; // @[Mux.scala 46:19:@132.4]
  wire [31:0] _T_244; // @[Mux.scala 46:16:@133.4]
  wire  _T_245; // @[Mux.scala 46:19:@134.4]
  wire [31:0] _T_246; // @[Mux.scala 46:16:@135.4]
  wire  _T_247; // @[Mux.scala 46:19:@136.4]
  wire [31:0] _T_248; // @[Mux.scala 46:16:@137.4]
  wire  _T_249; // @[Mux.scala 46:19:@138.4]
  reg [31:0] _T_254; // @[Reg.scala 19:20:@142.4]
  reg [31:0] _RAND_0;
  wire [31:0] _GEN_0; // @[Reg.scala 20:19:@143.4]
  wire [1:0] _T_255; // @[NV_NVDLA_CDP_REG_dual.scala 160:57:@147.4]
  reg [1:0] _T_258; // @[Reg.scala 19:20:@148.4]
  reg [31:0] _RAND_1;
  wire [1:0] _GEN_1; // @[Reg.scala 20:19:@149.4]
  wire [15:0] _T_259; // @[NV_NVDLA_CDP_REG_dual.scala 162:54:@153.4]
  reg [15:0] _T_262; // @[Reg.scala 19:20:@154.4]
  reg [31:0] _RAND_2;
  wire [15:0] _GEN_2; // @[Reg.scala 20:19:@155.4]
  reg [15:0] _T_266; // @[Reg.scala 19:20:@160.4]
  reg [31:0] _RAND_3;
  wire [15:0] _GEN_3; // @[Reg.scala 20:19:@161.4]
  wire [4:0] _T_267; // @[NV_NVDLA_CDP_REG_dual.scala 166:55:@165.4]
  reg [4:0] _T_270; // @[Reg.scala 19:20:@166.4]
  reg [31:0] _RAND_4;
  wire [4:0] _GEN_4; // @[Reg.scala 20:19:@167.4]
  reg [31:0] _T_274; // @[Reg.scala 19:20:@172.4]
  reg [31:0] _RAND_5;
  wire [31:0] _GEN_5; // @[Reg.scala 20:19:@173.4]
  reg [15:0] _T_278; // @[Reg.scala 19:20:@178.4]
  reg [31:0] _RAND_6;
  wire [15:0] _GEN_6; // @[Reg.scala 20:19:@179.4]
  wire [5:0] _T_279; // @[NV_NVDLA_CDP_REG_dual.scala 172:56:@183.4]
  reg [5:0] _T_282; // @[Reg.scala 19:20:@184.4]
  reg [31:0] _RAND_7;
  wire [5:0] _GEN_7; // @[Reg.scala 20:19:@185.4]
  reg [31:0] _T_286; // @[Reg.scala 19:20:@190.4]
  reg [31:0] _RAND_8;
  wire [31:0] _GEN_8; // @[Reg.scala 20:19:@191.4]
  reg [31:0] _T_290; // @[Reg.scala 19:20:@196.4]
  reg [31:0] _RAND_9;
  wire [31:0] _GEN_9; // @[Reg.scala 20:19:@197.4]
  wire  _T_291; // @[NV_NVDLA_CDP_REG_dual.scala 179:54:@201.4]
  reg  _T_294; // @[Reg.scala 19:20:@202.4]
  reg [31:0] _RAND_10;
  wire  _GEN_10; // @[Reg.scala 20:19:@203.4]
  reg [31:0] _T_298; // @[Reg.scala 19:20:@208.4]
  reg [31:0] _RAND_11;
  wire [31:0] _GEN_11; // @[Reg.scala 20:19:@209.4]
  reg [31:0] _T_302; // @[Reg.scala 19:20:@214.4]
  reg [31:0] _RAND_12;
  wire [31:0] _GEN_12; // @[Reg.scala 20:19:@215.4]
  wire  _T_303; // @[NV_NVDLA_CDP_REG_dual.scala 185:52:@219.4]
  reg  _T_306; // @[Reg.scala 19:20:@220.4]
  reg [31:0] _RAND_13;
  wire  _GEN_13; // @[Reg.scala 20:19:@221.4]
  reg  _T_310; // @[Reg.scala 19:20:@226.4]
  reg [31:0] _RAND_14;
  wire  _GEN_14; // @[Reg.scala 20:19:@227.4]
  reg [1:0] _T_314; // @[Reg.scala 19:20:@232.4]
  reg [31:0] _RAND_15;
  wire [1:0] _GEN_15; // @[Reg.scala 20:19:@233.4]
  reg  _T_318; // @[Reg.scala 19:20:@238.4]
  reg [31:0] _RAND_16;
  wire  _GEN_16; // @[Reg.scala 20:19:@239.4]
  reg  _T_322; // @[Reg.scala 19:20:@244.4]
  reg [31:0] _RAND_17;
  wire  _GEN_17; // @[Reg.scala 20:19:@245.4]
  reg  _T_326; // @[Reg.scala 19:20:@250.4]
  reg [31:0] _RAND_18;
  wire  _GEN_18; // @[Reg.scala 20:19:@251.4]
  assign _GEN_19 = {{20'd0}, reg_offset}; // @[NV_NVDLA_CDP_REG_dual.scala 58:49:@8.4]
  assign _T_78 = _GEN_19 == 32'hb8; // @[NV_NVDLA_CDP_REG_dual.scala 58:49:@8.4]
  assign nvdla_cdp_d_cya_0_wren = _T_78 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 58:73:@9.4]
  assign _T_80 = _GEN_19 == 32'h68; // @[NV_NVDLA_CDP_REG_dual.scala 59:57:@10.4]
  assign nvdla_cdp_d_data_format_0_wren = _T_80 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 59:81:@11.4]
  assign _T_82 = _GEN_19 == 32'h74; // @[NV_NVDLA_CDP_REG_dual.scala 60:58:@12.4]
  assign nvdla_cdp_d_datin_offset_0_wren = _T_82 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 60:82:@13.4]
  assign _T_84 = _GEN_19 == 32'h78; // @[NV_NVDLA_CDP_REG_dual.scala 61:57:@14.4]
  assign nvdla_cdp_d_datin_scale_0_wren = _T_84 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 61:81:@15.4]
  assign _T_86 = _GEN_19 == 32'h7c; // @[NV_NVDLA_CDP_REG_dual.scala 62:59:@16.4]
  assign nvdla_cdp_d_datin_shifter_0_wren = _T_86 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 62:83:@17.4]
  assign _T_88 = _GEN_19 == 32'h80; // @[NV_NVDLA_CDP_REG_dual.scala 63:59:@18.4]
  assign nvdla_cdp_d_datout_offset_0_wren = _T_88 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 63:83:@19.4]
  assign _T_90 = _GEN_19 == 32'h84; // @[NV_NVDLA_CDP_REG_dual.scala 64:58:@20.4]
  assign nvdla_cdp_d_datout_scale_0_wren = _T_90 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 64:82:@21.4]
  assign _T_92 = _GEN_19 == 32'h88; // @[NV_NVDLA_CDP_REG_dual.scala 65:60:@22.4]
  assign nvdla_cdp_d_datout_shifter_0_wren = _T_92 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 65:84:@23.4]
  assign _T_94 = _GEN_19 == 32'h54; // @[NV_NVDLA_CDP_REG_dual.scala 66:64:@24.4]
  assign nvdla_cdp_d_dst_base_addr_high_0_wren = _T_94 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 66:88:@25.4]
  assign _T_100 = _GEN_19 == 32'h60; // @[NV_NVDLA_CDP_REG_dual.scala 69:57:@30.4]
  assign nvdla_cdp_d_dst_dma_cfg_0_wren = _T_100 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 69:81:@31.4]
  assign _T_102 = _GEN_19 == 32'h58; // @[NV_NVDLA_CDP_REG_dual.scala 70:61:@32.4]
  assign nvdla_cdp_d_dst_line_stride_0_wren = _T_102 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 70:85:@33.4]
  assign _T_104 = _GEN_19 == 32'h5c; // @[NV_NVDLA_CDP_REG_dual.scala 71:64:@34.4]
  assign nvdla_cdp_d_dst_surface_stride_0_wren = _T_104 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 71:88:@35.4]
  assign _T_106 = _GEN_19 == 32'h4c; // @[NV_NVDLA_CDP_REG_dual.scala 72:57:@36.4]
  assign nvdla_cdp_d_func_bypass_0_wren = _T_106 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 72:81:@37.4]
  assign _T_110 = _GEN_19 == 32'h70; // @[NV_NVDLA_CDP_REG_dual.scala 74:53:@40.4]
  assign nvdla_cdp_d_lrn_cfg_0_wren = _T_110 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 74:77:@41.4]
  assign _T_112 = _GEN_19 == 32'h6c; // @[NV_NVDLA_CDP_REG_dual.scala 75:63:@42.4]
  assign nvdla_cdp_d_nan_flush_to_zero_0_wren = _T_112 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 75:87:@43.4]
  assign _T_118 = _GEN_19 == 32'h48; // @[NV_NVDLA_CDP_REG_dual.scala 78:55:@48.4]
  assign _T_122 = _GEN_19 == 32'h9c; // @[NV_NVDLA_CDP_REG_dual.scala 80:57:@52.4]
  assign nvdla_cdp_d_perf_enable_0_wren = _T_122 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 80:81:@53.4]
  assign _T_139 = {30'h0,input_data_type}; // @[Cat.scala 30:58:@67.4]
  assign _T_142 = {16'h0,datin_offset}; // @[Cat.scala 30:58:@68.4]
  assign _T_145 = {16'h0,datin_scale}; // @[Cat.scala 30:58:@69.4]
  assign _T_148 = {27'h0,datin_shifter}; // @[Cat.scala 30:58:@70.4]
  assign _T_152 = {16'h0,datout_scale}; // @[Cat.scala 30:58:@71.4]
  assign _T_155 = {26'h0,datout_shifter}; // @[Cat.scala 30:58:@72.4]
  assign _T_163 = {31'h0,dst_ram_type}; // @[Cat.scala 30:58:@74.4]
  assign _T_169 = {30'h0,mul_bypass,sqsum_bypass}; // @[Cat.scala 30:58:@76.4]
  assign _T_173 = {30'h0,normalz_len}; // @[Cat.scala 30:58:@77.4]
  assign _T_176 = {31'h0,nan_to_zero}; // @[Cat.scala 30:58:@78.4]
  assign _T_181 = {31'h0,op_en}; // @[Cat.scala 30:58:@79.4]
  assign _T_186 = {30'h0,lut_en,dma_en}; // @[Cat.scala 30:58:@81.4]
  assign _T_193 = 32'ha0 == _GEN_19; // @[Mux.scala 46:19:@82.4]
  assign _T_194 = _T_193 ? perf_write_stall : 32'h0; // @[Mux.scala 46:16:@83.4]
  assign _T_195 = 32'ha4 == _GEN_19; // @[Mux.scala 46:19:@84.4]
  assign _T_196 = _T_195 ? perf_lut_uflow : _T_194; // @[Mux.scala 46:16:@85.4]
  assign _T_197 = 32'ha8 == _GEN_19; // @[Mux.scala 46:19:@86.4]
  assign _T_198 = _T_197 ? perf_lut_oflow : _T_196; // @[Mux.scala 46:16:@87.4]
  assign _T_199 = 32'hb4 == _GEN_19; // @[Mux.scala 46:19:@88.4]
  assign _T_200 = _T_199 ? perf_lut_lo_hit : _T_198; // @[Mux.scala 46:16:@89.4]
  assign _T_201 = 32'hb0 == _GEN_19; // @[Mux.scala 46:19:@90.4]
  assign _T_202 = _T_201 ? perf_lut_le_hit : _T_200; // @[Mux.scala 46:16:@91.4]
  assign _T_203 = 32'hac == _GEN_19; // @[Mux.scala 46:19:@92.4]
  assign _T_204 = _T_203 ? perf_lut_hybrid : _T_202; // @[Mux.scala 46:16:@93.4]
  assign _T_205 = 32'h9c == _GEN_19; // @[Mux.scala 46:19:@94.4]
  assign _T_206 = _T_205 ? _T_186 : _T_204; // @[Mux.scala 46:16:@95.4]
  assign _T_207 = 32'h98 == _GEN_19; // @[Mux.scala 46:19:@96.4]
  assign _T_208 = _T_207 ? out_saturation : _T_206; // @[Mux.scala 46:16:@97.4]
  assign _T_209 = 32'h48 == _GEN_19; // @[Mux.scala 46:19:@98.4]
  assign _T_210 = _T_209 ? _T_181 : _T_208; // @[Mux.scala 46:16:@99.4]
  assign _T_211 = 32'h94 == _GEN_19; // @[Mux.scala 46:19:@100.4]
  assign _T_212 = _T_211 ? nan_output_num : _T_210; // @[Mux.scala 46:16:@101.4]
  assign _T_213 = 32'h8c == _GEN_19; // @[Mux.scala 46:19:@102.4]
  assign _T_214 = _T_213 ? nan_input_num : _T_212; // @[Mux.scala 46:16:@103.4]
  assign _T_215 = 32'h6c == _GEN_19; // @[Mux.scala 46:19:@104.4]
  assign _T_216 = _T_215 ? _T_176 : _T_214; // @[Mux.scala 46:16:@105.4]
  assign _T_217 = 32'h70 == _GEN_19; // @[Mux.scala 46:19:@106.4]
  assign _T_218 = _T_217 ? _T_173 : _T_216; // @[Mux.scala 46:16:@107.4]
  assign _T_219 = 32'h90 == _GEN_19; // @[Mux.scala 46:19:@108.4]
  assign _T_220 = _T_219 ? inf_input_num : _T_218; // @[Mux.scala 46:16:@109.4]
  assign _T_221 = 32'h4c == _GEN_19; // @[Mux.scala 46:19:@110.4]
  assign _T_222 = _T_221 ? _T_169 : _T_220; // @[Mux.scala 46:16:@111.4]
  assign _T_223 = 32'h5c == _GEN_19; // @[Mux.scala 46:19:@112.4]
  assign _T_224 = _T_223 ? dst_surface_stride : _T_222; // @[Mux.scala 46:16:@113.4]
  assign _T_225 = 32'h58 == _GEN_19; // @[Mux.scala 46:19:@114.4]
  assign _T_226 = _T_225 ? dst_line_stride : _T_224; // @[Mux.scala 46:16:@115.4]
  assign _T_227 = 32'h60 == _GEN_19; // @[Mux.scala 46:19:@116.4]
  assign _T_228 = _T_227 ? _T_163 : _T_226; // @[Mux.scala 46:16:@117.4]
  assign _T_229 = 32'h64 == _GEN_19; // @[Mux.scala 46:19:@118.4]
  assign _T_230 = _T_229 ? 32'h0 : _T_228; // @[Mux.scala 46:16:@119.4]
  assign _T_231 = 32'h50 == _GEN_19; // @[Mux.scala 46:19:@120.4]
  assign _T_232 = _T_231 ? dst_base_addr_low : _T_230; // @[Mux.scala 46:16:@121.4]
  assign _T_233 = 32'h54 == _GEN_19; // @[Mux.scala 46:19:@122.4]
  assign _T_234 = _T_233 ? dst_base_addr_high : _T_232; // @[Mux.scala 46:16:@123.4]
  assign _T_235 = 32'h88 == _GEN_19; // @[Mux.scala 46:19:@124.4]
  assign _T_236 = _T_235 ? _T_155 : _T_234; // @[Mux.scala 46:16:@125.4]
  assign _T_237 = 32'h84 == _GEN_19; // @[Mux.scala 46:19:@126.4]
  assign _T_238 = _T_237 ? _T_152 : _T_236; // @[Mux.scala 46:16:@127.4]
  assign _T_239 = 32'h80 == _GEN_19; // @[Mux.scala 46:19:@128.4]
  assign _T_240 = _T_239 ? datout_offset : _T_238; // @[Mux.scala 46:16:@129.4]
  assign _T_241 = 32'h7c == _GEN_19; // @[Mux.scala 46:19:@130.4]
  assign _T_242 = _T_241 ? _T_148 : _T_240; // @[Mux.scala 46:16:@131.4]
  assign _T_243 = 32'h78 == _GEN_19; // @[Mux.scala 46:19:@132.4]
  assign _T_244 = _T_243 ? _T_145 : _T_242; // @[Mux.scala 46:16:@133.4]
  assign _T_245 = 32'h74 == _GEN_19; // @[Mux.scala 46:19:@134.4]
  assign _T_246 = _T_245 ? _T_142 : _T_244; // @[Mux.scala 46:16:@135.4]
  assign _T_247 = 32'h68 == _GEN_19; // @[Mux.scala 46:19:@136.4]
  assign _T_248 = _T_247 ? _T_139 : _T_246; // @[Mux.scala 46:16:@137.4]
  assign _T_249 = 32'hb8 == _GEN_19; // @[Mux.scala 46:19:@138.4]
  assign _GEN_0 = nvdla_cdp_d_cya_0_wren ? reg_wr_data : _T_254; // @[Reg.scala 20:19:@143.4]
  assign _T_255 = reg_wr_data[1:0]; // @[NV_NVDLA_CDP_REG_dual.scala 160:57:@147.4]
  assign _GEN_1 = nvdla_cdp_d_data_format_0_wren ? _T_255 : _T_258; // @[Reg.scala 20:19:@149.4]
  assign _T_259 = reg_wr_data[15:0]; // @[NV_NVDLA_CDP_REG_dual.scala 162:54:@153.4]
  assign _GEN_2 = nvdla_cdp_d_datin_offset_0_wren ? _T_259 : _T_262; // @[Reg.scala 20:19:@155.4]
  assign _GEN_3 = nvdla_cdp_d_datin_scale_0_wren ? _T_259 : _T_266; // @[Reg.scala 20:19:@161.4]
  assign _T_267 = reg_wr_data[4:0]; // @[NV_NVDLA_CDP_REG_dual.scala 166:55:@165.4]
  assign _GEN_4 = nvdla_cdp_d_datin_shifter_0_wren ? _T_267 : _T_270; // @[Reg.scala 20:19:@167.4]
  assign _GEN_5 = nvdla_cdp_d_datout_offset_0_wren ? reg_wr_data : _T_274; // @[Reg.scala 20:19:@173.4]
  assign _GEN_6 = nvdla_cdp_d_datout_scale_0_wren ? _T_259 : _T_278; // @[Reg.scala 20:19:@179.4]
  assign _T_279 = reg_wr_data[5:0]; // @[NV_NVDLA_CDP_REG_dual.scala 172:56:@183.4]
  assign _GEN_7 = nvdla_cdp_d_datout_shifter_0_wren ? _T_279 : _T_282; // @[Reg.scala 20:19:@185.4]
  assign _GEN_8 = nvdla_cdp_d_dst_base_addr_high_0_wren ? reg_wr_data : _T_286; // @[Reg.scala 20:19:@191.4]
  assign _GEN_9 = nvdla_cdp_d_dst_base_addr_high_0_wren ? reg_wr_data : _T_290; // @[Reg.scala 20:19:@197.4]
  assign _T_291 = reg_wr_data[0]; // @[NV_NVDLA_CDP_REG_dual.scala 179:54:@201.4]
  assign _GEN_10 = nvdla_cdp_d_dst_dma_cfg_0_wren ? _T_291 : _T_294; // @[Reg.scala 20:19:@203.4]
  assign _GEN_11 = nvdla_cdp_d_dst_line_stride_0_wren ? reg_wr_data : _T_298; // @[Reg.scala 20:19:@209.4]
  assign _GEN_12 = nvdla_cdp_d_dst_surface_stride_0_wren ? reg_wr_data : _T_302; // @[Reg.scala 20:19:@215.4]
  assign _T_303 = reg_wr_data[1]; // @[NV_NVDLA_CDP_REG_dual.scala 185:52:@219.4]
  assign _GEN_13 = nvdla_cdp_d_func_bypass_0_wren ? _T_303 : _T_306; // @[Reg.scala 20:19:@221.4]
  assign _GEN_14 = nvdla_cdp_d_func_bypass_0_wren ? _T_291 : _T_310; // @[Reg.scala 20:19:@227.4]
  assign _GEN_15 = nvdla_cdp_d_lrn_cfg_0_wren ? _T_255 : _T_314; // @[Reg.scala 20:19:@233.4]
  assign _GEN_16 = nvdla_cdp_d_nan_flush_to_zero_0_wren ? _T_291 : _T_318; // @[Reg.scala 20:19:@239.4]
  assign _GEN_17 = nvdla_cdp_d_perf_enable_0_wren ? _T_291 : _T_322; // @[Reg.scala 20:19:@245.4]
  assign _GEN_18 = nvdla_cdp_d_perf_enable_0_wren ? _T_303 : _T_326; // @[Reg.scala 20:19:@251.4]
  assign reg_rd_data = _T_249 ? cya : _T_248; // @[NV_NVDLA_CDP_REG_dual.scala 93:20:@140.4]
  assign cya = _T_254; // @[NV_NVDLA_CDP_REG_dual.scala 158:18:@146.4]
  assign input_data_type = _T_258; // @[NV_NVDLA_CDP_REG_dual.scala 160:30:@152.4]
  assign datin_offset = _T_262; // @[NV_NVDLA_CDP_REG_dual.scala 162:27:@158.4]
  assign datin_scale = _T_266; // @[NV_NVDLA_CDP_REG_dual.scala 164:26:@164.4]
  assign datin_shifter = _T_270; // @[NV_NVDLA_CDP_REG_dual.scala 166:28:@170.4]
  assign datout_offset = _T_274; // @[NV_NVDLA_CDP_REG_dual.scala 168:28:@176.4]
  assign datout_scale = _T_278; // @[NV_NVDLA_CDP_REG_dual.scala 170:27:@182.4]
  assign datout_shifter = _T_282; // @[NV_NVDLA_CDP_REG_dual.scala 172:29:@188.4]
  assign dst_base_addr_high = _T_286; // @[NV_NVDLA_CDP_REG_dual.scala 174:33:@194.4]
  assign dst_base_addr_low = _T_290; // @[NV_NVDLA_CDP_REG_dual.scala 176:32:@200.4]
  assign dst_ram_type = _T_294; // @[NV_NVDLA_CDP_REG_dual.scala 179:27:@206.4]
  assign dst_line_stride = _T_298; // @[NV_NVDLA_CDP_REG_dual.scala 181:30:@212.4]
  assign dst_surface_stride = _T_302; // @[NV_NVDLA_CDP_REG_dual.scala 183:33:@218.4]
  assign mul_bypass = _T_306; // @[NV_NVDLA_CDP_REG_dual.scala 185:25:@224.4]
  assign sqsum_bypass = _T_310; // @[NV_NVDLA_CDP_REG_dual.scala 187:27:@230.4]
  assign normalz_len = _T_314; // @[NV_NVDLA_CDP_REG_dual.scala 190:26:@236.4]
  assign nan_to_zero = _T_318; // @[NV_NVDLA_CDP_REG_dual.scala 192:26:@242.4]
  assign dma_en = _T_322; // @[NV_NVDLA_CDP_REG_dual.scala 201:21:@248.4]
  assign lut_en = _T_326; // @[NV_NVDLA_CDP_REG_dual.scala 203:21:@254.4]
  assign op_en_trigger = _T_118 & reg_wr_en; // @[NV_NVDLA_CDP_REG_dual.scala 88:22:@66.4]
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
  _T_254 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_258 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_262 = _RAND_2[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_266 = _RAND_3[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_270 = _RAND_4[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_274 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_278 = _RAND_6[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_282 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_286 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_290 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_294 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_298 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_302 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_306 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_310 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_314 = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_318 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_322 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_326 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!nvdla_core_rstn) begin
      _T_254 <= 32'h0;
    end else begin
      if (nvdla_cdp_d_cya_0_wren) begin
        _T_254 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_258 <= 2'h0;
    end else begin
      if (nvdla_cdp_d_data_format_0_wren) begin
        _T_258 <= _T_255;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_262 <= 16'h0;
    end else begin
      if (nvdla_cdp_d_datin_offset_0_wren) begin
        _T_262 <= _T_259;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_266 <= 16'h0;
    end else begin
      if (nvdla_cdp_d_datin_scale_0_wren) begin
        _T_266 <= _T_259;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_270 <= 5'h0;
    end else begin
      if (nvdla_cdp_d_datin_shifter_0_wren) begin
        _T_270 <= _T_267;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_274 <= 32'h0;
    end else begin
      if (nvdla_cdp_d_datout_offset_0_wren) begin
        _T_274 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_278 <= 16'h0;
    end else begin
      if (nvdla_cdp_d_datout_scale_0_wren) begin
        _T_278 <= _T_259;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_282 <= 6'h0;
    end else begin
      if (nvdla_cdp_d_datout_shifter_0_wren) begin
        _T_282 <= _T_279;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_286 <= 32'h0;
    end else begin
      if (nvdla_cdp_d_dst_base_addr_high_0_wren) begin
        _T_286 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_290 <= 32'h0;
    end else begin
      if (nvdla_cdp_d_dst_base_addr_high_0_wren) begin
        _T_290 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_294 <= 1'h0;
    end else begin
      if (nvdla_cdp_d_dst_dma_cfg_0_wren) begin
        _T_294 <= _T_291;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_298 <= 32'h0;
    end else begin
      if (nvdla_cdp_d_dst_line_stride_0_wren) begin
        _T_298 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_302 <= 32'h0;
    end else begin
      if (nvdla_cdp_d_dst_surface_stride_0_wren) begin
        _T_302 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_306 <= 1'h0;
    end else begin
      if (nvdla_cdp_d_func_bypass_0_wren) begin
        _T_306 <= _T_303;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_310 <= 1'h0;
    end else begin
      if (nvdla_cdp_d_func_bypass_0_wren) begin
        _T_310 <= _T_291;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_314 <= 2'h0;
    end else begin
      if (nvdla_cdp_d_lrn_cfg_0_wren) begin
        _T_314 <= _T_255;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_318 <= 1'h0;
    end else begin
      if (nvdla_cdp_d_nan_flush_to_zero_0_wren) begin
        _T_318 <= _T_291;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_322 <= 1'h0;
    end else begin
      if (nvdla_cdp_d_perf_enable_0_wren) begin
        _T_322 <= _T_291;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_326 <= 1'h0;
    end else begin
      if (nvdla_cdp_d_perf_enable_0_wren) begin
        _T_326 <= _T_303;
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
// File Name: NV_NVDLA_CDP_REG_dual.v
module NV_NVDLA_CDP_REG_dual (
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
  ,input_data_type
  ,datin_offset
  ,datin_scale
  ,datin_shifter
  ,datout_offset
  ,datout_scale
  ,datout_shifter
  ,dst_base_addr_high
  ,dst_base_addr_low
  ,dst_ram_type
  ,dst_line_stride
  ,dst_surface_stride
  ,mul_bypass
  ,sqsum_bypass
  ,normalz_len
  ,nan_to_zero
  ,op_en_trigger
  ,dma_en
  ,lut_en
  ,inf_input_num
  ,nan_input_num
  ,nan_output_num
  ,op_en
  ,out_saturation
  ,perf_lut_hybrid
  ,perf_lut_le_hit
  ,perf_lut_lo_hit
  ,perf_lut_oflow
  ,perf_lut_uflow
  ,perf_write_stall
  );
wire dst_compression_en;
wire [31:0] nvdla_cdp_d_cya_0_out;
wire [31:0] nvdla_cdp_d_data_format_0_out;
wire [31:0] nvdla_cdp_d_datin_offset_0_out;
wire [31:0] nvdla_cdp_d_datin_scale_0_out;
wire [31:0] nvdla_cdp_d_datin_shifter_0_out;
wire [31:0] nvdla_cdp_d_datout_offset_0_out;
wire [31:0] nvdla_cdp_d_datout_scale_0_out;
wire [31:0] nvdla_cdp_d_datout_shifter_0_out;
wire [31:0] nvdla_cdp_d_dst_base_addr_high_0_out;
wire [31:0] nvdla_cdp_d_dst_base_addr_low_0_out;
wire [31:0] nvdla_cdp_d_dst_compression_en_0_out;
wire [31:0] nvdla_cdp_d_dst_dma_cfg_0_out;
wire [31:0] nvdla_cdp_d_dst_line_stride_0_out;
wire [31:0] nvdla_cdp_d_dst_surface_stride_0_out;
wire [31:0] nvdla_cdp_d_func_bypass_0_out;
wire [31:0] nvdla_cdp_d_inf_input_num_0_out;
wire [31:0] nvdla_cdp_d_lrn_cfg_0_out;
wire [31:0] nvdla_cdp_d_nan_flush_to_zero_0_out;
wire [31:0] nvdla_cdp_d_nan_input_num_0_out;
wire [31:0] nvdla_cdp_d_nan_output_num_0_out;
wire [31:0] nvdla_cdp_d_op_enable_0_out;
wire [31:0] nvdla_cdp_d_out_saturation_0_out;
wire [31:0] nvdla_cdp_d_perf_enable_0_out;
wire [31:0] nvdla_cdp_d_perf_lut_hybrid_0_out;
wire [31:0] nvdla_cdp_d_perf_lut_le_hit_0_out;
wire [31:0] nvdla_cdp_d_perf_lut_lo_hit_0_out;
wire [31:0] nvdla_cdp_d_perf_lut_oflow_0_out;
wire [31:0] nvdla_cdp_d_perf_lut_uflow_0_out;
wire [31:0] nvdla_cdp_d_perf_write_stall_0_out;
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
output [31:0] cya;
output [1:0] input_data_type;
output [15:0] datin_offset;
output [15:0] datin_scale;
output [4:0] datin_shifter;
output [31:0] datout_offset;
output [15:0] datout_scale;
output [5:0] datout_shifter;
output [31:0] dst_base_addr_high;
output [31:0] dst_base_addr_low;
output dst_ram_type;
output [31:0] dst_line_stride;
output [31:0] dst_surface_stride;
output mul_bypass;
output sqsum_bypass;
output [1:0] normalz_len;
output nan_to_zero;
output op_en_trigger;
output dma_en;
output lut_en;
// Read-only register inputs
input [31:0] inf_input_num;
input [31:0] nan_input_num;
input [31:0] nan_output_num;
input op_en;
input [31:0] out_saturation;
input [31:0] perf_lut_hybrid;
input [31:0] perf_lut_le_hit;
input [31:0] perf_lut_lo_hit;
input [31:0] perf_lut_oflow;
input [31:0] perf_lut_uflow;
input [31:0] perf_write_stall;
// wr_mask register inputs
// rstn register inputs
// leda FM_2_23 off
reg arreggen_abort_on_invalid_wr;
reg arreggen_abort_on_rowr;
reg arreggen_dump;
// leda FM_2_23 on
reg [31:0] cya;
reg [15:0] datin_offset;
reg [15:0] datin_scale;
reg [4:0] datin_shifter;
reg [31:0] datout_offset;
reg [15:0] datout_scale;
reg [5:0] datout_shifter;
reg dma_en;
reg [31:0] dst_base_addr_high;
reg [31:0] dst_base_addr_low;
reg [31:0] dst_line_stride;
reg dst_ram_type;
reg [31:0] dst_surface_stride;
reg [1:0] input_data_type;
reg lut_en;
reg mul_bypass;
reg nan_to_zero;
reg [1:0] normalz_len;
reg [31:0] reg_rd_data;
reg sqsum_bypass;
assign reg_offset_wr = {20'b0 , reg_offset};
// SCR signals
// Address decode
wire nvdla_cdp_d_cya_0_wren = (reg_offset_wr == (32'hf0b8 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_data_format_0_wren = (reg_offset_wr == (32'hf068 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_datin_offset_0_wren = (reg_offset_wr == (32'hf074 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_datin_scale_0_wren = (reg_offset_wr == (32'hf078 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_datin_shifter_0_wren = (reg_offset_wr == (32'hf07c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_datout_offset_0_wren = (reg_offset_wr == (32'hf080 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_datout_scale_0_wren = (reg_offset_wr == (32'hf084 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_datout_shifter_0_wren = (reg_offset_wr == (32'hf088 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_dst_base_addr_high_0_wren = (reg_offset_wr == (32'hf054 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_dst_base_addr_low_0_wren = (reg_offset_wr == (32'hf050 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_dst_compression_en_0_wren = (reg_offset_wr == (32'hf064 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_dst_dma_cfg_0_wren = (reg_offset_wr == (32'hf060 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_dst_line_stride_0_wren = (reg_offset_wr == (32'hf058 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_dst_surface_stride_0_wren = (reg_offset_wr == (32'hf05c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_func_bypass_0_wren = (reg_offset_wr == (32'hf04c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_inf_input_num_0_wren = (reg_offset_wr == (32'hf090 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_lrn_cfg_0_wren = (reg_offset_wr == (32'hf070 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_nan_flush_to_zero_0_wren = (reg_offset_wr == (32'hf06c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_nan_input_num_0_wren = (reg_offset_wr == (32'hf08c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_nan_output_num_0_wren = (reg_offset_wr == (32'hf094 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_op_enable_0_wren = (reg_offset_wr == (32'hf048 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_out_saturation_0_wren = (reg_offset_wr == (32'hf098 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_perf_enable_0_wren = (reg_offset_wr == (32'hf09c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_perf_lut_hybrid_0_wren = (reg_offset_wr == (32'hf0ac & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_perf_lut_le_hit_0_wren = (reg_offset_wr == (32'hf0b0 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_perf_lut_lo_hit_0_wren = (reg_offset_wr == (32'hf0b4 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_perf_lut_oflow_0_wren = (reg_offset_wr == (32'hf0a8 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_perf_lut_uflow_0_wren = (reg_offset_wr == (32'hf0a4 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdp_d_perf_write_stall_0_wren = (reg_offset_wr == (32'hf0a0 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
assign dst_compression_en = 1'h0;
assign nvdla_cdp_d_cya_0_out[31:0] = { cya };
assign nvdla_cdp_d_data_format_0_out[31:0] = { 30'b0, input_data_type };
assign nvdla_cdp_d_datin_offset_0_out[31:0] = { 16'b0, datin_offset };
assign nvdla_cdp_d_datin_scale_0_out[31:0] = { 16'b0, datin_scale };
assign nvdla_cdp_d_datin_shifter_0_out[31:0] = { 27'b0, datin_shifter };
assign nvdla_cdp_d_datout_offset_0_out[31:0] = { datout_offset };
assign nvdla_cdp_d_datout_scale_0_out[31:0] = { 16'b0, datout_scale };
assign nvdla_cdp_d_datout_shifter_0_out[31:0] = { 26'b0, datout_shifter };
assign nvdla_cdp_d_dst_base_addr_high_0_out[31:0] = { dst_base_addr_high };
assign nvdla_cdp_d_dst_base_addr_low_0_out[31:0] = { dst_base_addr_low };
assign nvdla_cdp_d_dst_compression_en_0_out[31:0] = { 31'b0, dst_compression_en };
assign nvdla_cdp_d_dst_dma_cfg_0_out[31:0] = { 31'b0, dst_ram_type };
assign nvdla_cdp_d_dst_line_stride_0_out[31:0] = { dst_line_stride };
assign nvdla_cdp_d_dst_surface_stride_0_out[31:0] = { dst_surface_stride };
assign nvdla_cdp_d_func_bypass_0_out[31:0] = { 30'b0, mul_bypass, sqsum_bypass };
assign nvdla_cdp_d_inf_input_num_0_out[31:0] = { inf_input_num };
assign nvdla_cdp_d_lrn_cfg_0_out[31:0] = { 30'b0, normalz_len };
assign nvdla_cdp_d_nan_flush_to_zero_0_out[31:0] = { 31'b0, nan_to_zero };
assign nvdla_cdp_d_nan_input_num_0_out[31:0] = { nan_input_num };
assign nvdla_cdp_d_nan_output_num_0_out[31:0] = { nan_output_num };
assign nvdla_cdp_d_op_enable_0_out[31:0] = { 31'b0, op_en };
assign nvdla_cdp_d_out_saturation_0_out[31:0] = { out_saturation };
assign nvdla_cdp_d_perf_enable_0_out[31:0] = { 30'b0, lut_en, dma_en };
assign nvdla_cdp_d_perf_lut_hybrid_0_out[31:0] = { perf_lut_hybrid };
assign nvdla_cdp_d_perf_lut_le_hit_0_out[31:0] = { perf_lut_le_hit };
assign nvdla_cdp_d_perf_lut_lo_hit_0_out[31:0] = { perf_lut_lo_hit };
assign nvdla_cdp_d_perf_lut_oflow_0_out[31:0] = { perf_lut_oflow };
assign nvdla_cdp_d_perf_lut_uflow_0_out[31:0] = { perf_lut_uflow };
assign nvdla_cdp_d_perf_write_stall_0_out[31:0] = { perf_write_stall };
assign op_en_trigger = nvdla_cdp_d_op_enable_0_wren; //(W563)
assign reg_offset_rd_int = reg_offset;
// Output mux
//spyglass disable_block W338, W263
always @(
  reg_offset_rd_int
  or nvdla_cdp_d_cya_0_out
  or nvdla_cdp_d_data_format_0_out
  or nvdla_cdp_d_datin_offset_0_out
  or nvdla_cdp_d_datin_scale_0_out
  or nvdla_cdp_d_datin_shifter_0_out
  or nvdla_cdp_d_datout_offset_0_out
  or nvdla_cdp_d_datout_scale_0_out
  or nvdla_cdp_d_datout_shifter_0_out
  or nvdla_cdp_d_dst_base_addr_high_0_out
  or nvdla_cdp_d_dst_base_addr_low_0_out
  or nvdla_cdp_d_dst_compression_en_0_out
  or nvdla_cdp_d_dst_dma_cfg_0_out
  or nvdla_cdp_d_dst_line_stride_0_out
  or nvdla_cdp_d_dst_surface_stride_0_out
  or nvdla_cdp_d_func_bypass_0_out
  or nvdla_cdp_d_inf_input_num_0_out
  or nvdla_cdp_d_lrn_cfg_0_out
  or nvdla_cdp_d_nan_flush_to_zero_0_out
  or nvdla_cdp_d_nan_input_num_0_out
  or nvdla_cdp_d_nan_output_num_0_out
  or nvdla_cdp_d_op_enable_0_out
  or nvdla_cdp_d_out_saturation_0_out
  or nvdla_cdp_d_perf_enable_0_out
  or nvdla_cdp_d_perf_lut_hybrid_0_out
  or nvdla_cdp_d_perf_lut_le_hit_0_out
  or nvdla_cdp_d_perf_lut_lo_hit_0_out
  or nvdla_cdp_d_perf_lut_oflow_0_out
  or nvdla_cdp_d_perf_lut_uflow_0_out
  or nvdla_cdp_d_perf_write_stall_0_out
  ) begin
  case (reg_offset_rd_int)
     (32'hf0b8 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_cya_0_out ;
                            end
     (32'hf068 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_data_format_0_out ;
                            end
     (32'hf074 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_datin_offset_0_out ;
                            end
     (32'hf078 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_datin_scale_0_out ;
                            end
     (32'hf07c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_datin_shifter_0_out ;
                            end
     (32'hf080 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_datout_offset_0_out ;
                            end
     (32'hf084 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_datout_scale_0_out ;
                            end
     (32'hf088 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_datout_shifter_0_out ;
                            end
     (32'hf054 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_dst_base_addr_high_0_out ;
                            end
     (32'hf050 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_dst_base_addr_low_0_out ;
                            end
     (32'hf064 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_dst_compression_en_0_out ;
                            end
     (32'hf060 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_dst_dma_cfg_0_out ;
                            end
     (32'hf058 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_dst_line_stride_0_out ;
                            end
     (32'hf05c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_dst_surface_stride_0_out ;
                            end
     (32'hf04c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_func_bypass_0_out ;
                            end
     (32'hf090 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_inf_input_num_0_out ;
                            end
     (32'hf070 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_lrn_cfg_0_out ;
                            end
     (32'hf06c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_nan_flush_to_zero_0_out ;
                            end
     (32'hf08c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_nan_input_num_0_out ;
                            end
     (32'hf094 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_nan_output_num_0_out ;
                            end
     (32'hf048 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_op_enable_0_out ;
                            end
     (32'hf098 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_out_saturation_0_out ;
                            end
     (32'hf09c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_perf_enable_0_out ;
                            end
     (32'hf0ac & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_perf_lut_hybrid_0_out ;
                            end
     (32'hf0b0 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_perf_lut_le_hit_0_out ;
                            end
     (32'hf0b4 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_perf_lut_lo_hit_0_out ;
                            end
     (32'hf0a8 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_perf_lut_oflow_0_out ;
                            end
     (32'hf0a4 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_perf_lut_uflow_0_out ;
                            end
     (32'hf0a0 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdp_d_perf_write_stall_0_out ;
                            end
    default: reg_rd_data = {32{1'b0}};
  endcase
end
//spyglass enable_block W338, W263
// spyglass disable_block STARC-2.10.1.6, NoConstWithXZ, W443
// Register flop declarations
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    cya[31:0] <= 32'b00000000000000000000000000000000;
    input_data_type[1:0] <= 2'b01;
    datin_offset[15:0] <= 16'b0000000000000000;
    datin_scale[15:0] <= 16'b0000000000000001;
    datin_shifter[4:0] <= 5'b00000;
    datout_offset[31:0] <= 32'b00000000000000000000000000000000;
    datout_scale[15:0] <= 16'b0000000000000001;
    datout_shifter[5:0] <= 6'b000000;
    dst_base_addr_high[31:0] <= 32'b00000000000000000000000000000000;
    dst_base_addr_low[31:0] <= 32'b00000000000000000000000000000000;
    dst_ram_type <= 1'b0;
    dst_line_stride[31:0] <= 32'b00000000000000000000000000000000;
    dst_surface_stride[31:0] <= 32'b00000000000000000000000000000000;
    mul_bypass <= 1'b0;
    sqsum_bypass <= 1'b0;
    normalz_len[1:0] <= 2'b00;
    nan_to_zero <= 1'b0;
    dma_en <= 1'b0;
    lut_en <= 1'b0;
  end else begin
// Register: NVDLA_CDP_D_CYA_0 Field: cya
  if (nvdla_cdp_d_cya_0_wren) begin
    cya[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_D_DATA_FORMAT_0 Field: input_data_type
  if (nvdla_cdp_d_data_format_0_wren) begin
    input_data_type[1:0] <= reg_wr_data[1:0];
  end
// Register: NVDLA_CDP_D_DATIN_OFFSET_0 Field: datin_offset
  if (nvdla_cdp_d_datin_offset_0_wren) begin
    datin_offset[15:0] <= reg_wr_data[15:0];
  end
// Register: NVDLA_CDP_D_DATIN_SCALE_0 Field: datin_scale
  if (nvdla_cdp_d_datin_scale_0_wren) begin
    datin_scale[15:0] <= reg_wr_data[15:0];
  end
// Register: NVDLA_CDP_D_DATIN_SHIFTER_0 Field: datin_shifter
  if (nvdla_cdp_d_datin_shifter_0_wren) begin
    datin_shifter[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CDP_D_DATOUT_OFFSET_0 Field: datout_offset
  if (nvdla_cdp_d_datout_offset_0_wren) begin
    datout_offset[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_D_DATOUT_SCALE_0 Field: datout_scale
  if (nvdla_cdp_d_datout_scale_0_wren) begin
    datout_scale[15:0] <= reg_wr_data[15:0];
  end
// Register: NVDLA_CDP_D_DATOUT_SHIFTER_0 Field: datout_shifter
  if (nvdla_cdp_d_datout_shifter_0_wren) begin
    datout_shifter[5:0] <= reg_wr_data[5:0];
  end
// Register: NVDLA_CDP_D_DST_BASE_ADDR_HIGH_0 Field: dst_base_addr_high
  if (nvdla_cdp_d_dst_base_addr_high_0_wren) begin
    dst_base_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_D_DST_BASE_ADDR_LOW_0 Field: dst_base_addr_low
  if (nvdla_cdp_d_dst_base_addr_low_0_wren) begin
    dst_base_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Not generating flops for constant field NVDLA_CDP_D_DST_COMPRESSION_EN_0::dst_compression_en
// Register: NVDLA_CDP_D_DST_DMA_CFG_0 Field: dst_ram_type
  if (nvdla_cdp_d_dst_dma_cfg_0_wren) begin
    dst_ram_type <= reg_wr_data[0];
  end
// Register: NVDLA_CDP_D_DST_LINE_STRIDE_0 Field: dst_line_stride
  if (nvdla_cdp_d_dst_line_stride_0_wren) begin
    dst_line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_D_DST_SURFACE_STRIDE_0 Field: dst_surface_stride
  if (nvdla_cdp_d_dst_surface_stride_0_wren) begin
    dst_surface_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDP_D_FUNC_BYPASS_0 Field: mul_bypass
  if (nvdla_cdp_d_func_bypass_0_wren) begin
    mul_bypass <= reg_wr_data[1];
  end
// Register: NVDLA_CDP_D_FUNC_BYPASS_0 Field: sqsum_bypass
  if (nvdla_cdp_d_func_bypass_0_wren) begin
    sqsum_bypass <= reg_wr_data[0];
  end
// Not generating flops for read-only field NVDLA_CDP_D_INF_INPUT_NUM_0::inf_input_num
// Register: NVDLA_CDP_D_LRN_CFG_0 Field: normalz_len
  if (nvdla_cdp_d_lrn_cfg_0_wren) begin
    normalz_len[1:0] <= reg_wr_data[1:0];
  end
// Register: NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0 Field: nan_to_zero
  if (nvdla_cdp_d_nan_flush_to_zero_0_wren) begin
    nan_to_zero <= reg_wr_data[0];
  end
// Not generating flops for read-only field NVDLA_CDP_D_NAN_INPUT_NUM_0::nan_input_num
// Not generating flops for read-only field NVDLA_CDP_D_NAN_OUTPUT_NUM_0::nan_output_num
// Not generating flops for field NVDLA_CDP_D_OP_ENABLE_0::op_en (to be implemented outside)
// Not generating flops for read-only field NVDLA_CDP_D_OUT_SATURATION_0::out_saturation
// Register: NVDLA_CDP_D_PERF_ENABLE_0 Field: dma_en
  if (nvdla_cdp_d_perf_enable_0_wren) begin
    dma_en <= reg_wr_data[0];
  end
// Register: NVDLA_CDP_D_PERF_ENABLE_0 Field: lut_en
  if (nvdla_cdp_d_perf_enable_0_wren) begin
    lut_en <= reg_wr_data[1];
  end
// Not generating flops for read-only field NVDLA_CDP_D_PERF_LUT_HYBRID_0::perf_lut_hybrid
// Not generating flops for read-only field NVDLA_CDP_D_PERF_LUT_LE_HIT_0::perf_lut_le_hit
// Not generating flops for read-only field NVDLA_CDP_D_PERF_LUT_LO_HIT_0::perf_lut_lo_hit
// Not generating flops for read-only field NVDLA_CDP_D_PERF_LUT_OFLOW_0::perf_lut_oflow
// Not generating flops for read-only field NVDLA_CDP_D_PERF_LUT_UFLOW_0::perf_lut_uflow
// Not generating flops for read-only field NVDLA_CDP_D_PERF_WRITE_STALL_0::perf_write_stall
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
      (32'hf0b8 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_CYA_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_cya_0_out, nvdla_cdp_d_cya_0_out);
      (32'hf068 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DATA_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_data_format_0_out, nvdla_cdp_d_data_format_0_out);
      (32'hf074 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DATIN_OFFSET_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_datin_offset_0_out, nvdla_cdp_d_datin_offset_0_out);
      (32'hf078 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DATIN_SCALE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_datin_scale_0_out, nvdla_cdp_d_datin_scale_0_out);
      (32'hf07c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DATIN_SHIFTER_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_datin_shifter_0_out, nvdla_cdp_d_datin_shifter_0_out);
      (32'hf080 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DATOUT_OFFSET_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_datout_offset_0_out, nvdla_cdp_d_datout_offset_0_out);
      (32'hf084 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DATOUT_SCALE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_datout_scale_0_out, nvdla_cdp_d_datout_scale_0_out);
      (32'hf088 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DATOUT_SHIFTER_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_datout_shifter_0_out, nvdla_cdp_d_datout_shifter_0_out);
      (32'hf054 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DST_BASE_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_dst_base_addr_high_0_out, nvdla_cdp_d_dst_base_addr_high_0_out);
      (32'hf050 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DST_BASE_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_dst_base_addr_low_0_out, nvdla_cdp_d_dst_base_addr_low_0_out);
      (32'hf064 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_DST_COMPRESSION_EN_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf060 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DST_DMA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_dst_dma_cfg_0_out, nvdla_cdp_d_dst_dma_cfg_0_out);
      (32'hf058 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DST_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_dst_line_stride_0_out, nvdla_cdp_d_dst_line_stride_0_out);
      (32'hf05c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_DST_SURFACE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_dst_surface_stride_0_out, nvdla_cdp_d_dst_surface_stride_0_out);
      (32'hf04c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_FUNC_BYPASS_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_func_bypass_0_out, nvdla_cdp_d_func_bypass_0_out);
      (32'hf090 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_INF_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf070 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_LRN_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_lrn_cfg_0_out, nvdla_cdp_d_lrn_cfg_0_out);
      (32'hf06c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_nan_flush_to_zero_0_out, nvdla_cdp_d_nan_flush_to_zero_0_out);
      (32'hf08c & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_NAN_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf094 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_NAN_OUTPUT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf048 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_OP_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_op_enable_0_out, nvdla_cdp_d_op_enable_0_out);
      (32'hf098 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_OUT_SATURATION_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf09c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDP_D_PERF_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdp_d_perf_enable_0_out, nvdla_cdp_d_perf_enable_0_out);
      (32'hf0ac & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_PERF_LUT_HYBRID_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf0b0 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_PERF_LUT_LE_HIT_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf0b4 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_PERF_LUT_LO_HIT_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf0a8 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_PERF_LUT_OFLOW_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf0a4 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_PERF_LUT_UFLOW_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hf0a0 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDP_D_PERF_WRITE_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      default: begin
          if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
          if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
        end
    endcase
  end
end
// VCS coverage on
// synopsys translate_on
endmodule // NV_NVDLA_CDP_REG_dual