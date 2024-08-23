module _ANDNOT_ (output Y, input B, input A);
assign Y = (A&(!B));
endmodule

module _AND_ (output Y, input B, input A);
assign Y = (A&B);
endmodule

module _AOI3_ (output Y, input C, input B, input A);
assign Y = (!((A&B)|C));
endmodule

module _AOI4_ (output Y, input D, input C, input B, input A);
assign Y = (!((A&B)|(C&D)));
endmodule

module _BUF_ (output Y, input A);
assign Y = A;
endmodule

module _DFF_N_ (output Q, input C, input D);
reg IQ; always @(posedge C) IQ <= ~D; assign Q = IQ;
endmodule

module _DFF_PP0_ (output Q, input R, input C, input D);
reg IQ; always @(posedge C) IQ <= ~D; assign Q = IQ;
endmodule

module _DFF_PP1_ (output Q, input R, input C, input D);
reg IQ; always @(posedge C) IQ <= ~D; assign Q = IQ;
endmodule

module _MUX16_ (output Y, input V, input U, input T, input S, input P, input O, input N, input M, input L, input K, input J, input I, input H, input G, input F, input E, input D, input C, input B, input A);
assign Y = ((V&((U&((T&((S&A)|(B&(!S))))|(((S&C)|(D&(!S)))&(!T))))|(((T&((S&E)|(F&(!S))))|(((S&G)|(H&(!S)))&(!T)))&(!U))))|(((U&((T&((S&I)|(J&(!S))))|(((S&K)|(L&(!S)))&(!T))))|(((T&((S&M)|(N&(!S))))|(((S&O)|(P&(!S)))&(!T)))&(!U)))&(!V)));
endmodule

module _MUX4_ (output Y, input T, input S, input D, input C, input B, input A);
assign Y = ((T&((S&A)|(B&(!S))))|(((S&C)|(D&(!S)))&(!T)));
endmodule

module _MUX8_ (output Y, input U, input T, input S, input H, input G, input F, input E, input D, input C, input B, input A);
assign Y = ((U&((T&((S&A)|(B&(!S))))|(((S&C)|(D&(!S)))&(!T))))|(((T&((S&E)|(F&(!S))))|(((S&G)|(H&(!S)))&(!T)))&(!U)));
endmodule

module _MUX_ (output Y, input S, input B, input A);
assign Y = ((S&A)|(B&(!S)));
endmodule

module _NAND_ (output Y, input B, input A);
assign Y = (!(A&B));
endmodule

module _NMUX_ (output Y, input S, input B, input A);
assign Y = ((S&(!A))|((!B)&(!S)));
endmodule

module _NOR_ (output Y, input B, input A);
assign Y = (!(A|B));
endmodule

module _NOT_ (output Y, input A);
assign Y = (!A);
endmodule

module _OAI3_ (output Y, input C, input B, input A);
assign Y = (!((A|B)&C));
endmodule

module _OAI4_ (output Y, input D, input C, input B, input A);
assign Y = (!((A|B)&(C|D)));
endmodule

module _ORNOT_ (output Y, input B, input A);
assign Y = (A|(!B));
endmodule

module _OR_ (output Y, input B, input A);
assign Y = (A|B);
endmodule

module _TBUF_ (output Y, input E, input A);
assign Y = A;
endmodule

module _XNOR_ (output Y, input B, input A);
assign Y = (!(A^B));
endmodule

module _XOR_ (output Y, input B, input A);
assign Y = (A^B);
endmodule

