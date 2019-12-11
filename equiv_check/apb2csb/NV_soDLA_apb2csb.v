module NV_soDLA_apb2csb( // @[:@3.2]
  input         pclk, // @[:@6.4]
  input         prstn, // @[:@6.4]
  input         psel, // @[:@6.4]
  input         penable, // @[:@6.4]
  input         pwrite, // @[:@6.4]
  input  [31:0] paddr, // @[:@6.4]
  input  [31:0] pwdata, // @[:@6.4]
  output [31:0] prdata, // @[:@6.4]
  output        pready, // @[:@6.4]
  input         csb2nvdla_ready, // @[:@6.4]
  output        csb2nvdla_valid, // @[:@6.4]
  output [15:0] csb2nvdla_addr, // @[:@6.4]
  output [31:0] csb2nvdla_wdat, // @[:@6.4]
  output        csb2nvdla_write, // @[:@6.4]
  output        csb2nvdla_nposted, // @[:@6.4]
  input         nvdla2csb_valid, // @[:@6.4]
  input  [31:0] nvdla2csb_data // @[:@6.4]
);
  wire  _T_60; // @[NV_NVDLA_apb2csb.scala 45:30:@8.4]
  reg  rd_trans_low; // @[NV_NVDLA_apb2csb.scala 47:31:@9.4]
  reg [31:0] _RAND_0;
  wire  _T_63; // @[NV_NVDLA_apb2csb.scala 49:32:@10.4]
  wire  wr_trans_vld; // @[NV_NVDLA_apb2csb.scala 49:45:@11.4]
  wire  _T_66; // @[NV_NVDLA_apb2csb.scala 50:47:@13.4]
  wire  rd_trans_vld; // @[NV_NVDLA_apb2csb.scala 50:45:@14.4]
  wire  _T_67; // @[NV_NVDLA_apb2csb.scala 52:29:@15.4]
  wire  _T_69; // @[NV_NVDLA_apb2csb.scala 55:34:@20.6]
  wire  _GEN_0; // @[NV_NVDLA_apb2csb.scala 55:49:@21.6]
  wire  _GEN_1; // @[NV_NVDLA_apb2csb.scala 52:44:@16.4]
  wire  _T_72; // @[NV_NVDLA_apb2csb.scala 59:57:@24.4]
  wire  _T_73; // @[NV_NVDLA_apb2csb.scala 59:55:@25.4]
  wire  _T_79; // @[NV_NVDLA_apb2csb.scala 66:34:@35.4]
  wire  _T_80; // @[NV_NVDLA_apb2csb.scala 66:32:@36.4]
  wire  _T_82; // @[NV_NVDLA_apb2csb.scala 66:69:@37.4]
  wire  _T_83; // @[NV_NVDLA_apb2csb.scala 66:67:@38.4]
  wire  _T_84; // @[NV_NVDLA_apb2csb.scala 66:54:@39.4]
  assign _T_60 = prstn == 1'h0; // @[NV_NVDLA_apb2csb.scala 45:30:@8.4]
  assign _T_63 = psel & penable; // @[NV_NVDLA_apb2csb.scala 49:32:@10.4]
  assign wr_trans_vld = _T_63 & pwrite; // @[NV_NVDLA_apb2csb.scala 49:45:@11.4]
  assign _T_66 = pwrite == 1'h0; // @[NV_NVDLA_apb2csb.scala 50:47:@13.4]
  assign rd_trans_vld = _T_63 & _T_66; // @[NV_NVDLA_apb2csb.scala 50:45:@14.4]
  assign _T_67 = nvdla2csb_valid & rd_trans_low; // @[NV_NVDLA_apb2csb.scala 52:29:@15.4]
  assign _T_69 = csb2nvdla_ready & rd_trans_vld; // @[NV_NVDLA_apb2csb.scala 55:34:@20.6]
  assign _GEN_0 = _T_69 ? 1'h1 : rd_trans_low; // @[NV_NVDLA_apb2csb.scala 55:49:@21.6]
  assign _GEN_1 = _T_67 ? 1'h0 : _GEN_0; // @[NV_NVDLA_apb2csb.scala 52:44:@16.4]
  assign _T_72 = rd_trans_low == 1'h0; // @[NV_NVDLA_apb2csb.scala 59:57:@24.4]
  assign _T_73 = rd_trans_vld & _T_72; // @[NV_NVDLA_apb2csb.scala 59:55:@25.4]
  assign _T_79 = csb2nvdla_ready == 1'h0; // @[NV_NVDLA_apb2csb.scala 66:34:@35.4]
  assign _T_80 = wr_trans_vld & _T_79; // @[NV_NVDLA_apb2csb.scala 66:32:@36.4]
  assign _T_82 = nvdla2csb_valid == 1'h0; // @[NV_NVDLA_apb2csb.scala 66:69:@37.4]
  assign _T_83 = rd_trans_vld & _T_82; // @[NV_NVDLA_apb2csb.scala 66:67:@38.4]
  assign _T_84 = _T_80 | _T_83; // @[NV_NVDLA_apb2csb.scala 66:54:@39.4]
  assign prdata = nvdla2csb_data; // @[NV_NVDLA_apb2csb.scala 65:15:@34.4]
  assign pready = _T_84 == 1'h0; // @[NV_NVDLA_apb2csb.scala 66:15:@41.4]
  assign csb2nvdla_valid = wr_trans_vld | _T_73; // @[NV_NVDLA_apb2csb.scala 59:24:@27.4]
  assign csb2nvdla_addr = paddr[17:2]; // @[NV_NVDLA_apb2csb.scala 60:28:@29.4]
  assign csb2nvdla_wdat = pwdata; // @[NV_NVDLA_apb2csb.scala 61:28:@31.4]
  assign csb2nvdla_write = pwrite; // @[NV_NVDLA_apb2csb.scala 62:29:@32.4]
  assign csb2nvdla_nposted = 1'h0; // @[NV_NVDLA_apb2csb.scala 63:31:@33.4]
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
  rd_trans_low = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge pclk) begin
    if (_T_60) begin
      rd_trans_low <= 1'h0;
    end else begin
      if (_T_67) begin
        rd_trans_low <= 1'h0;
      end else begin
        if (_T_69) begin
          rd_trans_low <= 1'h1;
        end
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
// File Name: NV_NVDLA_apb2csb.v
module NV_NVDLA_apb2csb (
   pclk
  ,prstn
  ,csb2nvdla_ready
  ,nvdla2csb_data
  ,nvdla2csb_valid
  ,paddr
  ,penable
  ,psel
  ,pwdata
  ,pwrite
  ,csb2nvdla_addr
  ,csb2nvdla_nposted
  ,csb2nvdla_valid
  ,csb2nvdla_wdat
  ,csb2nvdla_write
  ,prdata
  ,pready
  );
input pclk;
input prstn;
//apb interface
input psel;
input penable;
input pwrite;
input [31:0] paddr;
input [31:0] pwdata;
output [31:0] prdata;
output pready;
//csb interface
output csb2nvdla_valid;
input csb2nvdla_ready;
output [15:0] csb2nvdla_addr;
output [31:0] csb2nvdla_wdat;
output csb2nvdla_write;
output csb2nvdla_nposted;
input nvdla2csb_valid;
input [31:0] nvdla2csb_data;
//input nvdla2csb_wr_complete;
reg rd_trans_low;
wire rd_trans_vld;
wire wr_trans_vld;
// synoff nets
// monitor nets
// debug nets
// tie high nets
// tie low nets
// no connect nets
// not all bits used nets
// todo nets
assign wr_trans_vld = psel & penable & pwrite;
assign rd_trans_vld = psel & penable & ~pwrite;
always @(posedge pclk or negedge prstn) begin
  if (!prstn) begin
    rd_trans_low <= 1'b0;
  end else begin
    if(nvdla2csb_valid & rd_trans_low)
        rd_trans_low <= 1'b0;
    else if (csb2nvdla_ready & rd_trans_vld)
        rd_trans_low <= 1'b1;
  end
end
assign csb2nvdla_valid = wr_trans_vld | rd_trans_vld & ~rd_trans_low;
assign csb2nvdla_addr = paddr[17:2];
assign csb2nvdla_wdat = pwdata[31:0];
assign csb2nvdla_write = pwrite;
assign csb2nvdla_nposted = 1'b0;
assign prdata = nvdla2csb_data[31:0];
assign pready = ~(wr_trans_vld & ~csb2nvdla_ready | rd_trans_vld & ~nvdla2csb_valid);
endmodule // NV_NVDLA_apb2csb
