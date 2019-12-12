module nv_ram_rwsthp( // @[:@3.2]
  input          clk, // @[:@6.4]
  input          re, // @[:@6.4]
  input          we, // @[:@6.4]
  input          byp_sel, // @[:@6.4]
  input          ore, // @[:@6.4]
  input  [167:0] dbyp, // @[:@6.4]
  input  [5:0]   ra, // @[:@6.4]
  input  [5:0]   wa, // @[:@6.4]
  input  [31:0]  pwrbus_ram_pd, // @[:@6.4]
  input  [167:0] di, // @[:@6.4]
  output [167:0] dout // @[:@6.4]
);
  reg [167:0] mem [0:59]; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  reg [191:0] _RAND_0;
  wire [167:0] mem_dout_ram_data; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire [5:0] mem_dout_ram_addr; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  reg [191:0] _RAND_1;
  wire [167:0] mem__T_29_data; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire [5:0] mem__T_29_addr; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire  mem__T_29_mask; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire  mem__T_29_en; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  reg [167:0] _T_36; // @[nv_ram_rwsthp.scala 44:27:@25.8]
  reg [191:0] _RAND_2;
  wire  _GEN_11; // @[nv_ram_rwsthp.scala 36:14:@9.4]
  reg [5:0] mem_dout_ram_addr_pipe_0;
  reg [31:0] _RAND_3;
  wire  _GEN_14;
  assign mem_dout_ram_addr = mem_dout_ram_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_dout_ram_data = mem[mem_dout_ram_addr]; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  `else
  assign mem_dout_ram_data = mem_dout_ram_addr >= 6'h3c ? _RAND_1[167:0] : mem[mem_dout_ram_addr]; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem__T_29_data = di;
  assign mem__T_29_addr = wa;
  assign mem__T_29_mask = 1'h1;
  assign mem__T_29_en = we;
  assign _GEN_11 = we ? 1'h0 : re; // @[nv_ram_rwsthp.scala 36:14:@9.4]
  assign dout = _T_36; // @[nv_ram_rwsthp.scala 44:17:@27.8]
  assign _GEN_14 = _GEN_11;
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
  _RAND_0 = {6{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem[initvar] = _RAND_0[167:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {6{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {6{`RANDOM}};
  _T_36 = _RAND_2[167:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mem_dout_ram_addr_pipe_0 = _RAND_3[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clk) begin
    if(mem__T_29_en & mem__T_29_mask) begin
      mem[mem__T_29_addr] <= mem__T_29_data; // @[nv_ram_rwsthp.scala 34:22:@8.4]
    end
    if (byp_sel) begin
      _T_36 <= dbyp;
    end else begin
      _T_36 <= mem_dout_ram_data;
    end
    if (_GEN_14) begin
      mem_dout_ram_addr_pipe_0 <= ra;
    end
  end
endmodule


module nv_ram_rwsthp_60x168 ( 
		clk,
		ra,
		re,
		ore,
		dout,
		wa,
		we,
		di,
		byp_sel,
		dbyp,
		pwrbus_ram_pd
);

parameter FORCE_CONTENTION_ASSERTION_RESET_ACTIVE=1'b0;

// port list
input			clk;
input	[5:0]	ra;
input			re;
input			ore;
output	[167:0]	dout;
input	[5:0]	wa;
input			we;
input	[167:0]	di;
input			byp_sel;
input	[167:0]	dbyp;
input	[31:0]	pwrbus_ram_pd;

//reg and wire list
reg		[5:0]	ra_d;
wire	[167:0]	dout;
reg		[167:0]	M	[59:0];

always @( posedge clk ) begin
    if (we)
       M[wa] <= di;
end
 
always @( posedge clk ) begin
    if (re) 
       ra_d <= ra;
end

wire	[167:0]	dout_ram = M[ra_d];

wire	[167:0]	fbypass_dout_ram = (byp_sel ? dbyp : dout_ram);

reg		[167:0]	dout_r;
always @( posedge clk ) begin
   if (ore)
       dout_r <= fbypass_dout_ram;
end

assign dout = dout_r;


endmodule