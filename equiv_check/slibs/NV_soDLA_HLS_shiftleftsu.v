module NV_soDLA_HLS_shiftleftsu( // @[:@3.2]
  input  [15:0] data_in, // @[:@6.4]
  input  [5:0]  shift_num, // @[:@6.4]
  output [31:0] data_out // @[:@6.4]
);
  wire  data_sign; // @[NV_NVDLA_HLS_shiftleftsu.scala 25:28:@13.4]
  wire [62:0] _T_20; // @[Bitwise.scala 72:12:@16.4]
  wire [78:0] _T_21; // @[Cat.scala 30:58:@17.4]
  wire [141:0] _GEN_0; // @[NV_NVDLA_HLS_shiftleftsu.scala 27:63:@18.4]
  wire [141:0] _T_22; // @[NV_NVDLA_HLS_shiftleftsu.scala 27:63:@18.4]
  wire [46:0] data_high; // @[NV_NVDLA_HLS_shiftleftsu.scala 27:79:@19.4]
  wire [31:0] data_shift; // @[NV_NVDLA_HLS_shiftleftsu.scala 29:80:@25.4]
  wire [78:0] _T_31; // @[Cat.scala 30:58:@27.4]
  wire [47:0] _T_35; // @[Bitwise.scala 72:12:@29.4]
  wire [78:0] _GEN_2; // @[NV_NVDLA_HLS_shiftleftsu.scala 31:50:@30.4]
  wire  left_shift_sat; // @[NV_NVDLA_HLS_shiftleftsu.scala 31:50:@30.4]
  wire [31:0] data_max; // @[NV_NVDLA_HLS_shiftleftsu.scala 33:20:@37.4]
  assign data_sign = data_in[15]; // @[NV_NVDLA_HLS_shiftleftsu.scala 25:28:@13.4]
  assign _T_20 = data_sign ? 63'h7fffffffffffffff : 63'h0; // @[Bitwise.scala 72:12:@16.4]
  assign _T_21 = {_T_20,data_in}; // @[Cat.scala 30:58:@17.4]
  assign _GEN_0 = {{63'd0}, _T_21}; // @[NV_NVDLA_HLS_shiftleftsu.scala 27:63:@18.4]
  assign _T_22 = _GEN_0 << shift_num; // @[NV_NVDLA_HLS_shiftleftsu.scala 27:63:@18.4]
  assign data_high = _T_22[78:32]; // @[NV_NVDLA_HLS_shiftleftsu.scala 27:79:@19.4]
  assign data_shift = _T_22[31:0]; // @[NV_NVDLA_HLS_shiftleftsu.scala 29:80:@25.4]
  assign _T_31 = {data_high,data_shift}; // @[Cat.scala 30:58:@27.4]
  assign _T_35 = data_sign ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12:@29.4]
  assign _GEN_2 = {{31'd0}, _T_35}; // @[NV_NVDLA_HLS_shiftleftsu.scala 31:50:@30.4]
  assign left_shift_sat = _T_31 != _GEN_2; // @[NV_NVDLA_HLS_shiftleftsu.scala 31:50:@30.4]
  assign data_max = data_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_HLS_shiftleftsu.scala 33:20:@37.4]
  assign data_out = left_shift_sat ? data_max : data_shift; // @[NV_NVDLA_HLS_shiftleftsu.scala 35:17:@40.4]
endmodule

module NV_NVDLA_HLS_shiftleftsu (
   data_in
  ,shift_num
  ,data_out
  );

parameter  IN_WIDTH  = 16;
parameter  OUT_WIDTH = 32;
parameter  SHIFT_WIDTH = 6;
parameter  SHIFT_MAX   = (1<<SHIFT_WIDTH)-1;
parameter  HIGH_WIDTH  = SHIFT_MAX+IN_WIDTH-OUT_WIDTH;


input   [IN_WIDTH-1:0]    data_in;
input   [SHIFT_WIDTH-1:0] shift_num;
output  [OUT_WIDTH-1:0]   data_out;

wire    [HIGH_WIDTH-1:0]  data_high;
wire    [OUT_WIDTH-1:0]   data_shift;
wire    [OUT_WIDTH-1:0]   data_max;
wire                      data_sign;
wire                      left_shift_sat;


// synoff nets

// monitor nets

// debug nets

// tie high nets

// tie low nets

// no connect nets

// not all bits used nets

// todo nets

    
assign  data_sign = data_in[IN_WIDTH-1];

assign {data_high[((HIGH_WIDTH) - 1):0],data_shift[((OUT_WIDTH) - 1):0]} = {{SHIFT_MAX{data_sign}},data_in} << shift_num[((SHIFT_WIDTH) - 1):0];

assign left_shift_sat = {data_high[((HIGH_WIDTH) - 1):0],data_shift[OUT_WIDTH-1]} != {(HIGH_WIDTH+1){data_sign}};

assign data_max = data_sign ? {1'b1, {(OUT_WIDTH-1){1'b0}}} : ~{1'b1, {(OUT_WIDTH-1){1'b0}}};

assign data_out = left_shift_sat ? data_max : data_shift;

endmodule // NV_NVDLA_HLS_shiftleftsu

