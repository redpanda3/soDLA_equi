module SO_CKLNQD12( // @[:@3.2]
  input   CP, // @[:@6.4]
  input   TE, // @[:@6.4]
  input   E, // @[:@6.4]
  output  Q // @[:@6.4]
);
  wire  _T_13; // @[CKLNQD12.scala 17:21:@8.4]
  wire  _T_16; // @[CKLNQD12.scala 17:14:@10.4]
  wire  _T_17; // @[CKLNQD12.scala 17:36:@11.4]
  reg  qd; // @[CKLNQD12.scala 18:21:@13.4]
  reg [31:0] _RAND_0;
  wire  _T_22; // @[CKLNQD12.scala 19:34:@17.4]
  assign _T_13 = $unsigned(CP); // @[CKLNQD12.scala 17:21:@8.4]
  assign _T_16 = _T_13 == 1'h0; // @[CKLNQD12.scala 17:14:@10.4]
  assign _T_17 = _T_16; // @[CKLNQD12.scala 17:36:@11.4]
  assign _T_22 = _T_13 & qd; // @[CKLNQD12.scala 19:34:@17.4]
  assign Q = _T_22; // @[CKLNQD12.scala 19:10:@19.4]
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
  qd = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge _T_17) begin
    qd <= TE | E;
  end
endmodule

module  CKLNQD12 (
	 TE
	,E
	,CP
	,Q
	);

input	 TE ;
input	 E ;
input	 CP ;
output	 Q ;

reg qd;
always @(negedge CP)
    qd <= TE | E;

assign Q = CP & qd;
endmodule
