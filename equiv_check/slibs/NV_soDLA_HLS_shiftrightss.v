module NV_soDLA_HLS_shiftrightss( // @[:@3.2]
  input  [48:0] data_in, // @[:@6.4]
  input  [5:0]  shift_num, // @[:@6.4]
  output [31:0] data_out // @[:@6.4]
);
  wire  data_sign; // @[NV_NVDLA_HLS_shiftrightss.scala 37:28:@23.4]
  wire  shift_sign; // @[NV_NVDLA_HLS_shiftrightss.scala 38:31:@25.4]
  wire [5:0] _T_28; // @[NV_NVDLA_HLS_shiftrightss.scala 41:22:@27.4]
  wire [6:0] _T_30; // @[NV_NVDLA_HLS_shiftrightss.scala 41:36:@28.4]
  wire [5:0] shift_num_abs; // @[NV_NVDLA_HLS_shiftrightss.scala 41:36:@29.4]
  wire [31:0] _T_35; // @[Bitwise.scala 72:12:@32.4]
  wire [80:0] _T_36; // @[Cat.scala 30:58:@33.4]
  wire [143:0] _GEN_0; // @[NV_NVDLA_HLS_shiftrightss.scala 43:63:@34.4]
  wire [143:0] _T_37; // @[NV_NVDLA_HLS_shiftrightss.scala 43:63:@34.4]
  wire [48:0] data_high; // @[NV_NVDLA_HLS_shiftrightss.scala 43:80:@35.4]
  wire [31:0] data_shift_l; // @[NV_NVDLA_HLS_shiftrightss.scala 45:83:@41.4]
  wire [80:0] _T_46; // @[Cat.scala 30:58:@43.4]
  wire [49:0] _T_50; // @[Bitwise.scala 72:12:@45.4]
  wire [80:0] _GEN_2; // @[NV_NVDLA_HLS_shiftrightss.scala 47:65:@46.4]
  wire  _T_51; // @[NV_NVDLA_HLS_shiftrightss.scala 47:65:@46.4]
  wire  left_shift_sat; // @[NV_NVDLA_HLS_shiftrightss.scala 47:34:@47.4]
  wire [48:0] _T_56; // @[Bitwise.scala 72:12:@50.4]
  wire [146:0] _T_63; // @[Cat.scala 30:58:@53.4]
  wire [146:0] _T_64; // @[NV_NVDLA_HLS_shiftrightss.scala 51:88:@54.4]
  wire [48:0] data_shift_rt; // @[NV_NVDLA_HLS_shiftrightss.scala 53:107:@63.4]
  wire  guide; // @[NV_NVDLA_HLS_shiftrightss.scala 55:99:@71.4]
  wire [47:0] stick; // @[NV_NVDLA_HLS_shiftrightss.scala 57:99:@79.4]
  wire  _T_106; // @[NV_NVDLA_HLS_shiftrightss.scala 59:38:@81.4]
  wire [48:0] data_shift_r; // @[NV_NVDLA_HLS_shiftrightss.scala 59:24:@83.4]
  wire  _T_116; // @[NV_NVDLA_HLS_shiftrightss.scala 61:65:@86.4]
  wire  _T_118; // @[NV_NVDLA_HLS_shiftrightss.scala 61:84:@87.4]
  wire  _T_119; // @[NV_NVDLA_HLS_shiftrightss.scala 61:76:@88.4]
  wire  _T_120; // @[NV_NVDLA_HLS_shiftrightss.scala 61:62:@89.4]
  wire  point5; // @[NV_NVDLA_HLS_shiftrightss.scala 61:18:@90.4]
  wire [31:0] _T_122; // @[NV_NVDLA_HLS_shiftrightss.scala 63:32:@92.4]
  wire [31:0] _GEN_3; // @[NV_NVDLA_HLS_shiftrightss.scala 63:49:@93.4]
  wire [32:0] _T_123; // @[NV_NVDLA_HLS_shiftrightss.scala 63:49:@93.4]
  wire [31:0] data_round; // @[NV_NVDLA_HLS_shiftrightss.scala 63:49:@94.4]
  wire  _T_127; // @[NV_NVDLA_HLS_shiftrightss.scala 65:24:@97.4]
  wire [16:0] _T_128; // @[NV_NVDLA_HLS_shiftrightss.scala 66:51:@98.4]
  wire [16:0] _T_129; // @[NV_NVDLA_HLS_shiftrightss.scala 66:77:@99.4]
  wire  _T_131; // @[NV_NVDLA_HLS_shiftrightss.scala 66:77:@100.4]
  wire  _T_132; // @[NV_NVDLA_HLS_shiftrightss.scala 66:37:@101.4]
  wire  _T_133; // @[NV_NVDLA_HLS_shiftrightss.scala 66:35:@102.4]
  wire  _T_134; // @[NV_NVDLA_HLS_shiftrightss.scala 65:36:@103.4]
  wire  _T_138; // @[NV_NVDLA_HLS_shiftrightss.scala 67:77:@106.4]
  wire  _T_139; // @[NV_NVDLA_HLS_shiftrightss.scala 67:35:@107.4]
  wire  _T_140; // @[NV_NVDLA_HLS_shiftrightss.scala 66:84:@108.4]
  wire [30:0] _T_142; // @[NV_NVDLA_HLS_shiftrightss.scala 68:54:@110.4]
  wire [31:0] _T_143; // @[Cat.scala 30:58:@111.4]
  wire [31:0] _T_144; // @[NV_NVDLA_HLS_shiftrightss.scala 68:88:@112.4]
  wire  _T_146; // @[NV_NVDLA_HLS_shiftrightss.scala 68:88:@113.4]
  wire  _T_147; // @[NV_NVDLA_HLS_shiftrightss.scala 68:35:@114.4]
  wire  right_shift_sat; // @[NV_NVDLA_HLS_shiftrightss.scala 67:83:@115.4]
  wire [31:0] data_max; // @[NV_NVDLA_HLS_shiftrightss.scala 70:20:@122.4]
  wire  _T_165; // @[NV_NVDLA_HLS_shiftrightss.scala 72:39:@124.4]
  wire [31:0] _T_166; // @[NV_NVDLA_HLS_shiftrightss.scala 72:71:@125.4]
  assign data_sign = data_in[48]; // @[NV_NVDLA_HLS_shiftrightss.scala 37:28:@23.4]
  assign shift_sign = shift_num[5]; // @[NV_NVDLA_HLS_shiftrightss.scala 38:31:@25.4]
  assign _T_28 = ~ shift_num; // @[NV_NVDLA_HLS_shiftrightss.scala 41:22:@27.4]
  assign _T_30 = _T_28 + 6'h1; // @[NV_NVDLA_HLS_shiftrightss.scala 41:36:@28.4]
  assign shift_num_abs = _T_28 + 6'h1; // @[NV_NVDLA_HLS_shiftrightss.scala 41:36:@29.4]
  assign _T_35 = data_sign ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@32.4]
  assign _T_36 = {_T_35,data_in}; // @[Cat.scala 30:58:@33.4]
  assign _GEN_0 = {{63'd0}, _T_36}; // @[NV_NVDLA_HLS_shiftrightss.scala 43:63:@34.4]
  assign _T_37 = _GEN_0 << shift_num_abs; // @[NV_NVDLA_HLS_shiftrightss.scala 43:63:@34.4]
  assign data_high = _T_37[80:32]; // @[NV_NVDLA_HLS_shiftrightss.scala 43:80:@35.4]
  assign data_shift_l = _T_37[31:0]; // @[NV_NVDLA_HLS_shiftrightss.scala 45:83:@41.4]
  assign _T_46 = {data_high,data_shift_l}; // @[Cat.scala 30:58:@43.4]
  assign _T_50 = data_sign ? 50'h3ffffffffffff : 50'h0; // @[Bitwise.scala 72:12:@45.4]
  assign _GEN_2 = {{31'd0}, _T_50}; // @[NV_NVDLA_HLS_shiftrightss.scala 47:65:@46.4]
  assign _T_51 = _T_46 != _GEN_2; // @[NV_NVDLA_HLS_shiftrightss.scala 47:65:@46.4]
  assign left_shift_sat = shift_sign & _T_51; // @[NV_NVDLA_HLS_shiftrightss.scala 47:34:@47.4]
  assign _T_56 = data_sign ? 49'h1ffffffffffff : 49'h0; // @[Bitwise.scala 72:12:@50.4]
  assign _T_63 = {_T_56,data_in,49'h0}; // @[Cat.scala 30:58:@53.4]
  assign _T_64 = _T_63 >> shift_num; // @[NV_NVDLA_HLS_shiftrightss.scala 51:88:@54.4]
  assign data_shift_rt = _T_64[97:49]; // @[NV_NVDLA_HLS_shiftrightss.scala 53:107:@63.4]
  assign guide = _T_64[48]; // @[NV_NVDLA_HLS_shiftrightss.scala 55:99:@71.4]
  assign stick = _T_64[47:0]; // @[NV_NVDLA_HLS_shiftrightss.scala 57:99:@79.4]
  assign _T_106 = shift_num >= 6'h31; // @[NV_NVDLA_HLS_shiftrightss.scala 59:38:@81.4]
  assign data_shift_r = _T_106 ? 49'h0 : data_shift_rt; // @[NV_NVDLA_HLS_shiftrightss.scala 59:24:@83.4]
  assign _T_116 = ~ data_sign; // @[NV_NVDLA_HLS_shiftrightss.scala 61:65:@86.4]
  assign _T_118 = stick != 48'h0; // @[NV_NVDLA_HLS_shiftrightss.scala 61:84:@87.4]
  assign _T_119 = _T_116 | _T_118; // @[NV_NVDLA_HLS_shiftrightss.scala 61:76:@88.4]
  assign _T_120 = guide & _T_119; // @[NV_NVDLA_HLS_shiftrightss.scala 61:62:@89.4]
  assign point5 = _T_106 ? 1'h0 : _T_120; // @[NV_NVDLA_HLS_shiftrightss.scala 61:18:@90.4]
  assign _T_122 = data_shift_r[31:0]; // @[NV_NVDLA_HLS_shiftrightss.scala 63:32:@92.4]
  assign _GEN_3 = {{31'd0}, point5}; // @[NV_NVDLA_HLS_shiftrightss.scala 63:49:@93.4]
  assign _T_123 = _T_122 + _GEN_3; // @[NV_NVDLA_HLS_shiftrightss.scala 63:49:@93.4]
  assign data_round = _T_122 + _GEN_3; // @[NV_NVDLA_HLS_shiftrightss.scala 63:49:@94.4]
  assign _T_127 = shift_sign == 1'h0; // @[NV_NVDLA_HLS_shiftrightss.scala 65:24:@97.4]
  assign _T_128 = data_shift_r[47:31]; // @[NV_NVDLA_HLS_shiftrightss.scala 66:51:@98.4]
  assign _T_129 = ~ _T_128; // @[NV_NVDLA_HLS_shiftrightss.scala 66:77:@99.4]
  assign _T_131 = _T_129 == 17'h0; // @[NV_NVDLA_HLS_shiftrightss.scala 66:77:@100.4]
  assign _T_132 = ~ _T_131; // @[NV_NVDLA_HLS_shiftrightss.scala 66:37:@101.4]
  assign _T_133 = data_sign & _T_132; // @[NV_NVDLA_HLS_shiftrightss.scala 66:35:@102.4]
  assign _T_134 = _T_127 & _T_133; // @[NV_NVDLA_HLS_shiftrightss.scala 65:36:@103.4]
  assign _T_138 = _T_128 != 17'h0; // @[NV_NVDLA_HLS_shiftrightss.scala 67:77:@106.4]
  assign _T_139 = _T_116 & _T_138; // @[NV_NVDLA_HLS_shiftrightss.scala 67:35:@107.4]
  assign _T_140 = _T_134 | _T_139; // @[NV_NVDLA_HLS_shiftrightss.scala 66:84:@108.4]
  assign _T_142 = data_shift_r[30:0]; // @[NV_NVDLA_HLS_shiftrightss.scala 68:54:@110.4]
  assign _T_143 = {_T_142,point5}; // @[Cat.scala 30:58:@111.4]
  assign _T_144 = ~ _T_143; // @[NV_NVDLA_HLS_shiftrightss.scala 68:88:@112.4]
  assign _T_146 = _T_144 == 32'h0; // @[NV_NVDLA_HLS_shiftrightss.scala 68:88:@113.4]
  assign _T_147 = _T_116 & _T_146; // @[NV_NVDLA_HLS_shiftrightss.scala 68:35:@114.4]
  assign right_shift_sat = _T_140 | _T_147; // @[NV_NVDLA_HLS_shiftrightss.scala 67:83:@115.4]
  assign data_max = data_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_HLS_shiftrightss.scala 70:20:@122.4]
  assign _T_165 = left_shift_sat | right_shift_sat; // @[NV_NVDLA_HLS_shiftrightss.scala 72:39:@124.4]
  assign _T_166 = shift_sign ? data_shift_l : data_round; // @[NV_NVDLA_HLS_shiftrightss.scala 72:71:@125.4]
  assign data_out = _T_165 ? data_max : _T_166; // @[NV_NVDLA_HLS_shiftrightss.scala 72:17:@127.4]
endmodule


// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_HLS_shiftrightss.v

module NV_NVDLA_HLS_shiftrightss (
   data_in
  ,shift_num
  ,data_out
  );

parameter  IN_WIDTH  = 49;
parameter  OUT_WIDTH = 32;
parameter  SHIFT_WIDTH = 6;
parameter  SHIFT_MAX   = 1<<(SHIFT_WIDTH-1);
parameter  HIGH_WIDTH  = SHIFT_MAX+IN_WIDTH-OUT_WIDTH;


input   [IN_WIDTH-1:0]    data_in;              //signed 
input   [SHIFT_WIDTH-1:0] shift_num;            //signed
output  [OUT_WIDTH-1:0]   data_out;

wire    [OUT_WIDTH-1:0]   data_shift_l;
wire    [HIGH_WIDTH-1:0]  data_high;
wire    [IN_WIDTH-1:0]    data_highr;
wire    [IN_WIDTH-1:0]    data_shift_rt;
wire    [IN_WIDTH-1:0]    data_shift_r;
wire    [IN_WIDTH-2:0]    stick;
wire    [OUT_WIDTH-1:0]   data_max;
wire    [OUT_WIDTH-1:0]   data_round;
wire                      shift_sign;
wire                      data_sign;
wire                      guide;
wire                      point5;
wire                      mon_round_c;
wire                      left_shift_sat;
wire                      right_shift_sat;

wire [5:0] shift_num_abs;

// synoff nets

// monitor nets

// debug nets

// tie high nets

// tie low nets

// no connect nets

// not all bits used nets

// todo nets

    

assign  data_sign  = data_in[IN_WIDTH-1];
assign  shift_sign = shift_num[SHIFT_WIDTH-1];

//shift left
assign  shift_num_abs[SHIFT_WIDTH-1:0] = ~shift_num[SHIFT_WIDTH-1:0] + 1;

assign {data_high[((HIGH_WIDTH) - 1):0],data_shift_l[((OUT_WIDTH) - 1):0]} = {{SHIFT_MAX{data_sign}},data_in} << shift_num_abs[((SHIFT_WIDTH) - 1):0];

assign left_shift_sat = shift_sign & {data_high,data_shift_l[OUT_WIDTH-1]} != {(HIGH_WIDTH+1){data_sign}};

//shift right
assign {data_highr[((IN_WIDTH) - 1):0],data_shift_rt[((IN_WIDTH) - 1):0], guide, stick[((IN_WIDTH-1) - 1):0]} = {{IN_WIDTH{data_sign}},data_in,{IN_WIDTH{1'b0}}} >> shift_num[((SHIFT_WIDTH) - 1):0];
//assign {data_shift_rt[::range(IN_WIDTH)], guide, stick[::range(IN_WIDTH-1)]} = ($signed({data_in,{IN_WIDTH{1'b0}}}) >>> shift_num[::range(SHIFT_WIDTH)]);

assign  data_shift_r[((IN_WIDTH) - 1):0] = shift_num >= IN_WIDTH ? {IN_WIDTH{1'b0}} : data_shift_rt[((IN_WIDTH) - 1):0];

assign point5 =  shift_num >= IN_WIDTH ? 1'b0 :  guide & (~data_sign | (|stick));

assign {mon_round_c,data_round[((OUT_WIDTH) - 1):0]} = data_shift_r[((OUT_WIDTH) - 1):0] + point5;

assign right_shift_sat = !shift_sign &
                        (( data_sign & ~(&data_shift_r[IN_WIDTH-2:OUT_WIDTH-1])) |
                         (~data_sign &  (|data_shift_r[IN_WIDTH-2:OUT_WIDTH-1])) |
                         (~data_sign & (&{data_shift_r[((OUT_WIDTH-1) - 1):0], point5})));

assign data_max = data_sign ? {1'b1, {(OUT_WIDTH-1){1'b0}}} : ~{1'b1, {(OUT_WIDTH-1){1'b0}}};

assign data_out = (left_shift_sat | right_shift_sat) ? data_max : shift_sign ? data_shift_l : data_round;

endmodule // NV_NVDLA_HLS_shiftrightss

