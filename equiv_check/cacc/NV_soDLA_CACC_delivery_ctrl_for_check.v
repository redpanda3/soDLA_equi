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
  input  [31:0]   io_dlv_data_0, // @[:@6.4]
  input  [31:0]   io_dlv_data_1, // @[:@6.4]
  input  [31:0]   io_dlv_data_2, // @[:@6.4]
  input  [31:0]   io_dlv_data_3, // @[:@6.4]
  input  [31:0]   io_dlv_data_4, // @[:@6.4]
  input  [31:0]   io_dlv_data_5, // @[:@6.4]
  input  [31:0]   io_dlv_data_6, // @[:@6.4]
  input  [31:0]   io_dlv_data_7, // @[:@6.4]
  input  [31:0]   io_dlv_data_8, // @[:@6.4]
  input  [31:0]   io_dlv_data_9, // @[:@6.4]
  input  [31:0]   io_dlv_data_10, // @[:@6.4]
  input  [31:0]   io_dlv_data_11, // @[:@6.4]
  input  [31:0]   io_dlv_data_12, // @[:@6.4]
  input  [31:0]   io_dlv_data_13, // @[:@6.4]
  input  [31:0]   io_dlv_data_14, // @[:@6.4]
  input  [31:0]   io_dlv_data_15, // @[:@6.4]
  input  [31:0]   io_dlv_data_16, // @[:@6.4]
  input  [31:0]   io_dlv_data_17, // @[:@6.4]
  input  [31:0]   io_dlv_data_18, // @[:@6.4]
  input  [31:0]   io_dlv_data_19, // @[:@6.4]
  input  [31:0]   io_dlv_data_20, // @[:@6.4]
  input  [31:0]   io_dlv_data_21, // @[:@6.4]
  input  [31:0]   io_dlv_data_22, // @[:@6.4]
  input  [31:0]   io_dlv_data_23, // @[:@6.4]
  input  [31:0]   io_dlv_data_24, // @[:@6.4]
  input  [31:0]   io_dlv_data_25, // @[:@6.4]
  input  [31:0]   io_dlv_data_26, // @[:@6.4]
  input  [31:0]   io_dlv_data_27, // @[:@6.4]
  input  [31:0]   io_dlv_data_28, // @[:@6.4]
  input  [31:0]   io_dlv_data_29, // @[:@6.4]
  input  [31:0]   io_dlv_data_30, // @[:@6.4]
  input  [31:0]   io_dlv_data_31, // @[:@6.4]
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
  wire  _T_132; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 71:38:@8.4]
  wire  dlv_stripe_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 76:31:@9.4]
  wire  dlv_layer_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 77:30:@10.4]
  reg [5:0] dbuf_wr_addr_pre; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 82:31:@11.4]
  reg [31:0] _RAND_0;
  reg [5:0] dbuf_wr_addr_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 83:31:@12.4]
  reg [31:0] _RAND_1;
  reg  dbuf_wr_en_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 84:29:@13.4]
  reg [31:0] _RAND_2;
  reg [1023:0] dbuf_wr_data_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 85:27:@14.4]
  reg [1023:0] _RAND_3;
  wire [6:0] _T_141; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 87:39:@15.4]
  wire [5:0] dbuf_wr_addr_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 87:39:@16.4]
  wire [255:0] _T_148; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@27.6]
  wire [511:0] _T_156; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@35.6]
  wire [255:0] _T_163; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@42.6]
  wire [1023:0] _T_172; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@51.6]
  wire [5:0] _GEN_0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 90:19:@18.4]
  wire [5:0] _GEN_1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 90:19:@18.4]
  reg  dlv_data_add_valid; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 106:71:@58.4]
  reg [31:0] _RAND_4;
  reg  dlv_data_add_size; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 108:70:@60.4]
  reg [31:0] _RAND_5;
  wire  _GEN_3; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 115:30:@64.4]
  reg [63:0] dlv_data_avl; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 125:27:@68.4]
  reg [63:0] _RAND_6;
  wire  dlv_data_avl_add; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 127:27:@69.4]
  wire  dlv_pop; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 139:34:@81.4]
  wire [63:0] _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:35:@71.4]
  wire [64:0] _T_187; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:35:@71.4]
  wire [63:0] _T_188; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:35:@72.4]
  wire [63:0] _GEN_9; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@73.4]
  wire [64:0] _T_189; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@73.4]
  wire [64:0] _T_190; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@74.4]
  wire [63:0] dlv_data_avl_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@75.4]
  wire  _T_191; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 132:25:@76.4]
  wire [63:0] _GEN_4; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 132:46:@77.4]
  reg [5:0] dbuf_rd_addr_cnt; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 137:31:@80.4]
  reg [31:0] _RAND_7;
  wire [6:0] _T_196; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:45:@83.4]
  wire [5:0] dbuf_rd_addr_cnt_inc; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:45:@84.4]
  wire  _T_198; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 141:33:@85.4]
  wire  dbuf_empty; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 141:18:@86.4]
  wire [5:0] _GEN_5; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 145:14:@90.4]
  wire  _T_200; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 150:34:@93.4]
  wire  dp2reg_done_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 150:51:@94.4]
  reg  _T_203; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 151:26:@95.4]
  reg [31:0] _RAND_8;
  reg  dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 154:31:@98.4]
  reg [31:0] _RAND_9;
  reg  dlv_end_tag1_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 155:31:@99.4]
  reg [31:0] _RAND_10;
  reg [5:0] dlv_end_tag0_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 156:32:@100.4]
  reg [31:0] _RAND_11;
  reg [5:0] dlv_end_tag1_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 157:32:@101.4]
  reg [31:0] _RAND_12;
  wire  _T_213; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:51:@104.4]
  wire  _T_214; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:27:@105.4]
  wire  dlv_end_clr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:74:@106.4]
  wire  _T_215; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:47:@107.4]
  wire  _T_218; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:73:@108.4]
  wire  dlv_end_tag0_vld_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:29:@109.4]
  wire  _T_219; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:47:@110.4]
  wire  _T_222; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:73:@111.4]
  wire  dlv_end_tag1_vld_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:29:@112.4]
  wire  _T_223; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:38:@113.4]
  wire  _T_224; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:36:@114.4]
  wire  _T_225; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:72:@115.4]
  wire  _T_226; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:57:@116.4]
  wire  _T_227; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:101:@117.4]
  wire  dlv_end_tag0_en; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:87:@118.4]
  wire  _T_228; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:36:@119.4]
  wire  _T_229; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:57:@120.4]
  wire  dlv_end_tag1_en; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:55:@121.4]
  wire [5:0] dlv_end_tag0_addr_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 166:30:@122.4]
  wire [5:0] _GEN_6; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 172:22:@126.4]
  wire [5:0] _GEN_7; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 175:22:@129.4]
  assign _T_132 = io_nvdla_core_rstn == 1'h0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 71:38:@8.4]
  assign dlv_stripe_end = io_dlv_pd[0]; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 76:31:@9.4]
  assign dlv_layer_end = io_dlv_pd[1]; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 77:30:@10.4]
  assign _T_141 = dbuf_wr_addr_pre + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 87:39:@15.4]
  assign dbuf_wr_addr_w = dbuf_wr_addr_pre + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 87:39:@16.4]
  assign _T_148 = {io_dlv_data_7,io_dlv_data_6,io_dlv_data_5,io_dlv_data_4,io_dlv_data_3,io_dlv_data_2,io_dlv_data_1,io_dlv_data_0}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@27.6]
  assign _T_156 = {io_dlv_data_15,io_dlv_data_14,io_dlv_data_13,io_dlv_data_12,io_dlv_data_11,io_dlv_data_10,io_dlv_data_9,io_dlv_data_8,_T_148}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@35.6]
  assign _T_163 = {io_dlv_data_23,io_dlv_data_22,io_dlv_data_21,io_dlv_data_20,io_dlv_data_19,io_dlv_data_18,io_dlv_data_17,io_dlv_data_16}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@42.6]
  assign _T_172 = {io_dlv_data_31,io_dlv_data_30,io_dlv_data_29,io_dlv_data_28,io_dlv_data_27,io_dlv_data_26,io_dlv_data_25,io_dlv_data_24,_T_163,_T_156}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 93:37:@51.6]
  assign _GEN_0 = io_dlv_valid ? dbuf_wr_addr_w : dbuf_wr_addr_pre; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 90:19:@18.4]
  assign _GEN_1 = io_dlv_valid ? dbuf_wr_addr_pre : dbuf_wr_addr_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 90:19:@18.4]
  assign _GEN_3 = io_dlv_valid ? 1'h1 : dlv_data_add_size; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 115:30:@64.4]
  assign dlv_data_avl_add = dlv_data_add_valid ? dlv_data_add_size : 1'h0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 127:27:@69.4]
  assign dlv_pop = io_dbuf_rd_addr_valid & io_dbuf_rd_ready; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 139:34:@81.4]
  assign _GEN_8 = {{63'd0}, dlv_data_avl_add}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:35:@71.4]
  assign _T_187 = dlv_data_avl + _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:35:@71.4]
  assign _T_188 = dlv_data_avl + _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:35:@72.4]
  assign _GEN_9 = {{63'd0}, dlv_pop}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@73.4]
  assign _T_189 = _T_188 - _GEN_9; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@73.4]
  assign _T_190 = $unsigned(_T_189); // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@74.4]
  assign dlv_data_avl_w = _T_190[63:0]; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 130:54:@75.4]
  assign _T_191 = dlv_data_add_valid | dlv_pop; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 132:25:@76.4]
  assign _GEN_4 = _T_191 ? dlv_data_avl_w : dlv_data_avl; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 132:46:@77.4]
  assign _T_196 = dbuf_rd_addr_cnt + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:45:@83.4]
  assign dbuf_rd_addr_cnt_inc = dbuf_rd_addr_cnt + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 140:45:@84.4]
  assign _T_198 = dlv_data_avl != 64'h0; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 141:33:@85.4]
  assign dbuf_empty = ~ _T_198; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 141:18:@86.4]
  assign _GEN_5 = dlv_pop ? dbuf_rd_addr_cnt_inc : dbuf_rd_addr_cnt; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 145:14:@90.4]
  assign _T_200 = io_dlv_valid & dlv_stripe_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 150:34:@93.4]
  assign dp2reg_done_w = _T_200 & dlv_layer_end; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 150:51:@94.4]
  assign _T_213 = io_dbuf_rd_addr_bits == dlv_end_tag0_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:51:@104.4]
  assign _T_214 = dlv_pop & _T_213; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:27:@105.4]
  assign dlv_end_clr = _T_214 & dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 161:74:@106.4]
  assign _T_215 = dlv_end_tag1_vld | dp2reg_done_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:47:@107.4]
  assign _T_218 = dlv_end_clr ? 1'h0 : dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:73:@108.4]
  assign dlv_end_tag0_vld_w = _T_215 ? 1'h1 : _T_218; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 162:29:@109.4]
  assign _T_219 = dlv_end_tag0_vld | dp2reg_done_w; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:47:@110.4]
  assign _T_222 = dlv_end_clr ? 1'h0 : dlv_end_tag1_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:73:@111.4]
  assign dlv_end_tag1_vld_w = _T_219 ? 1'h1 : _T_222; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 163:29:@112.4]
  assign _T_223 = ~ dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:38:@113.4]
  assign _T_224 = dp2reg_done_w & _T_223; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:36:@114.4]
  assign _T_225 = dp2reg_done_w & dlv_end_clr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:72:@115.4]
  assign _T_226 = _T_224 | _T_225; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:57:@116.4]
  assign _T_227 = dlv_end_clr & dlv_end_tag1_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:101:@117.4]
  assign dlv_end_tag0_en = _T_226 | _T_227; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 164:87:@118.4]
  assign _T_228 = dp2reg_done_w & dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:36:@119.4]
  assign _T_229 = ~ dlv_end_clr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:57:@120.4]
  assign dlv_end_tag1_en = _T_228 & _T_229; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 165:55:@121.4]
  assign dlv_end_tag0_addr_w = dlv_end_tag1_vld ? dlv_end_tag1_addr : dbuf_wr_addr_pre; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 166:30:@122.4]
  assign _GEN_6 = dlv_end_tag0_en ? dlv_end_tag0_addr_w : dlv_end_tag0_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 172:22:@126.4]
  assign _GEN_7 = dlv_end_tag1_en ? dbuf_wr_addr_pre : dlv_end_tag1_addr; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 175:22:@129.4]
  assign io_dbuf_rd_addr_valid = ~ dbuf_empty; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 142:23:@88.4]
  assign io_dbuf_rd_addr_bits = dbuf_rd_addr_cnt; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 143:22:@89.4]
  assign io_dbuf_rd_layer_end = _T_214 & dlv_end_tag0_vld; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 168:22:@123.4]
  assign io_dbuf_wr_addr_valid = dbuf_wr_en_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 96:23:@54.4]
  assign io_dbuf_wr_addr_bits = dbuf_wr_addr_out; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 97:22:@55.4]
  assign io_dbuf_wr_data = {{64'd0}, dbuf_wr_data_out}; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 98:17:@56.4]
  assign io_dp2reg_done = _T_203; // @[NV_NVDLA_CACC_delivery_ctrl_for_check.scala 151:16:@97.4]
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
  _T_203 = _RAND_8[0:0];
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
    if (_T_132) begin
      dbuf_wr_addr_pre <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        dbuf_wr_addr_pre <= dbuf_wr_addr_w;
      end
    end
    if (_T_132) begin
      dbuf_wr_addr_out <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        dbuf_wr_addr_out <= dbuf_wr_addr_pre;
      end
    end
    if (_T_132) begin
      dbuf_wr_en_out <= 1'h0;
    end else begin
      dbuf_wr_en_out <= io_dlv_valid;
    end
    if (io_dlv_valid) begin
      dbuf_wr_data_out <= _T_172;
    end
    if (_T_132) begin
      dlv_data_add_valid <= 1'h0;
    end else begin
      dlv_data_add_valid <= io_dlv_valid;
    end
    if (_T_132) begin
      dlv_data_add_size <= 1'h0;
    end else begin
      if (io_dlv_valid) begin
        dlv_data_add_size <= 1'h1;
      end
    end
    if (_T_132) begin
      dlv_data_avl <= 64'h0;
    end else begin
      if (_T_191) begin
        dlv_data_avl <= dlv_data_avl_w;
      end
    end
    if (_T_132) begin
      dbuf_rd_addr_cnt <= 6'h0;
    end else begin
      if (dlv_pop) begin
        dbuf_rd_addr_cnt <= dbuf_rd_addr_cnt_inc;
      end
    end
    if (_T_132) begin
      _T_203 <= 1'h0;
    end else begin
      _T_203 <= dp2reg_done_w;
    end
    if (_T_132) begin
      dlv_end_tag0_vld <= 1'h0;
    end else begin
      if (_T_215) begin
        dlv_end_tag0_vld <= 1'h1;
      end else begin
        if (dlv_end_clr) begin
          dlv_end_tag0_vld <= 1'h0;
        end
      end
    end
    if (_T_132) begin
      dlv_end_tag1_vld <= 1'h0;
    end else begin
      if (_T_219) begin
        dlv_end_tag1_vld <= 1'h1;
      end else begin
        if (dlv_end_clr) begin
          dlv_end_tag1_vld <= 1'h0;
        end
      end
    end
    if (_T_132) begin
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
    if (_T_132) begin
      dlv_end_tag1_addr <= 6'h0;
    end else begin
      if (dlv_end_tag1_en) begin
        dlv_end_tag1_addr <= dbuf_wr_addr_pre;
      end
    end
  end
endmodule
