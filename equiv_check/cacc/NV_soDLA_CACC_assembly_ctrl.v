module NV_soDLA_CACC_assembly_ctrl( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  output        io_abuf_rd_addr_valid, // @[:@6.4]
  output [5:0]  io_abuf_rd_addr_bits, // @[:@6.4]
  input         io_mac_a2accu_pd_valid, // @[:@6.4]
  input  [8:0]  io_mac_a2accu_pd_bits, // @[:@6.4]
  output        io_accu_ctrl_pd_valid, // @[:@6.4]
  output [12:0] io_accu_ctrl_pd_bits, // @[:@6.4]
  output        io_accu_ctrl_ram_valid, // @[:@6.4]
  output [4:0]  io_cfg_truncate, // @[:@6.4]
  input         io_reg2dp_op_en, // @[:@6.4]
  input  [4:0]  io_reg2dp_clip_truncate, // @[:@6.4]
  input         io_dp2reg_done, // @[:@6.4]
  output        io_slcg_cell_en, // @[:@6.4]
  output        io_wait_for_op_en // @[:@6.4]
);
  reg  accu_valid; // @[NV_NVDLA_CACC_assembly_ctrl.scala 61:25:@8.4]
  reg [31:0] _RAND_0;
  reg [8:0] accu_pd; // @[Reg.scala 19:20:@10.4]
  reg [31:0] _RAND_1;
  wire [8:0] _GEN_0; // @[Reg.scala 20:19:@11.4]
  wire  accu_stripe_end; // @[NV_NVDLA_CACC_assembly_ctrl.scala 68:30:@15.4]
  wire  accu_channel_end; // @[NV_NVDLA_CACC_assembly_ctrl.scala 69:31:@16.4]
  wire  accu_layer_end; // @[NV_NVDLA_CACC_assembly_ctrl.scala 70:29:@17.4]
  reg  _T_44; // @[Reg.scala 19:20:@18.4]
  reg [31:0] _RAND_2;
  reg  _T_46; // @[Reg.scala 19:20:@22.4]
  reg [31:0] _RAND_3;
  reg  _T_48; // @[Reg.scala 19:20:@26.4]
  reg [31:0] _RAND_4;
  reg  wait_for_op_en_out; // @[NV_NVDLA_CACC_assembly_ctrl.scala 76:33:@31.4]
  reg [31:0] _RAND_5;
  wire  _T_53; // @[NV_NVDLA_CACC_assembly_ctrl.scala 77:63:@32.4]
  reg  wait_for_op_en_w; // @[NV_NVDLA_CACC_assembly_ctrl.scala 77:31:@34.4]
  reg [31:0] _RAND_6;
  reg [5:0] accu_cnt; // @[NV_NVDLA_CACC_assembly_ctrl.scala 82:23:@38.4]
  reg [31:0] _RAND_7;
  reg  accu_ram_valid; // @[NV_NVDLA_CACC_assembly_ctrl.scala 83:29:@39.4]
  reg [31:0] _RAND_8;
  reg  accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 84:30:@40.4]
  reg [31:0] _RAND_9;
  wire  layer_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:34:@41.4]
  wire [6:0] _T_63; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@42.4]
  wire [5:0] accu_cnt_inc; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@43.4]
  wire  _T_64; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:31:@44.4]
  wire [5:0] accu_cnt_w; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:21:@45.4]
  wire  _T_67; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:63:@46.4]
  wire  _T_68; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:51:@47.4]
  wire  accu_channel_st_w; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:29:@48.4]
  wire  _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:32:@49.4]
  wire  accu_rd_en; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:29:@50.4]
  wire  _T_70; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:15:@52.4]
  wire [5:0] _GEN_4; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:28:@53.4]
  wire  _GEN_5; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:28:@53.4]
  reg [4:0] _T_73; // @[Reg.scala 19:20:@57.4]
  reg [31:0] _RAND_10;
  wire [4:0] _GEN_6; // @[Reg.scala 20:19:@58.4]
  reg  _T_76; // @[NV_NVDLA_CACC_assembly_ctrl.scala 106:33:@64.4]
  reg [31:0] _RAND_11;
  reg  _T_79; // @[NV_NVDLA_CACC_assembly_ctrl.scala 107:34:@67.4]
  reg [31:0] _RAND_12;
  reg [5:0] accu_ctrl_addr; // @[NV_NVDLA_CACC_assembly_ctrl.scala 108:29:@70.4]
  reg [31:0] _RAND_13;
  wire [5:0] _GEN_7; // @[NV_NVDLA_CACC_assembly_ctrl.scala 109:17:@71.4]
  reg  accu_ctrl_stripe_end; // @[Reg.scala 19:20:@74.4]
  reg [31:0] _RAND_14;
  wire  _GEN_8; // @[Reg.scala 20:19:@75.4]
  reg  accu_ctrl_channel_end; // @[Reg.scala 19:20:@78.4]
  reg [31:0] _RAND_15;
  wire  _GEN_9; // @[Reg.scala 20:19:@79.4]
  reg  accu_ctrl_layer_end; // @[Reg.scala 19:20:@82.4]
  reg [31:0] _RAND_16;
  wire  _GEN_10; // @[Reg.scala 20:19:@83.4]
  reg  accu_ctrl_dlv_elem_mask; // @[Reg.scala 19:20:@86.4]
  reg [31:0] _RAND_17;
  wire  _GEN_11; // @[Reg.scala 20:19:@87.4]
  wire [9:0] _T_92; // @[Cat.scala 30:58:@91.4]
  wire [2:0] _T_94; // @[Cat.scala 30:58:@93.4]
  assign _GEN_0 = io_mac_a2accu_pd_valid ? io_mac_a2accu_pd_bits : accu_pd; // @[Reg.scala 20:19:@11.4]
  assign accu_stripe_end = accu_pd[6]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 68:30:@15.4]
  assign accu_channel_end = accu_pd[7]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 69:31:@16.4]
  assign accu_layer_end = accu_pd[8]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 70:29:@17.4]
  assign _T_53 = io_reg2dp_op_en ? 1'h0 : wait_for_op_en_out; // @[NV_NVDLA_CACC_assembly_ctrl.scala 77:63:@32.4]
  assign layer_st = io_wait_for_op_en & io_reg2dp_op_en; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:34:@41.4]
  assign _T_63 = accu_cnt + 6'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@42.4]
  assign accu_cnt_inc = accu_cnt + 6'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@43.4]
  assign _T_64 = layer_st | accu_stripe_end; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:31:@44.4]
  assign accu_cnt_w = _T_64 ? 6'h0 : accu_cnt_inc; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:21:@45.4]
  assign _T_67 = accu_valid & accu_stripe_end; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:63:@46.4]
  assign _T_68 = _T_67 ? accu_channel_end : accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:51:@47.4]
  assign accu_channel_st_w = layer_st ? 1'h1 : _T_68; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:29:@48.4]
  assign _T_69 = ~ accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:32:@49.4]
  assign accu_rd_en = accu_valid & _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:29:@50.4]
  assign _T_70 = layer_st | accu_valid; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:15:@52.4]
  assign _GEN_4 = _T_70 ? accu_cnt_w : accu_cnt; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:28:@53.4]
  assign _GEN_5 = _T_70 ? accu_channel_st_w : accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:28:@53.4]
  assign _GEN_6 = layer_st ? io_reg2dp_clip_truncate : _T_73; // @[Reg.scala 20:19:@58.4]
  assign _GEN_7 = accu_valid ? accu_cnt : accu_ctrl_addr; // @[NV_NVDLA_CACC_assembly_ctrl.scala 109:17:@71.4]
  assign _GEN_8 = accu_valid ? accu_stripe_end : accu_ctrl_stripe_end; // @[Reg.scala 20:19:@75.4]
  assign _GEN_9 = accu_valid ? accu_channel_end : accu_ctrl_channel_end; // @[Reg.scala 20:19:@79.4]
  assign _GEN_10 = accu_valid ? accu_layer_end : accu_ctrl_layer_end; // @[Reg.scala 20:19:@83.4]
  assign _GEN_11 = accu_valid ? accu_layer_end : accu_ctrl_dlv_elem_mask; // @[Reg.scala 20:19:@87.4]
  assign _T_92 = {accu_ctrl_stripe_end,3'h1,accu_ctrl_addr}; // @[Cat.scala 30:58:@91.4]
  assign _T_94 = {accu_ctrl_dlv_elem_mask,accu_ctrl_layer_end,accu_ctrl_channel_end}; // @[Cat.scala 30:58:@93.4]
  assign io_abuf_rd_addr_valid = accu_valid & _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 101:23:@62.4]
  assign io_abuf_rd_addr_bits = accu_cnt; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:22:@63.4]
  assign io_accu_ctrl_pd_valid = _T_76; // @[NV_NVDLA_CACC_assembly_ctrl.scala 106:23:@66.4]
  assign io_accu_ctrl_pd_bits = {_T_94,_T_92}; // @[NV_NVDLA_CACC_assembly_ctrl.scala 118:22:@95.4]
  assign io_accu_ctrl_ram_valid = _T_79; // @[NV_NVDLA_CACC_assembly_ctrl.scala 107:24:@69.4]
  assign io_cfg_truncate = _T_73; // @[NV_NVDLA_CACC_assembly_ctrl.scala 99:17:@61.4]
  assign io_slcg_cell_en = _T_48; // @[NV_NVDLA_CACC_assembly_ctrl.scala 73:17:@30.4]
  assign io_wait_for_op_en = wait_for_op_en_out; // @[NV_NVDLA_CACC_assembly_ctrl.scala 79:19:@37.4]
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
  accu_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  accu_pd = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_44 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_46 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_48 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  wait_for_op_en_out = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  wait_for_op_en_w = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  accu_cnt = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  accu_ram_valid = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  accu_channel_st = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_73 = _RAND_10[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_76 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_79 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  accu_ctrl_addr = _RAND_13[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  accu_ctrl_stripe_end = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  accu_ctrl_channel_end = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  accu_ctrl_layer_end = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  accu_ctrl_dlv_elem_mask = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      accu_valid <= 1'h0;
    end else begin
      accu_valid <= io_mac_a2accu_pd_valid;
    end
    if (reset) begin
      accu_pd <= 9'h0;
    end else begin
      if (io_mac_a2accu_pd_valid) begin
        accu_pd <= io_mac_a2accu_pd_bits;
      end
    end
    if (reset) begin
      _T_44 <= 1'h0;
    end else begin
      _T_44 <= io_reg2dp_op_en;
    end
    if (reset) begin
      _T_46 <= 1'h0;
    end else begin
      _T_46 <= _T_44;
    end
    if (reset) begin
      _T_48 <= 1'h0;
    end else begin
      _T_48 <= _T_46;
    end
    if (reset) begin
      wait_for_op_en_out <= 1'h1;
    end else begin
      wait_for_op_en_out <= wait_for_op_en_w;
    end
    if (io_dp2reg_done) begin
      wait_for_op_en_w <= 1'h1;
    end else begin
      if (io_reg2dp_op_en) begin
        wait_for_op_en_w <= 1'h0;
      end else begin
        wait_for_op_en_w <= wait_for_op_en_out;
      end
    end
    if (reset) begin
      accu_cnt <= 6'h0;
    end else begin
      if (_T_70) begin
        if (_T_64) begin
          accu_cnt <= 6'h0;
        end else begin
          accu_cnt <= accu_cnt_inc;
        end
      end
    end
    if (reset) begin
      accu_ram_valid <= 1'h0;
    end else begin
      accu_ram_valid <= accu_rd_en;
    end
    if (reset) begin
      accu_channel_st <= 1'h1;
    end else begin
      if (_T_70) begin
        if (layer_st) begin
          accu_channel_st <= 1'h1;
        end else begin
          if (_T_67) begin
            accu_channel_st <= accu_channel_end;
          end
        end
      end
    end
    if (reset) begin
      _T_73 <= 5'h0;
    end else begin
      if (layer_st) begin
        _T_73 <= io_reg2dp_clip_truncate;
      end
    end
    if (reset) begin
      _T_76 <= 1'h0;
    end else begin
      _T_76 <= accu_valid;
    end
    if (reset) begin
      _T_79 <= 1'h0;
    end else begin
      _T_79 <= accu_ram_valid;
    end
    if (reset) begin
      accu_ctrl_addr <= 6'h0;
    end else begin
      if (accu_valid) begin
        accu_ctrl_addr <= accu_cnt;
      end
    end
    if (reset) begin
      accu_ctrl_stripe_end <= 1'h0;
    end else begin
      if (accu_valid) begin
        accu_ctrl_stripe_end <= accu_stripe_end;
      end
    end
    if (reset) begin
      accu_ctrl_channel_end <= 1'h0;
    end else begin
      if (accu_valid) begin
        accu_ctrl_channel_end <= accu_channel_end;
      end
    end
    if (reset) begin
      accu_ctrl_layer_end <= 1'h0;
    end else begin
      if (accu_valid) begin
        accu_ctrl_layer_end <= accu_layer_end;
      end
    end
    if (reset) begin
      accu_ctrl_dlv_elem_mask <= 1'h0;
    end else begin
      if (accu_valid) begin
        accu_ctrl_dlv_elem_mask <= accu_layer_end;
      end
    end
  end
endmodule
