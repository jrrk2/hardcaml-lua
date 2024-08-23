module AND2_X1 (output ZN, input A2, input A1);
assign ZN = (A1&A2);
endmodule

module AND2_X2 (output ZN, input A2, input A1);
assign ZN = (A1&A2);
endmodule

module AND2_X4 (output ZN, input A2, input A1);
assign ZN = (A1&A2);
endmodule

module AND3_X1 (output ZN, input A3, input A2, input A1);
assign ZN = ((A1&A2)&A3);
endmodule

module AND3_X2 (output ZN, input A3, input A2, input A1);
assign ZN = ((A1&A2)&A3);
endmodule

module AND3_X4 (output ZN, input A3, input A2, input A1);
assign ZN = ((A1&A2)&A3);
endmodule

module AND4_X1 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (((A1&A2)&A3)&A4);
endmodule

module AND4_X2 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (((A1&A2)&A3)&A4);
endmodule

module AND4_X4 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (((A1&A2)&A3)&A4);
endmodule

module ANTENNA_X1 (input A);

endmodule

module AOI211_X1 (output ZN, input C2, input C1, input B, input A);
assign ZN = (!(((C1&C2)|B)|A));
endmodule

module AOI211_X2 (output ZN, input C2, input C1, input B, input A);
assign ZN = (!(((C1&C2)|B)|A));
endmodule

module AOI211_X4 (output ZN, input C2, input C1, input B, input A);
assign ZN = (!(!(!(((C1&C2)|B)|A))));
endmodule

module AOI21_X1 (output ZN, input B2, input B1, input A);
assign ZN = (!(A|(B1&B2)));
endmodule

module AOI21_X2 (output ZN, input B2, input B1, input A);
assign ZN = (!(A|(B1&B2)));
endmodule

module AOI21_X4 (output ZN, input B2, input B1, input A);
assign ZN = (!(A|(B1&B2)));
endmodule

module AOI221_X1 (output ZN, input C2, input C1, input B2, input B1, input A);
assign ZN = (!(((C1&C2)|A)|(B1&B2)));
endmodule

module AOI221_X2 (output ZN, input C2, input C1, input B2, input B1, input A);
assign ZN = (!(((C1&C2)|A)|(B1&B2)));
endmodule

module AOI221_X4 (output ZN, input C2, input C1, input B2, input B1, input A);
assign ZN = (!(!(!(((C1&C2)|A)|(B1&B2)))));
endmodule

module AOI222_X1 (output ZN, input C2, input C1, input B2, input B1, input A2, input A1);
assign ZN = (!(((A1&A2)|(B1&B2))|(C1&C2)));
endmodule

module AOI222_X2 (output ZN, input C2, input C1, input B2, input B1, input A2, input A1);
assign ZN = (!(((A1&A2)|(B1&B2))|(C1&C2)));
endmodule

module AOI222_X4 (output ZN, input C2, input C1, input B2, input B1, input A2, input A1);
assign ZN = (!(!(!(((A1&A2)|(B1&B2))|(C1&C2)))));
endmodule

module AOI22_X1 (output ZN, input B2, input B1, input A2, input A1);
assign ZN = (!((A1&A2)|(B1&B2)));
endmodule

module AOI22_X2 (output ZN, input B2, input B1, input A2, input A1);
assign ZN = (!((A1&A2)|(B1&B2)));
endmodule

module AOI22_X4 (output ZN, input B2, input B1, input A2, input A1);
assign ZN = (!((A1&A2)|(B1&B2)));
endmodule

module BUF_X1 (output Z, input A);
assign Z = A;
endmodule

module BUF_X16 (output Z, input A);
assign Z = A;
endmodule

module BUF_X2 (output Z, input A);
assign Z = A;
endmodule

module BUF_X32 (output Z, input A);
assign Z = A;
endmodule

module BUF_X4 (output Z, input A);
assign Z = A;
endmodule

module BUF_X8 (output Z, input A);
assign Z = A;
endmodule

module CLKBUF_X1 (output Z, input A);
assign Z = A;
endmodule

module CLKBUF_X2 (output Z, input A);
assign Z = A;
endmodule

module CLKBUF_X3 (output Z, input A);
assign Z = A;
endmodule

module CLKGATETST_X1 (output GCK, input SE, input E, input CK);

endmodule

module CLKGATETST_X2 (output GCK, input SE, input E, input CK);

endmodule

module CLKGATETST_X4 (output GCK, input SE, input E, input CK);

endmodule

module CLKGATETST_X8 (output GCK, input SE, input E, input CK);

endmodule

module CLKGATE_X1 (output GCK, input E, input CK);

endmodule

module CLKGATE_X2 (output GCK, input E, input CK);

endmodule

module CLKGATE_X4 (output GCK, input E, input CK);

endmodule

module CLKGATE_X8 (output GCK, input E, input CK);

endmodule

module DFFRS_X1 (output QN, output Q, input CK, input SN, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DFFRS_X2 (output QN, output Q, input CK, input SN, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DFFR_X1 (output QN, output Q, input CK, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DFFR_X2 (output QN, output Q, input CK, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DFFS_X1 (output QN, output Q, input CK, input SN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DFFS_X2 (output QN, output Q, input CK, input SN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DFF_X1 (output QN, output Q, input CK, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DFF_X2 (output QN, output Q, input CK, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module DLH_X1 (output Q, input G, input D);
reg IQ; always @(G) if (G) IQ <= D; assign Q = IQ;
endmodule

module DLH_X2 (output Q, input G, input D);
reg IQ; always @(G) if (G) IQ <= D; assign Q = IQ;
endmodule

module DLL_X1 (output Q, input GN, input D);
reg IQ; always @(!GN) if (!GN) IQ <= D; assign Q = IQ;
endmodule

module DLL_X2 (output Q, input GN, input D);
reg IQ; always @(!GN) if (!GN) IQ <= D; assign Q = IQ;
endmodule

module FA_X1 (output S, output CO, input CI, input B, input A);
assign S = (CI^(A^B));
assign CO = ((A&B)|(CI&(A|B)));
endmodule

module FILLCELL_X1 ();

endmodule

module FILLCELL_X16 ();

endmodule

module FILLCELL_X2 ();

endmodule

module FILLCELL_X32 ();

endmodule

module FILLCELL_X4 ();

endmodule

module FILLCELL_X8 ();

endmodule

module HA_X1 (output S, output CO, input B, input A);
assign S = (A^B);
assign CO = (A&B);
endmodule

module INV_X1 (output ZN, input A);
assign ZN = (!A);
endmodule

module INV_X16 (output ZN, input A);
assign ZN = (!A);
endmodule

module INV_X2 (output ZN, input A);
assign ZN = (!A);
endmodule

module INV_X32 (output ZN, input A);
assign ZN = (!A);
endmodule

module INV_X4 (output ZN, input A);
assign ZN = (!A);
endmodule

module INV_X8 (output ZN, input A);
assign ZN = (!A);
endmodule

module LOGIC0_X1 (output Z);
assign Z = 0;
endmodule

module LOGIC1_X1 (output Z);
assign Z = 1;
endmodule

module MUX2_X1 (output Z, input S, input B, input A);
assign Z = ((S&B)|(A&(!S)));
endmodule

module MUX2_X2 (output Z, input S, input B, input A);
assign Z = ((S&B)|(A&(!S)));
endmodule

module NAND2_X1 (output ZN, input A2, input A1);
assign ZN = (!(A1&A2));
endmodule

module NAND2_X2 (output ZN, input A2, input A1);
assign ZN = (!(A1&A2));
endmodule

module NAND2_X4 (output ZN, input A2, input A1);
assign ZN = (!(A1&A2));
endmodule

module NAND3_X1 (output ZN, input A3, input A2, input A1);
assign ZN = (!((A1&A2)&A3));
endmodule

module NAND3_X2 (output ZN, input A3, input A2, input A1);
assign ZN = (!((A1&A2)&A3));
endmodule

module NAND3_X4 (output ZN, input A3, input A2, input A1);
assign ZN = (!((A1&A2)&A3));
endmodule

module NAND4_X1 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (!(((A1&A2)&A3)&A4));
endmodule

module NAND4_X2 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (!(((A1&A2)&A3)&A4));
endmodule

module NAND4_X4 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (!(((A1&A2)&A3)&A4));
endmodule

module NOR2_X1 (output ZN, input A2, input A1);
assign ZN = (!(A1|A2));
endmodule

module NOR2_X2 (output ZN, input A2, input A1);
assign ZN = (!(A1|A2));
endmodule

module NOR2_X4 (output ZN, input A2, input A1);
assign ZN = (!(A1|A2));
endmodule

module NOR3_X1 (output ZN, input A3, input A2, input A1);
assign ZN = (!((A1|A2)|A3));
endmodule

module NOR3_X2 (output ZN, input A3, input A2, input A1);
assign ZN = (!((A1|A2)|A3));
endmodule

module NOR3_X4 (output ZN, input A3, input A2, input A1);
assign ZN = (!((A1|A2)|A3));
endmodule

module NOR4_X1 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (!(((A1|A2)|A3)|A4));
endmodule

module NOR4_X2 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (!(((A1|A2)|A3)|A4));
endmodule

module NOR4_X4 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (!(((A1|A2)|A3)|A4));
endmodule

module OAI211_X1 (output ZN, input C2, input C1, input B, input A);
assign ZN = (!(((C1|C2)&A)&B));
endmodule

module OAI211_X2 (output ZN, input C2, input C1, input B, input A);
assign ZN = (!(((C1|C2)&A)&B));
endmodule

module OAI211_X4 (output ZN, input C2, input C1, input B, input A);
assign ZN = (!(((C1|C2)&A)&B));
endmodule

module OAI21_X1 (output ZN, input B2, input B1, input A);
assign ZN = (!(A&(B1|B2)));
endmodule

module OAI21_X2 (output ZN, input B2, input B1, input A);
assign ZN = (!(A&(B1|B2)));
endmodule

module OAI21_X4 (output ZN, input B2, input B1, input A);
assign ZN = (!(A&(B1|B2)));
endmodule

module OAI221_X1 (output ZN, input C2, input C1, input B2, input B1, input A);
assign ZN = (!(((C1|C2)&A)&(B1|B2)));
endmodule

module OAI221_X2 (output ZN, input C2, input C1, input B2, input B1, input A);
assign ZN = (!(((C1|C2)&A)&(B1|B2)));
endmodule

module OAI221_X4 (output ZN, input C2, input C1, input B2, input B1, input A);
assign ZN = (!(!(!(((C1|C2)&A)&(B1|B2)))));
endmodule

module OAI222_X1 (output ZN, input C2, input C1, input B2, input B1, input A2, input A1);
assign ZN = (!(((A1|A2)&(B1|B2))&(C1|C2)));
endmodule

module OAI222_X2 (output ZN, input C2, input C1, input B2, input B1, input A2, input A1);
assign ZN = (!(((A1|A2)&(B1|B2))&(C1|C2)));
endmodule

module OAI222_X4 (output ZN, input C2, input C1, input B2, input B1, input A2, input A1);
assign ZN = (!(!(!(((A1|A2)&(B1|B2))&(C1|C2)))));
endmodule

module OAI22_X1 (output ZN, input B2, input B1, input A2, input A1);
assign ZN = (!((A1|A2)&(B1|B2)));
endmodule

module OAI22_X2 (output ZN, input B2, input B1, input A2, input A1);
assign ZN = (!((A1|A2)&(B1|B2)));
endmodule

module OAI22_X4 (output ZN, input B2, input B1, input A2, input A1);
assign ZN = (!((A1|A2)&(B1|B2)));
endmodule

module OAI33_X1 (output ZN, input B3, input B2, input B1, input A3, input A2, input A1);
assign ZN = (!(((A1|A2)|A3)&((B1|B2)|B3)));
endmodule

module OR2_X1 (output ZN, input A2, input A1);
assign ZN = (A1|A2);
endmodule

module OR2_X2 (output ZN, input A2, input A1);
assign ZN = (A1|A2);
endmodule

module OR2_X4 (output ZN, input A2, input A1);
assign ZN = (A1|A2);
endmodule

module OR3_X1 (output ZN, input A3, input A2, input A1);
assign ZN = ((A1|A2)|A3);
endmodule

module OR3_X2 (output ZN, input A3, input A2, input A1);
assign ZN = ((A1|A2)|A3);
endmodule

module OR3_X4 (output ZN, input A3, input A2, input A1);
assign ZN = ((A1|A2)|A3);
endmodule

module OR4_X1 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (((A1|A2)|A3)|A4);
endmodule

module OR4_X2 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (((A1|A2)|A3)|A4);
endmodule

module OR4_X4 (output ZN, input A4, input A3, input A2, input A1);
assign ZN = (((A1|A2)|A3)|A4);
endmodule

module SDFFRS_X1 (output QN, output Q, input CK, input SN, input SI, input SE, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module SDFFRS_X2 (output QN, output Q, input CK, input SN, input SI, input SE, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module SDFFR_X1 (output QN, output Q, input CK, input SI, input SE, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module SDFFR_X2 (output QN, output Q, input CK, input SI, input SE, input RN, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module SDFFS_X1 (output QN, output Q, input CK, input SN, input SI, input SE, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module SDFFS_X2 (output QN, output Q, input CK, input SN, input SI, input SE, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module SDFF_X1 (output QN, output Q, input CK, input SI, input SE, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module SDFF_X2 (output QN, output Q, input CK, input SI, input SE, input D);
reg IQN; always @(posedge CK) IQN <= ~D; assign QN = IQN;
reg IQ; always @(posedge CK) IQ <= ~D; assign Q = IQ;
endmodule

module TBUF_X1 (output Z, input EN, input A);
assign Z = A;
endmodule

module TBUF_X16 (output Z, input EN, input A);
assign Z = A;
endmodule

module TBUF_X2 (output Z, input EN, input A);
assign Z = A;
endmodule

module TBUF_X4 (output Z, input EN, input A);
assign Z = A;
endmodule

module TBUF_X8 (output Z, input EN, input A);
assign Z = A;
endmodule

module TINV_X1 (output ZN, input I, input EN);
assign ZN = (!I);
endmodule

module TLAT_X1 (output Q, input OE, input G, input D);
reg IQ; always @(G) if (G) IQ <= D; assign Q = IQ;
endmodule

module XNOR2_X1 (output ZN, input B, input A);
assign ZN = (!(A^B));
endmodule

module XNOR2_X2 (output ZN, input B, input A);
assign ZN = (!(A^B));
endmodule

module XOR2_X1 (output Z, input B, input A);
assign Z = (A^B);
endmodule

module XOR2_X2 (output Z, input B, input A);
assign Z = (A^B);
endmodule

