module SO_AN2D4PO4( // @[:@3.2]
  input   A1, // @[:@6.4]
  input   A2, // @[:@6.4]
  output  Z // @[:@6.4]
);
  assign Z = A1 & A2; // @[AN2D4PO4.scala 15:8:@9.4]
endmodule


module AN2D4PO4(
A1,
A2,
Z
);

input A1,A2;
output Z;

assign Z = A1 & A2;

endmodule
