module NV_soDLA_CACC_delivery_ctrl_for_check( // @[:@3.2]
  input           clock, // @[:@4.4]
  input           reset, // @[:@5.4]
  input           io_nvdla_core_clk, // @[:@6.4]
  input           io_nvdla_core_rstn, // @[:@6.4]
  input           io_dbuf_rd_ready, // @[:@6.4]
  output          io_dbuf_rd_addr_valid, // @[:@6.4]
  output [5:0]    io_dbuf_rd_addr_bits, // @[:@6.4]
  output          io_dbuf_rd_layer_end, // @[:@6.4]
  output          io_dbuf_wr_addr_valid, // @[:@6.4]
  output [5:0]    io_dbuf_wr_addr_bits, // @[:@6.4]
  output [1087:0] io_dbuf_wr_data, // @[:@6.4]
  output          io_dp2reg_done, // @[:@6.4]
  input  [1023:0] io_dlv_data, // @[:@6.4]
  input           io_dlv_mask, // @[:@6.4]
  input  [1:0]    io_dlv_pd, // @[:@6.4]
  input           io_dlv_valid, // @[:@6.4]
  input           io_wait_for_op_en, // @[:@6.4]
  input           io_reg2dp_op_en, // @[:@6.4]
  input           io_reg2dp_conv_mode, // @[:@6.4]
  input  [1:0]    io_reg2dp_proc_precision, // @[:@6.4]
  input  [12:0]   io_reg2dp_dataout_width, // @[:@6.4]
  input  [12:0]   io_reg2dp_dataout_height, // @[:@6.4]
  input  [12:0]   io_reg2dp_dataout_channel, // @[:@6.4]
  input  [26:0]   io_reg2dp_dataout_addr, // @[:@6.4]
  input           io_reg2dp_line_packed, // @[:@6.4]
  input           io_reg2dp_surf_packed, // @[:@6.4]
  input  [4:0]    io_reg2dp_batches, // @[:@6.4]
  input  [23:0]   io_reg2dp_line_stride, // @[:@6.4]
  input  [23:0]   io_reg2dp_surf_stride // @[:@6.4]
);
  wire  _T_60; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 70:38:@8.4]
  wire  dlv_stripe_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 75:31:@9.4]
  wire  dlv_layer_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 76:30:@10.4]
  reg [5:0] dbuf_wr_addr_pre; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 81:31:@11.4]
  reg [31:0] _RAND_0;
  reg [5:0] dbuf_wr_addr_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 82:31:@12.4]
  reg [31:0] _RAND_1;
  reg  dbuf_wr_en_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 83:29:@13.4]
  reg [31:0] _RAND_2;
  reg [1023:0] dbuf_wr_data_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 84:27:@14.4]
  reg [1023:0] _RAND_3;
  wire [6:0] _T_69; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 86:39:@15.4]
  wire [5:0] dbuf_wr_addr_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 86:39:@16.4]
  wire [5:0] _GEN_0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 89:19:@18.4]
  wire [5:0] _GEN_1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 89:19:@18.4]
  reg  dlv_data_add_valid; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 105:71:@27.4]
  reg [31:0] _RAND_4;
  reg  dlv_data_add_size; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 107:70:@29.4]
  reg [31:0] _RAND_5;
  wire  _GEN_3; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 114:30:@33.4]
  reg [63:0] dlv_data_avl; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 124:27:@37.4]
  reg [63:0] _RAND_6;
  wire  dlv_data_avl_add; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 126:27:@38.4]
  wire  dlv_pop; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 138:34:@50.4]
  wire [63:0] _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:35:@40.4]
  wire [64:0] _T_84; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:35:@40.4]
  wire [63:0] _T_85; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:35:@41.4]
  wire [63:0] _GEN_9; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@42.4]
  wire [64:0] _T_86; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@42.4]
  wire [64:0] _T_87; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@43.4]
  wire [63:0] dlv_data_avl_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@44.4]
  wire  _T_88; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 131:25:@45.4]
  wire [63:0] _GEN_4; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 131:46:@46.4]
  reg [5:0] dbuf_rd_addr_cnt; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 136:31:@49.4]
  reg [31:0] _RAND_7;
  wire [6:0] _T_93; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 139:45:@52.4]
  wire [5:0] dbuf_rd_addr_cnt_inc; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 139:45:@53.4]
  wire  _T_95; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:33:@54.4]
  wire  dbuf_empty; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:18:@55.4]
  wire [5:0] _GEN_5; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 144:14:@59.4]
  wire  _T_97; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 149:34:@62.4]
  wire  dp2reg_done_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 149:51:@63.4]
  reg  _T_100; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 150:26:@64.4]
  reg [31:0] _RAND_8;
  reg  dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 153:31:@67.4]
  reg [31:0] _RAND_9;
  reg  dlv_end_tag1_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 154:31:@68.4]
  reg [31:0] _RAND_10;
  reg [5:0] dlv_end_tag0_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 155:32:@69.4]
  reg [31:0] _RAND_11;
  reg [5:0] dlv_end_tag1_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 156:32:@70.4]
  reg [31:0] _RAND_12;
  wire  _T_110; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 160:51:@73.4]
  wire  _T_111; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 160:27:@74.4]
  wire  dlv_end_clr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 160:74:@75.4]
  wire  _T_112; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:47:@76.4]
  wire  _T_115; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:73:@77.4]
  wire  dlv_end_tag0_vld_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:29:@78.4]
  wire  _T_116; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:47:@79.4]
  wire  _T_119; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:73:@80.4]
  wire  dlv_end_tag1_vld_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:29:@81.4]
  wire  _T_120; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:38:@82.4]
  wire  _T_121; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:36:@83.4]
  wire  _T_122; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:72:@84.4]
  wire  _T_123; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:57:@85.4]
  wire  _T_124; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:101:@86.4]
  wire  dlv_end_tag0_en; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:87:@87.4]
  wire  _T_125; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:36:@88.4]
  wire  _T_126; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:57:@89.4]
  wire  dlv_end_tag1_en; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:55:@90.4]
  wire [5:0] dlv_end_tag0_addr_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:30:@91.4]
  wire [5:0] _GEN_6; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 171:22:@95.4]
  wire [5:0] _GEN_7; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 174:22:@98.4]
  assign _T_60 = io_nvdla_core_rstn == 1'h0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 70:38:@8.4]
  assign dlv_stripe_end = io_dlv_pd[0]; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 75:31:@9.4]
  assign dlv_layer_end = io_dlv_pd[1]; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 76:30:@10.4]
  assign _T_69 = dbuf_wr_addr_pre + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 86:39:@15.4]
  assign dbuf_wr_addr_w = dbuf_wr_addr_pre + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 86:39:@16.4]
  assign _GEN_0 = io_dlv_valid ? dbuf_wr_addr_w : dbuf_wr_addr_pre; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 89:19:@18.4]
  assign _GEN_1 = io_dlv_valid ? dbuf_wr_addr_pre : dbuf_wr_addr_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 89:19:@18.4]
  assign _GEN_3 = io_dlv_valid ? 1'h1 : dlv_data_add_size; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 114:30:@33.4]
  assign dlv_data_avl_add = dlv_data_add_valid ? dlv_data_add_size : 1'h0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 126:27:@38.4]
  assign dlv_pop = io_dbuf_rd_addr_valid & io_dbuf_rd_ready; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 138:34:@50.4]
  assign _GEN_8 = {{63'd0}, dlv_data_avl_add}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:35:@40.4]
  assign _T_84 = dlv_data_avl + _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:35:@40.4]
  assign _T_85 = dlv_data_avl + _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:35:@41.4]
  assign _GEN_9 = {{63'd0}, dlv_pop}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@42.4]
  assign _T_86 = _T_85 - _GEN_9; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@42.4]
  assign _T_87 = $unsigned(_T_86); // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@43.4]
  assign dlv_data_avl_w = _T_87[63:0]; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 129:54:@44.4]
  assign _T_88 = dlv_data_add_valid | dlv_pop; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 131:25:@45.4]
  assign _GEN_4 = _T_88 ? dlv_data_avl_w : dlv_data_avl; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 131:46:@46.4]
  assign _T_93 = dbuf_rd_addr_cnt + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 139:45:@52.4]
  assign dbuf_rd_addr_cnt_inc = dbuf_rd_addr_cnt + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 139:45:@53.4]
  assign _T_95 = dlv_data_avl != 64'h0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:33:@54.4]
  assign dbuf_empty = ~ _T_95; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:18:@55.4]
  assign _GEN_5 = dlv_pop ? dbuf_rd_addr_cnt_inc : dbuf_rd_addr_cnt; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 144:14:@59.4]
  assign _T_97 = io_dlv_valid & dlv_stripe_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 149:34:@62.4]
  assign dp2reg_done_w = _T_97 & dlv_layer_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 149:51:@63.4]
  assign _T_110 = io_dbuf_rd_addr_bits == dlv_end_tag0_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 160:51:@73.4]
  assign _T_111 = dlv_pop & _T_110; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 160:27:@74.4]
  assign dlv_end_clr = _T_111 & dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 160:74:@75.4]
  assign _T_112 = dlv_end_tag1_vld | dp2reg_done_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:47:@76.4]
  assign _T_115 = dlv_end_clr ? 1'h0 : dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:73:@77.4]
  assign dlv_end_tag0_vld_w = _T_112 ? 1'h1 : _T_115; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:29:@78.4]
  assign _T_116 = dlv_end_tag0_vld | dp2reg_done_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:47:@79.4]
  assign _T_119 = dlv_end_clr ? 1'h0 : dlv_end_tag1_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:73:@80.4]
  assign dlv_end_tag1_vld_w = _T_116 ? 1'h1 : _T_119; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:29:@81.4]
  assign _T_120 = ~ dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:38:@82.4]
  assign _T_121 = dp2reg_done_w & _T_120; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:36:@83.4]
  assign _T_122 = dp2reg_done_w & dlv_end_clr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:72:@84.4]
  assign _T_123 = _T_121 | _T_122; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:57:@85.4]
  assign _T_124 = dlv_end_clr & dlv_end_tag1_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:101:@86.4]
  assign dlv_end_tag0_en = _T_123 | _T_124; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:87:@87.4]
  assign _T_125 = dp2reg_done_w & dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:36:@88.4]
  assign _T_126 = ~ dlv_end_clr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:57:@89.4]
  assign dlv_end_tag1_en = _T_125 & _T_126; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:55:@90.4]
  assign dlv_end_tag0_addr_w = dlv_end_tag1_vld ? dlv_end_tag1_addr : dbuf_wr_addr_pre; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:30:@91.4]
  assign _GEN_6 = dlv_end_tag0_en ? dlv_end_tag0_addr_w : dlv_end_tag0_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 171:22:@95.4]
  assign _GEN_7 = dlv_end_tag1_en ? dbuf_wr_addr_pre : dlv_end_tag1_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 174:22:@98.4]
  assign io_dbuf_rd_addr_valid = ~ dbuf_empty; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 141:23:@57.4]
  assign io_dbuf_rd_addr_bits = dbuf_rd_addr_cnt; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 142:22:@58.4]
  assign io_dbuf_rd_layer_end = _T_111 & dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 167:22:@92.4]
  assign io_dbuf_wr_addr_valid = dbuf_wr_en_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 95:23:@23.4]
  assign io_dbuf_wr_addr_bits = dbuf_wr_addr_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 96:22:@24.4]
  assign io_dbuf_wr_data = {{64'd0}, dbuf_wr_data_out}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 97:17:@25.4]
  assign io_dp2reg_done = _T_100; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 150:16:@66.4]
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
  dbuf_wr_addr_pre = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  dbuf_wr_addr_out = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  dbuf_wr_en_out = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {32{`RANDOM}};
  dbuf_wr_data_out = _RAND_3[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  dlv_data_add_valid = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  dlv_data_add_size = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  dlv_data_avl = _RAND_6[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  dbuf_rd_addr_cnt = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_100 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  dlv_end_tag0_vld = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  dlv_end_tag1_vld = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  dlv_end_tag0_addr = _RAND_11[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  dlv_end_tag1_addr = _RAND_12[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_60) begin
      dbuf_wr_addr_pre <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        dbuf_wr_addr_pre <= dbuf_wr_addr_w;
      end
    end
    if (_T_60) begin
      dbuf_wr_addr_out <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        dbuf_wr_addr_out <= dbuf_wr_addr_pre;
      end
    end
    if (_T_60) begin
      dbuf_wr_en_out <= 1'h0;
    end else begin
      dbuf_wr_en_out <= io_dlv_valid;
    end
    if (io_dlv_valid) begin
      dbuf_wr_data_out <= io_dlv_data;
    end
    if (_T_60) begin
      dlv_data_add_valid <= 1'h0;
    end else begin
      dlv_data_add_valid <= io_dlv_valid;
    end
    if (_T_60) begin
      dlv_data_add_size <= 1'h0;
    end else begin
      if (io_dlv_valid) begin
        dlv_data_add_size <= 1'h1;
      end
    end
    if (_T_60) begin
      dlv_data_avl <= 64'h0;
    end else begin
      if (_T_88) begin
        dlv_data_avl <= dlv_data_avl_w;
      end
    end
    if (_T_60) begin
      dbuf_rd_addr_cnt <= 6'h0;
    end else begin
      if (dlv_pop) begin
        dbuf_rd_addr_cnt <= dbuf_rd_addr_cnt_inc;
      end
    end
    if (_T_60) begin
      _T_100 <= 1'h0;
    end else begin
      _T_100 <= dp2reg_done_w;
    end
    if (_T_60) begin
      dlv_end_tag0_vld <= 1'h0;
    end else begin
      if (_T_112) begin
        dlv_end_tag0_vld <= 1'h1;
      end else begin
        if (dlv_end_clr) begin
          dlv_end_tag0_vld <= 1'h0;
        end
      end
    end
    if (_T_60) begin
      dlv_end_tag1_vld <= 1'h0;
    end else begin
      if (_T_116) begin
        dlv_end_tag1_vld <= 1'h1;
      end else begin
        if (dlv_end_clr) begin
          dlv_end_tag1_vld <= 1'h0;
        end
      end
    end
    if (_T_60) begin
      dlv_end_tag0_addr <= 6'h0;
    end else begin
      if (dlv_end_tag0_en) begin
        if (dlv_end_tag1_vld) begin
          dlv_end_tag0_addr <= dlv_end_tag1_addr;
        end else begin
          dlv_end_tag0_addr <= dbuf_wr_addr_pre;
        end
      end
    end
    if (_T_60) begin
      dlv_end_tag1_addr <= 6'h0;
    end else begin
      if (dlv_end_tag1_en) begin
        dlv_end_tag1_addr <= dbuf_wr_addr_pre;
      end
    end
  end
endmodule
