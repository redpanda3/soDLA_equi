module NV_soDLA_CACC_assembly_ctrl( // @[:@3.2]
  input         reset, // @[:@5.4]
  input         nvdla_core_clk, // @[:@6.4]
  output        abuf_rd_en, // @[:@6.4]
  output [2:0]  abuf_rd_addr, // @[:@6.4]
  input         mac_a2accu_pvld, // @[:@6.4]
  input  [8:0]  mac_a2accu_pd, // @[:@6.4]
  output        accu_ctrl_valid, // @[:@6.4]
  output [12:0] accu_ctrl_pd, // @[:@6.4]
  output        accu_ctrl_ram_valid, // @[:@6.4]
  output [4:0]  cfg_truncate, // @[:@6.4]
  input         reg2dp_op_en, // @[:@6.4]
  input  [4:0]  reg2dp_clip_truncate, // @[:@6.4]
  input         dp2reg_done, // @[:@6.4]
  output        slcg_cell_en, // @[:@6.4]
  output        wait_for_op_en, // @[:@6.4]
  output        cfg_in_en_mask
);

  assign cfg_in_en_mask = 1'b1;
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
  reg [2:0] accu_cnt; // @[NV_NVDLA_CACC_assembly_ctrl.scala 82:23:@38.4]
  reg [31:0] _RAND_7;
  reg  accu_ram_valid; // @[NV_NVDLA_CACC_assembly_ctrl.scala 83:29:@39.4]
  reg [31:0] _RAND_8;
  reg  accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 84:30:@40.4]
  reg [31:0] _RAND_9;
  wire  layer_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:34:@41.4]
  wire [3:0] _T_63; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@42.4]
  wire [2:0] accu_cnt_inc; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@43.4]
  wire  _T_64; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:31:@44.4]
  wire [2:0] accu_cnt_w; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:21:@45.4]
  wire  _T_67; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:63:@46.4]
  wire  _T_68; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:51:@47.4]
  wire  accu_channel_st_w; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:29:@48.4]
  wire  _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:32:@49.4]
  wire  accu_rd_en; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:29:@50.4]
  wire  _T_70; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:15:@52.4]
  wire [2:0] _GEN_4; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:28:@53.4]
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
  assign _GEN_0 = mac_a2accu_pvld ? mac_a2accu_pd : accu_pd; // @[Reg.scala 20:19:@11.4]
  assign accu_stripe_end = accu_pd[6]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 68:30:@15.4]
  assign accu_channel_end = accu_pd[7]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 69:31:@16.4]
  assign accu_layer_end = accu_pd[8]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 70:29:@17.4]
  assign _T_53 = reg2dp_op_en ? 1'h0 : wait_for_op_en_out; // @[NV_NVDLA_CACC_assembly_ctrl.scala 77:63:@32.4]
  assign layer_st = wait_for_op_en & reg2dp_op_en; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:34:@41.4]
  assign _T_63 = accu_cnt + 3'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@42.4]
  assign accu_cnt_inc = accu_cnt + 3'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:29:@43.4]
  assign _T_64 = layer_st | accu_stripe_end; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:31:@44.4]
  assign accu_cnt_w = _T_64 ? 3'h0 : accu_cnt_inc; // @[NV_NVDLA_CACC_assembly_ctrl.scala 88:21:@45.4]
  assign _T_67 = accu_valid & accu_stripe_end; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:63:@46.4]
  assign _T_68 = _T_67 ? accu_channel_end : accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:51:@47.4]
  assign accu_channel_st_w = layer_st ? 1'h1 : _T_68; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:29:@48.4]
  assign _T_69 = ~ accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:32:@49.4]
  assign accu_rd_en = accu_valid & _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 91:29:@50.4]
  assign _T_70 = layer_st | accu_valid; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:15:@52.4]
  assign _GEN_4 = _T_70 ? accu_cnt_w : accu_cnt; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:28:@53.4]
  assign _GEN_5 = _T_70 ? accu_channel_st_w : accu_channel_st; // @[NV_NVDLA_CACC_assembly_ctrl.scala 94:28:@53.4]
  assign _GEN_6 = layer_st ? reg2dp_clip_truncate : _T_73; // @[Reg.scala 20:19:@58.4]
  assign _GEN_7 = accu_valid ? {{3'd0}, accu_cnt} : accu_ctrl_addr; // @[NV_NVDLA_CACC_assembly_ctrl.scala 109:17:@71.4]
  assign _GEN_8 = accu_valid ? accu_stripe_end : accu_ctrl_stripe_end; // @[Reg.scala 20:19:@75.4]
  assign _GEN_9 = accu_valid ? accu_channel_end : accu_ctrl_channel_end; // @[Reg.scala 20:19:@79.4]
  assign _GEN_10 = accu_valid ? accu_layer_end : accu_ctrl_layer_end; // @[Reg.scala 20:19:@83.4]
  assign _GEN_11 = accu_valid ? accu_layer_end : accu_ctrl_dlv_elem_mask; // @[Reg.scala 20:19:@87.4]
  assign _T_92 = {accu_ctrl_stripe_end,3'h1,accu_ctrl_addr}; // @[Cat.scala 30:58:@91.4]
  assign _T_94 = {accu_ctrl_dlv_elem_mask,accu_ctrl_layer_end,accu_ctrl_channel_end}; // @[Cat.scala 30:58:@93.4]
  assign abuf_rd_en = accu_valid & _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 101:23:@62.4]
  assign abuf_rd_addr = accu_cnt; // @[NV_NVDLA_CACC_assembly_ctrl.scala 102:22:@63.4]
  assign accu_ctrl_valid = _T_76; // @[NV_NVDLA_CACC_assembly_ctrl.scala 106:23:@66.4]
  assign accu_ctrl_pd = {_T_94,_T_92}; // @[NV_NVDLA_CACC_assembly_ctrl.scala 118:22:@95.4]
  assign accu_ctrl_ram_valid = _T_79; // @[NV_NVDLA_CACC_assembly_ctrl.scala 107:24:@69.4]
  assign cfg_truncate = _T_73; // @[NV_NVDLA_CACC_assembly_ctrl.scala 99:17:@61.4]
  assign slcg_cell_en = _T_48; // @[NV_NVDLA_CACC_assembly_ctrl.scala 73:17:@30.4]
  assign wait_for_op_en = wait_for_op_en_out; // @[NV_NVDLA_CACC_assembly_ctrl.scala 79:19:@37.4]
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
  accu_cnt = _RAND_7[2:0];
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
  always @(posedge nvdla_core_clk) begin
    if (reset) begin
      accu_valid <= 1'h0;
    end else begin
      accu_valid <= mac_a2accu_pvld;
    end
    if (reset) begin
      accu_pd <= 9'h0;
    end else begin
      if (mac_a2accu_pvld) begin
        accu_pd <= mac_a2accu_pd;
      end
    end
    if (reset) begin
      _T_44 <= 1'h0;
    end else begin
      _T_44 <= reg2dp_op_en;
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
    if (dp2reg_done) begin
      wait_for_op_en_w <= 1'h1;
    end else begin
      if (reg2dp_op_en) begin
        wait_for_op_en_w <= 1'h0;
      end else begin
        wait_for_op_en_w <= wait_for_op_en_out;
      end
    end
    if (reset) begin
      accu_cnt <= 3'h0;
    end else begin
      if (_T_70) begin
        if (_T_64) begin
          accu_cnt <= 3'h0;
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
        _T_73 <= reg2dp_clip_truncate;
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
        accu_ctrl_addr <= {{3'd0}, accu_cnt};
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


// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC_assembly_ctrl.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC.h
module NV_NVDLA_CACC_assembly_ctrl (
   nvdla_core_clk
  ,reset
  ,dp2reg_done
  ,mac_a2accu_pd
  ,mac_a2accu_pvld
  ,mac_b2accu_pd
  ,mac_b2accu_pvld
  ,reg2dp_clip_truncate
  ,reg2dp_conv_mode
  ,reg2dp_op_en
  ,reg2dp_proc_precision
  ,abuf_rd_addr
  ,abuf_rd_en
  ,accu_ctrl_pd
  ,accu_ctrl_ram_valid
  ,accu_ctrl_valid
  ,cfg_in_en_mask
  ,cfg_is_wg
  ,cfg_truncate
  ,slcg_cell_en
  ,wait_for_op_en
  );
input [0:0] reg2dp_op_en;
input [0:0] reg2dp_conv_mode;
input [1:0] reg2dp_proc_precision;
input [4:0] reg2dp_clip_truncate;
output[5 +1 -1:0]abuf_rd_addr;
output abuf_rd_en;
input nvdla_core_clk;
input reset;
input dp2reg_done;
input [8:0] mac_a2accu_pd;
input mac_a2accu_pvld;
input [8:0] mac_b2accu_pd; //always equal mac_a2accu_pd
input mac_b2accu_pvld;
output [12:0] accu_ctrl_pd;
output accu_ctrl_ram_valid;
output accu_ctrl_valid;
output cfg_in_en_mask;
output cfg_is_wg;
output [4:0] cfg_truncate;
output slcg_cell_en;
output wait_for_op_en;
// spyglass disable_block NoWidthInBasedNum-ML
// spyglass disable_block STARC-2.10.1.6
// cross partition,1T
//: &eperl::flop("-q  accu_valid  -d \"mac_a2accu_pvld\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop("-wid 9 -q  accu_pd  -en \"mac_a2accu_pvld\" -d  \"mac_a2accu_pd\" -clk nvdla_core_clk -rst reset -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  accu_valid;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_valid <= 'b0;
   end else begin
       accu_valid <= mac_a2accu_pvld;
   end
end
reg [8:0] accu_pd;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_pd <= 'b0;
   end else begin
       if ((mac_a2accu_pvld) == 1'b1) begin
           accu_pd <= mac_a2accu_pd;
       // VCS coverage off
       end else if ((mac_a2accu_pvld) == 1'b0) begin
       end else begin
           accu_pd <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// generator input status signal                      /////
//////////////////////////////////////////////////////////////
wire accu_stripe_st = accu_pd[5];
wire accu_stripe_end = accu_pd[6];
wire accu_channel_end = accu_pd[7];
wire accu_layer_end = accu_pd[8];
wire is_int8 = (reg2dp_proc_precision == 2'h0);
wire is_winograd = 1'b0;
// SLCG
wire slcg_cell_en_w = reg2dp_op_en;
//: &eperl::flop(" -q  slcg_cell_en_d1  -d \"slcg_cell_en_w\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  slcg_cell_en_d2  -d \"slcg_cell_en_d1\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  slcg_cell_en_d3  -d \"slcg_cell_en_d2\" -clk nvdla_core_clk -rst reset -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  slcg_cell_en_d1;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       slcg_cell_en_d1 <= 'b0;
   end else begin
       slcg_cell_en_d1 <= slcg_cell_en_w;
   end
end
reg  slcg_cell_en_d2;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       slcg_cell_en_d2 <= 'b0;
   end else begin
       slcg_cell_en_d2 <= slcg_cell_en_d1;
   end
end
reg  slcg_cell_en_d3;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       slcg_cell_en_d3 <= 'b0;
   end else begin
       slcg_cell_en_d3 <= slcg_cell_en_d2;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire slcg_cell_en = slcg_cell_en_d3;
// get layer operation begin
wire wait_for_op_en_w = dp2reg_done ? 1'b1 : reg2dp_op_en ? 1'b0 : wait_for_op_en;
//: &eperl::flop(" -q  wait_for_op_en  -d \"wait_for_op_en_w\" -clk nvdla_core_clk -rst reset -rval 1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  wait_for_op_en;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       wait_for_op_en <= 1;
   end else begin
       wait_for_op_en <= wait_for_op_en_w;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// get address and other contrl
reg cfg_winograd;
reg [5 +1 -1:0] accu_cnt;
wire [5 +1 -1:0] accu_cnt_w;
wire [5 +1 -1:0] accu_cnt_inc;
wire mon_accu_cnt_inc;
reg accu_channel_st;
wire layer_st = wait_for_op_en & reg2dp_op_en;
assign {mon_accu_cnt_inc, accu_cnt_inc} = accu_cnt + 1'b1;
assign accu_cnt_w = (layer_st | accu_stripe_end) ? {5 +1{1'b0}} : accu_cnt_inc;
wire [5 +1 -1:0] accu_addr = accu_cnt;
wire accu_channel_st_w = layer_st ? 1'b1 : (accu_valid & accu_stripe_end) ? accu_channel_end : accu_channel_st;
wire accu_rd_en = accu_valid & (~accu_channel_st);
wire cfg_in_en_mask_w = 1'b1;
//: &eperl::flop("-q accu_ram_valid -d accu_rd_en");
//: &eperl::flop("-nodeclare -q  accu_cnt  -en \"layer_st | accu_valid\" -d  \"accu_cnt_w\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop("-nodeclare -q  accu_channel_st  -en \"layer_st | accu_valid\" -d  \"accu_channel_st_w\" -clk nvdla_core_clk -rst reset -rval 1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  accu_ram_valid;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ram_valid <= 'b0;
   end else begin
       accu_ram_valid <= accu_rd_en;
   end
end
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_cnt <= 'b0;
   end else begin
       if ((layer_st | accu_valid) == 1'b1) begin
           accu_cnt <= accu_cnt_w;
       // VCS coverage off
       end else if ((layer_st | accu_valid) == 1'b0) begin
       end else begin
           accu_cnt <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_channel_st <= 1;
   end else begin
       if ((layer_st | accu_valid) == 1'b1) begin
           accu_channel_st <= accu_channel_st_w;
       // VCS coverage off
       end else if ((layer_st | accu_valid) == 1'b0) begin
       end else begin
           accu_channel_st <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire accu_ctrl_valid_d0 = accu_valid;
wire accu_ram_valid_d0 = accu_ram_valid;
wire [5 +1 -1:0] accu_addr_d0 = accu_addr;
wire accu_stripe_end_d0 = accu_stripe_end;
wire accu_channel_end_d0 = accu_channel_end;
wire accu_layer_end_d0 = accu_layer_end;
//: &eperl::flop("-nodeclare -q  cfg_winograd  -en \"layer_st\" -d  \"is_winograd\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop("-wid 5 -q  cfg_truncate  -en \"layer_st\" -d  \"reg2dp_clip_truncate\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  cfg_is_wg  -en \"layer_st\" -d  \"is_winograd\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  cfg_in_en_mask  -en \"layer_st\" -d  \"cfg_in_en_mask_w\" -clk nvdla_core_clk -rst reset -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       cfg_winograd <= 'b0;
   end else begin
       if ((layer_st) == 1'b1) begin
           cfg_winograd <= is_winograd;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           cfg_winograd <= 'bx;
       // VCS coverage on
       end
   end
end
reg [4:0] cfg_truncate;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       cfg_truncate <= 'b0;
   end else begin
       if ((layer_st) == 1'b1) begin
           cfg_truncate <= reg2dp_clip_truncate;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           cfg_truncate <= 'bx;
       // VCS coverage on
       end
   end
end
reg  cfg_is_wg;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       cfg_is_wg <= 'b0;
   end else begin
       if ((layer_st) == 1'b1) begin
           cfg_is_wg <= is_winograd;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           cfg_is_wg <= 'bx;
       // VCS coverage on
       end
   end
end
reg  cfg_in_en_mask;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       cfg_in_en_mask <= 'b0;
   end else begin
       if ((layer_st) == 1'b1) begin
           cfg_in_en_mask <= cfg_in_en_mask_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           cfg_in_en_mask <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire abuf_rd_en = accu_rd_en;
wire [5 +1 -1:0] abuf_rd_addr = accu_addr;
// regout
//: my $kk=5 +1;
//: &eperl::flop(" -q  accu_ctrl_valid  -d \"accu_ctrl_valid_d0\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  accu_ctrl_ram_valid  -d \"accu_ram_valid_d0\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop("-wid ${kk} -q  accu_ctrl_addr  -en \"accu_ctrl_valid_d0\" -d  \"accu_addr_d0\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  accu_ctrl_stripe_end  -en \"accu_ctrl_valid_d0\" -d  \"accu_stripe_end_d0\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  accu_ctrl_channel_end  -en \"accu_ctrl_valid_d0\" -d  \"accu_channel_end_d0\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  accu_ctrl_layer_end  -en \"accu_ctrl_valid_d0\" -d  \"accu_layer_end_d0\" -clk nvdla_core_clk -rst reset -rval 0");
//: &eperl::flop(" -q  accu_ctrl_dlv_elem_mask  -en \"accu_ctrl_valid_d0\" -d  \"accu_channel_end_d0\" -clk nvdla_core_clk -rst reset -rval 0");
//: my $jj=6-$kk;
//: if ($jj==0) {
//: print "assign       accu_ctrl_pd[5:0]  =     {accu_ctrl_addr}; \n";
//: }
//: elsif ($jj>0) {
//: print "assign       accu_ctrl_pd[5:0]  =     {{${jj}{1'b0}},accu_ctrl_addr}; \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  accu_ctrl_valid;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ctrl_valid <= 'b0;
   end else begin
       accu_ctrl_valid <= accu_ctrl_valid_d0;
   end
end
reg  accu_ctrl_ram_valid;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ctrl_ram_valid <= 'b0;
   end else begin
       accu_ctrl_ram_valid <= accu_ram_valid_d0;
   end
end
reg [5:0] accu_ctrl_addr;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ctrl_addr <= 'b0;
   end else begin
       if ((accu_ctrl_valid_d0) == 1'b1) begin
           accu_ctrl_addr <= accu_addr_d0;
       // VCS coverage off
       end else if ((accu_ctrl_valid_d0) == 1'b0) begin
       end else begin
           accu_ctrl_addr <= 'bx;
       // VCS coverage on
       end
   end
end
reg  accu_ctrl_stripe_end;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ctrl_stripe_end <= 'b0;
   end else begin
       if ((accu_ctrl_valid_d0) == 1'b1) begin
           accu_ctrl_stripe_end <= accu_stripe_end_d0;
       // VCS coverage off
       end else if ((accu_ctrl_valid_d0) == 1'b0) begin
       end else begin
           accu_ctrl_stripe_end <= 'bx;
       // VCS coverage on
       end
   end
end
reg  accu_ctrl_channel_end;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ctrl_channel_end <= 'b0;
   end else begin
       if ((accu_ctrl_valid_d0) == 1'b1) begin
           accu_ctrl_channel_end <= accu_channel_end_d0;
       // VCS coverage off
       end else if ((accu_ctrl_valid_d0) == 1'b0) begin
       end else begin
           accu_ctrl_channel_end <= 'bx;
       // VCS coverage on
       end
   end
end
reg  accu_ctrl_layer_end;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ctrl_layer_end <= 'b0;
   end else begin
       if ((accu_ctrl_valid_d0) == 1'b1) begin
           accu_ctrl_layer_end <= accu_layer_end_d0;
       // VCS coverage off
       end else if ((accu_ctrl_valid_d0) == 1'b0) begin
       end else begin
           accu_ctrl_layer_end <= 'bx;
       // VCS coverage on
       end
   end
end
reg  accu_ctrl_dlv_elem_mask;
always @(posedge nvdla_core_clk or negedge reset) begin
   if (!reset) begin
       accu_ctrl_dlv_elem_mask <= 'b0;
   end else begin
       if ((accu_ctrl_valid_d0) == 1'b1) begin
           accu_ctrl_dlv_elem_mask <= accu_channel_end_d0;
       // VCS coverage off
       end else if ((accu_ctrl_valid_d0) == 1'b0) begin
       end else begin
           accu_ctrl_dlv_elem_mask <= 'bx;
       // VCS coverage on
       end
   end
end
assign       accu_ctrl_pd[5:0]  =     {accu_ctrl_addr}; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block NoWidthInBasedNum-ML
// spyglass enable_block STARC-2.10.1.6
assign accu_ctrl_pd[8:6] = 3'b1; //reserve
assign accu_ctrl_pd[9] = accu_ctrl_stripe_end ;
assign accu_ctrl_pd[10] = accu_ctrl_channel_end ;
assign accu_ctrl_pd[11] = accu_ctrl_layer_end ;
assign accu_ctrl_pd[12] = accu_ctrl_dlv_elem_mask;
endmodule