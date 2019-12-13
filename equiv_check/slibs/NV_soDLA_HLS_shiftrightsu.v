module NV_soDLA_HLS_shiftrightsu( // @[:@3.2]
  input  [48:0] data_in, // @[:@6.4]
  input  [5:0]  shift_num, // @[:@6.4]
  output [31:0] data_out // @[:@6.4]
);
  wire  data_sign; // @[NV_NVDLA_HLS_shiftrightsu.scala 26:28:@17.4]
  wire [48:0] _T_24; // @[Bitwise.scala 72:12:@20.4]
  wire [146:0] _T_31; // @[Cat.scala 30:58:@23.4]
  wire [146:0] _T_32; // @[NV_NVDLA_HLS_shiftrightsu.scala 28:87:@24.4]
  wire [48:0] data_shift; // @[NV_NVDLA_HLS_shiftrightsu.scala 30:104:@33.4]
  wire  guide; // @[NV_NVDLA_HLS_shiftrightsu.scala 32:99:@41.4]
  wire [47:0] _T_72; // @[NV_NVDLA_HLS_shiftrightsu.scala 34:99:@49.4]
  wire  _T_73; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:24:@51.4]
  wire [48:0] stick; // @[NV_NVDLA_HLS_shiftrightsu.scala 18:21:@10.4 NV_NVDLA_HLS_shiftrightsu.scala 34:11:@50.4]
  wire  _T_75; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:43:@52.4]
  wire  _T_76; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:35:@53.4]
  wire  point5; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:21:@54.4]
  wire [31:0] _T_78; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:29:@56.4]
  wire [31:0] _GEN_0; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:46:@57.4]
  wire [32:0] _T_79; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:46:@57.4]
  wire [31:0] data_round; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:46:@58.4]
  wire [16:0] _T_81; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:49:@60.4]
  wire [16:0] _T_82; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:75:@61.4]
  wire  _T_84; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:75:@62.4]
  wire  _T_85; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:37:@63.4]
  wire  _T_86; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:35:@64.4]
  wire  _T_90; // @[NV_NVDLA_HLS_shiftrightsu.scala 41:75:@67.4]
  wire  _T_91; // @[NV_NVDLA_HLS_shiftrightsu.scala 41:35:@68.4]
  wire  _T_92; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:82:@69.4]
  wire [30:0] _T_94; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:52:@71.4]
  wire [31:0] _T_95; // @[Cat.scala 30:58:@72.4]
  wire [31:0] _T_96; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:86:@73.4]
  wire  _T_98; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:86:@74.4]
  wire  _T_99; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:35:@75.4]
  wire  tru_need_sat; // @[NV_NVDLA_HLS_shiftrightsu.scala 41:81:@76.4]
  wire [31:0] data_max; // @[NV_NVDLA_HLS_shiftrightsu.scala 44:20:@83.4]
  wire  _T_118; // @[NV_NVDLA_HLS_shiftrightsu.scala 46:37:@85.4]
  wire [31:0] _T_124; // @[NV_NVDLA_HLS_shiftrightsu.scala 46:81:@87.4]
  assign data_sign = data_in[48]; // @[NV_NVDLA_HLS_shiftrightsu.scala 26:28:@17.4]
  assign _T_24 = data_sign ? 49'h1ffffffffffff : 49'h0; // @[Bitwise.scala 72:12:@20.4]
  assign _T_31 = {_T_24,data_in,49'h0}; // @[Cat.scala 30:58:@23.4]
  assign _T_32 = _T_31 >> shift_num; // @[NV_NVDLA_HLS_shiftrightsu.scala 28:87:@24.4]
  assign data_shift = _T_32[97:49]; // @[NV_NVDLA_HLS_shiftrightsu.scala 30:104:@33.4]
  assign guide = _T_32[48]; // @[NV_NVDLA_HLS_shiftrightsu.scala 32:99:@41.4]
  assign _T_72 = _T_32[47:0]; // @[NV_NVDLA_HLS_shiftrightsu.scala 34:99:@49.4]
  assign _T_73 = ~ data_sign; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:24:@51.4]
  assign stick = {{1'd0}, _T_72}; // @[NV_NVDLA_HLS_shiftrightsu.scala 18:21:@10.4 NV_NVDLA_HLS_shiftrightsu.scala 34:11:@50.4]
  assign _T_75 = stick != 49'h0; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:43:@52.4]
  assign _T_76 = _T_73 | _T_75; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:35:@53.4]
  assign point5 = guide & _T_76; // @[NV_NVDLA_HLS_shiftrightsu.scala 36:21:@54.4]
  assign _T_78 = data_shift[31:0]; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:29:@56.4]
  assign _GEN_0 = {{31'd0}, point5}; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:46:@57.4]
  assign _T_79 = _T_78 + _GEN_0; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:46:@57.4]
  assign data_round = _T_78 + _GEN_0; // @[NV_NVDLA_HLS_shiftrightsu.scala 38:46:@58.4]
  assign _T_81 = data_shift[47:31]; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:49:@60.4]
  assign _T_82 = ~ _T_81; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:75:@61.4]
  assign _T_84 = _T_82 == 17'h0; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:75:@62.4]
  assign _T_85 = ~ _T_84; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:37:@63.4]
  assign _T_86 = data_sign & _T_85; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:35:@64.4]
  assign _T_90 = _T_81 != 17'h0; // @[NV_NVDLA_HLS_shiftrightsu.scala 41:75:@67.4]
  assign _T_91 = _T_73 & _T_90; // @[NV_NVDLA_HLS_shiftrightsu.scala 41:35:@68.4]
  assign _T_92 = _T_86 | _T_91; // @[NV_NVDLA_HLS_shiftrightsu.scala 40:82:@69.4]
  assign _T_94 = data_shift[30:0]; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:52:@71.4]
  assign _T_95 = {_T_94,point5}; // @[Cat.scala 30:58:@72.4]
  assign _T_96 = ~ _T_95; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:86:@73.4]
  assign _T_98 = _T_96 == 32'h0; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:86:@74.4]
  assign _T_99 = _T_73 & _T_98; // @[NV_NVDLA_HLS_shiftrightsu.scala 42:35:@75.4]
  assign tru_need_sat = _T_92 | _T_99; // @[NV_NVDLA_HLS_shiftrightsu.scala 41:81:@76.4]
  assign data_max = data_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_HLS_shiftrightsu.scala 44:20:@83.4]
  assign _T_118 = shift_num >= 6'h31; // @[NV_NVDLA_HLS_shiftrightsu.scala 46:37:@85.4]
  assign _T_124 = tru_need_sat ? data_max : data_round; // @[NV_NVDLA_HLS_shiftrightsu.scala 46:81:@87.4]
  assign data_out = _T_118 ? 32'h0 : _T_124; // @[NV_NVDLA_HLS_shiftrightsu.scala 46:17:@89.4]
endmodule


// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_HLS_shiftrightsu.v

module NV_NVDLA_HLS_shiftrightsu (
   data_in
  ,shift_num
  ,data_out
  );

parameter  IN_WIDTH  = 49;
parameter  OUT_WIDTH = 32;
parameter  SHIFT_WIDTH   = 6;


input   [IN_WIDTH-1:0]    data_in;
input   [SHIFT_WIDTH-1:0] shift_num;
output  [OUT_WIDTH-1:0]   data_out;

wire    [IN_WIDTH-1:0]    data_high;
wire    [IN_WIDTH-1:0]    data_shift;
wire    [IN_WIDTH-2:0]    stick;
wire    [OUT_WIDTH-1:0]   data_max;
wire    [OUT_WIDTH-1:0]   data_round;
wire                      data_sign;
wire                      guide;
wire                      point5;
wire                      mon_round_c;
wire                      tru_need_sat;


// synoff nets

// monitor nets

// debug nets

// tie high nets

// tie low nets

// no connect nets

// not all bits used nets

// todo nets

    

assign  data_sign = data_in[IN_WIDTH-1];

assign {data_high[((IN_WIDTH) - 1):0], data_shift[((IN_WIDTH) - 1):0], guide, stick[((IN_WIDTH-1) - 1):0]} = {{IN_WIDTH{data_sign}},data_in,{IN_WIDTH{1'b0}}} >> shift_num[((SHIFT_WIDTH) - 1):0];
//assign {data_shift[::range(IN_WIDTH)], guide, stick[::range(IN_WIDTH-1)]} = ($signed({data_in,{IN_WIDTH{1'b0}}}) >>> shift_num[::range(SHIFT_WIDTH)]);

assign point5 = guide & (~data_sign | (|stick));

assign {mon_round_c,data_round[((OUT_WIDTH) - 1):0]} = data_shift[((OUT_WIDTH) - 1):0] + point5;

assign tru_need_sat = ( data_sign & ~(&data_shift[IN_WIDTH-2:OUT_WIDTH-1])) |
                      (~data_sign &  (|data_shift[IN_WIDTH-2:OUT_WIDTH-1])) |
                      (~data_sign & (&{data_shift[((OUT_WIDTH-1) - 1):0], point5}));

assign data_max = data_sign ? {1'b1, {(OUT_WIDTH-1){1'b0}}} : ~{1'b1, {(OUT_WIDTH-1){1'b0}}};

assign data_out = (shift_num >= IN_WIDTH) ? {(OUT_WIDTH){1'b0}} :  tru_need_sat ? data_max : data_round;

endmodule // NV_NVDLA_HLS_shiftrightsu

