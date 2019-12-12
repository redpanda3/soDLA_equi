module nv_ram_rws( // @[:@3.2]
  input          clk, // @[:@6.4]
  input          re, // @[:@6.4]
  input          we, // @[:@6.4]
  input  [6:0]   ra, // @[:@6.4]
  input  [6:0]   wa, // @[:@6.4]
  input  [127:0] di, // @[:@6.4]
  output [127:0] dout // @[:@6.4]
);


  reg [127:0] mem [0:127]; // @[nv_ram_rws.scala 28:26:@8.4]
  reg [127:0] _RAND_0;
  wire [127:0] mem__T_27_data; // @[nv_ram_rws.scala 28:26:@8.4]
  wire [6:0] mem__T_27_addr; // @[nv_ram_rws.scala 28:26:@8.4]
  wire [127:0] mem__T_21_data; // @[nv_ram_rws.scala 28:26:@8.4]
  wire [6:0] mem__T_21_addr; // @[nv_ram_rws.scala 28:26:@8.4]
  wire  mem__T_21_mask; // @[nv_ram_rws.scala 28:26:@8.4]
  wire  mem__T_21_en; // @[nv_ram_rws.scala 28:26:@8.4]
  wire  _GEN_10; // @[nv_ram_rws.scala 30:18:@9.4]
  reg [6:0] mem__T_27_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_13;
  assign mem__T_27_addr = mem__T_27_addr_pipe_0;
  assign mem__T_27_data = mem[mem__T_27_addr]; // @[nv_ram_rws.scala 28:26:@8.4]
  assign mem__T_21_data = di;
  assign mem__T_21_addr = wa;
  assign mem__T_21_mask = 1'h1;
  assign mem__T_21_en = we;
  assign _GEN_10 = we ? 1'h0 : re; // @[nv_ram_rws.scala 30:18:@9.4]
  assign dout = mem__T_27_data; // @[nv_ram_rws.scala 35:17:@23.6]
  assign _GEN_13 = _GEN_10;
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
  _RAND_0 = {4{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    mem[initvar] = _RAND_0[127:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem__T_27_addr_pipe_0 = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clk) begin
    if(mem__T_21_en & mem__T_21_mask) begin
      mem[mem__T_21_addr] <= mem__T_21_data; // @[nv_ram_rws.scala 28:26:@8.4]
    end
    if (_GEN_13) begin
      mem__T_27_addr_pipe_0 <= ra;
    end
  end
endmodule


module nv_ram_rws_128x128 ( 
		clk,
		ra,
		re,
		dout,
		wa,
		we,
		di
);

parameter FORCE_CONTENTION_ASSERTION_RESET_ACTIVE=1'b0;

// port list
input			clk;
input	[6:0]	ra;
input			re;
output	[127:0]	dout;
input	[6:0]	wa;
input			we;
input	[127:0]	di;

//reg and wire list
reg		[6:0]	ra_d;
wire	[127:0]	dout;
reg		[127:0]	M	[127:0];

always @( posedge clk ) begin
    if (we)
       M[wa] <= di;
end
 
always @( posedge clk ) begin
    if (re) 
       ra_d <= ra;
end
assign  dout = M[ra_d];

endmodule
