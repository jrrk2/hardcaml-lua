module sky130_fd_sc_hd__a2111o_1 (output X, input D1, input C1, input B1, input A2, input A1);
assign X = ((A1&A2)|(B1|(C1|D1)));
endmodule

module sky130_fd_sc_hd__a2111o_2 (output X, input D1, input C1, input B1, input A2, input A1);
assign X = ((A1&A2)|(B1|(C1|D1)));
endmodule

module sky130_fd_sc_hd__a2111o_4 (output X, input D1, input C1, input B1, input A2, input A1);
assign X = ((A1&A2)|(B1|(C1|D1)));
endmodule

module sky130_fd_sc_hd__a2111oi_0 (output Y, input D1, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&((!C1)&(!D1))))|((!A2)&((!B1)&((!C1)&(!D1)))));
endmodule

module sky130_fd_sc_hd__a2111oi_1 (output Y, input D1, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&((!C1)&(!D1))))|((!A2)&((!B1)&((!C1)&(!D1)))));
endmodule

module sky130_fd_sc_hd__a2111oi_2 (output Y, input D1, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&((!C1)&(!D1))))|((!A2)&((!B1)&((!C1)&(!D1)))));
endmodule

module sky130_fd_sc_hd__a2111oi_4 (output Y, input D1, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&((!C1)&(!D1))))|((!A2)&((!B1)&((!C1)&(!D1)))));
endmodule

module sky130_fd_sc_hd__a211o_1 (output X, input C1, input B1, input A2, input A1);
assign X = ((A1&A2)|(B1|C1));
endmodule

module sky130_fd_sc_hd__a211o_2 (output X, input C1, input B1, input A2, input A1);
assign X = ((A1&A2)|(B1|C1));
endmodule

module sky130_fd_sc_hd__a211o_4 (output X, input C1, input B1, input A2, input A1);
assign X = ((A1&A2)|(B1|C1));
endmodule

module sky130_fd_sc_hd__a211oi_1 (output Y, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|((!A2)&((!B1)&(!C1))));
endmodule

module sky130_fd_sc_hd__a211oi_2 (output Y, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|((!A2)&((!B1)&(!C1))));
endmodule

module sky130_fd_sc_hd__a211oi_4 (output Y, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|((!A2)&((!B1)&(!C1))));
endmodule

module sky130_fd_sc_hd__a21bo_1 (output X, input B1_N, input A2, input A1);
assign X = ((A1&A2)|(!B1_N));
endmodule

module sky130_fd_sc_hd__a21bo_2 (output X, input B1_N, input A2, input A1);
assign X = ((A1&A2)|(!B1_N));
endmodule

module sky130_fd_sc_hd__a21bo_4 (output X, input B1_N, input A2, input A1);
assign X = ((A1&A2)|(!B1_N));
endmodule

module sky130_fd_sc_hd__a21boi_0 (output Y, input B1_N, input A2, input A1);
assign Y = (((!A1)&B1_N)|((!A2)&B1_N));
endmodule

module sky130_fd_sc_hd__a21boi_1 (output Y, input B1_N, input A2, input A1);
assign Y = (((!A1)&B1_N)|((!A2)&B1_N));
endmodule

module sky130_fd_sc_hd__a21boi_2 (output Y, input B1_N, input A2, input A1);
assign Y = (((!A1)&B1_N)|((!A2)&B1_N));
endmodule

module sky130_fd_sc_hd__a21boi_4 (output Y, input B1_N, input A2, input A1);
assign Y = (((!A1)&B1_N)|((!A2)&B1_N));
endmodule

module sky130_fd_sc_hd__a21o_1 (output X, input B1, input A2, input A1);
assign X = ((A1&A2)|B1);
endmodule

module sky130_fd_sc_hd__a21o_2 (output X, input B1, input A2, input A1);
assign X = ((A1&A2)|B1);
endmodule

module sky130_fd_sc_hd__a21o_4 (output X, input B1, input A2, input A1);
assign X = ((A1&A2)|B1);
endmodule

module sky130_fd_sc_hd__a21oi_1 (output Y, input B1, input A2, input A1);
assign Y = (((!A1)&(!B1))|((!A2)&(!B1)));
endmodule

module sky130_fd_sc_hd__a21oi_2 (output Y, input B1, input A2, input A1);
assign Y = (((!A1)&(!B1))|((!A2)&(!B1)));
endmodule

module sky130_fd_sc_hd__a21oi_4 (output Y, input B1, input A2, input A1);
assign Y = (((!A1)&(!B1))|((!A2)&(!B1)));
endmodule

module sky130_fd_sc_hd__a221o_1 (output X, input C1, input B2, input B1, input A2, input A1);
assign X = ((B1&B2)|((A1&A2)|C1));
endmodule

module sky130_fd_sc_hd__a221o_2 (output X, input C1, input B2, input B1, input A2, input A1);
assign X = ((B1&B2)|((A1&A2)|C1));
endmodule

module sky130_fd_sc_hd__a221o_4 (output X, input C1, input B2, input B1, input A2, input A1);
assign X = ((B1&B2)|((A1&A2)|C1));
endmodule

module sky130_fd_sc_hd__a221oi_1 (output Y, input C1, input B2, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|(((!A1)&((!B2)&(!C1)))|(((!A2)&((!B1)&(!C1)))|((!A2)&((!B2)&(!C1))))));
endmodule

module sky130_fd_sc_hd__a221oi_2 (output Y, input C1, input B2, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|(((!A1)&((!B2)&(!C1)))|(((!A2)&((!B1)&(!C1)))|((!A2)&((!B2)&(!C1))))));
endmodule

module sky130_fd_sc_hd__a221oi_4 (output Y, input C1, input B2, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|(((!A1)&((!B2)&(!C1)))|(((!A2)&((!B1)&(!C1)))|((!A2)&((!B2)&(!C1))))));
endmodule

module sky130_fd_sc_hd__a222oi_1 (output Y, input C2, input C1, input B2, input B1, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|(((!A1)&((!B1)&(!C2)))|(((!A1)&((!B2)&(!C1)))|(((!A2)&((!B1)&(!C1)))|(((!A1)&((!B2)&(!C2)))|(((!A2)&((!B1)&(!C2)))|(((!A2)&((!B2)&(!C1)))|((!A2)&((!B2)&(!C2))))))))));
endmodule

module sky130_fd_sc_hd__a22o_1 (output X, input B2, input B1, input A2, input A1);
assign X = ((B1&B2)|(A1&A2));
endmodule

module sky130_fd_sc_hd__a22o_2 (output X, input B2, input B1, input A2, input A1);
assign X = ((B1&B2)|(A1&A2));
endmodule

module sky130_fd_sc_hd__a22o_4 (output X, input B2, input B1, input A2, input A1);
assign X = ((B1&B2)|(A1&A2));
endmodule

module sky130_fd_sc_hd__a22oi_1 (output Y, input B2, input B1, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A1)&(!B2))|(((!A2)&(!B1))|((!A2)&(!B2)))));
endmodule

module sky130_fd_sc_hd__a22oi_2 (output Y, input B2, input B1, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A1)&(!B2))|(((!A2)&(!B1))|((!A2)&(!B2)))));
endmodule

module sky130_fd_sc_hd__a22oi_4 (output Y, input B2, input B1, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A1)&(!B2))|(((!A2)&(!B1))|((!A2)&(!B2)))));
endmodule

module sky130_fd_sc_hd__a2bb2o_1 (output X, input B2, input B1, input A2_N, input A1_N);
assign X = ((B1&B2)|((!A1_N)&(!A2_N)));
endmodule

module sky130_fd_sc_hd__a2bb2o_2 (output X, input B2, input B1, input A2_N, input A1_N);
assign X = ((B1&B2)|((!A1_N)&(!A2_N)));
endmodule

module sky130_fd_sc_hd__a2bb2o_4 (output X, input B2, input B1, input A2_N, input A1_N);
assign X = ((B1&B2)|((!A1_N)&(!A2_N)));
endmodule

module sky130_fd_sc_hd__a2bb2oi_1 (output Y, input B2, input B1, input A2_N, input A1_N);
assign Y = ((A1_N&(!B1))|((A1_N&(!B2))|((A2_N&(!B1))|(A2_N&(!B2)))));
endmodule

module sky130_fd_sc_hd__a2bb2oi_2 (output Y, input B2, input B1, input A2_N, input A1_N);
assign Y = ((A1_N&(!B1))|((A1_N&(!B2))|((A2_N&(!B1))|(A2_N&(!B2)))));
endmodule

module sky130_fd_sc_hd__a2bb2oi_4 (output Y, input B2, input B1, input A2_N, input A1_N);
assign Y = ((A1_N&(!B1))|((A1_N&(!B2))|((A2_N&(!B1))|(A2_N&(!B2)))));
endmodule

module sky130_fd_sc_hd__a311o_1 (output X, input C1, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|(B1|C1));
endmodule

module sky130_fd_sc_hd__a311o_2 (output X, input C1, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|(B1|C1));
endmodule

module sky130_fd_sc_hd__a311o_4 (output X, input C1, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|(B1|C1));
endmodule

module sky130_fd_sc_hd__a311oi_1 (output Y, input C1, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|(((!A2)&((!B1)&(!C1)))|((!A3)&((!B1)&(!C1)))));
endmodule

module sky130_fd_sc_hd__a311oi_2 (output Y, input C1, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|(((!A2)&((!B1)&(!C1)))|((!A3)&((!B1)&(!C1)))));
endmodule

module sky130_fd_sc_hd__a311oi_4 (output Y, input C1, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!B1)&(!C1)))|(((!A2)&((!B1)&(!C1)))|((!A3)&((!B1)&(!C1)))));
endmodule

module sky130_fd_sc_hd__a31o_1 (output X, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|B1);
endmodule

module sky130_fd_sc_hd__a31o_2 (output X, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|B1);
endmodule

module sky130_fd_sc_hd__a31o_4 (output X, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|B1);
endmodule

module sky130_fd_sc_hd__a31oi_1 (output Y, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A2)&(!B1))|((!A3)&(!B1))));
endmodule

module sky130_fd_sc_hd__a31oi_2 (output Y, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A2)&(!B1))|((!A3)&(!B1))));
endmodule

module sky130_fd_sc_hd__a31oi_4 (output Y, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A2)&(!B1))|((!A3)&(!B1))));
endmodule

module sky130_fd_sc_hd__a32o_1 (output X, input B2, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|(B1&B2));
endmodule

module sky130_fd_sc_hd__a32o_2 (output X, input B2, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|(B1&B2));
endmodule

module sky130_fd_sc_hd__a32o_4 (output X, input B2, input B1, input A3, input A2, input A1);
assign X = ((A1&(A2&A3))|(B1&B2));
endmodule

module sky130_fd_sc_hd__a32oi_1 (output Y, input B2, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A1)&(!B2))|(((!A2)&(!B1))|(((!A3)&(!B1))|(((!A2)&(!B2))|((!A3)&(!B2)))))));
endmodule

module sky130_fd_sc_hd__a32oi_2 (output Y, input B2, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A1)&(!B2))|(((!A2)&(!B1))|(((!A3)&(!B1))|(((!A2)&(!B2))|((!A3)&(!B2)))))));
endmodule

module sky130_fd_sc_hd__a32oi_4 (output Y, input B2, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A1)&(!B2))|(((!A2)&(!B1))|(((!A3)&(!B1))|(((!A2)&(!B2))|((!A3)&(!B2)))))));
endmodule

module sky130_fd_sc_hd__a41o_1 (output X, input B1, input A4, input A3, input A2, input A1);
assign X = ((A1&(A2&(A3&A4)))|B1);
endmodule

module sky130_fd_sc_hd__a41o_2 (output X, input B1, input A4, input A3, input A2, input A1);
assign X = ((A1&(A2&(A3&A4)))|B1);
endmodule

module sky130_fd_sc_hd__a41o_4 (output X, input B1, input A4, input A3, input A2, input A1);
assign X = ((A1&(A2&(A3&A4)))|B1);
endmodule

module sky130_fd_sc_hd__a41oi_1 (output Y, input B1, input A4, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A2)&(!B1))|(((!A3)&(!B1))|((!A4)&(!B1)))));
endmodule

module sky130_fd_sc_hd__a41oi_2 (output Y, input B1, input A4, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A2)&(!B1))|(((!A3)&(!B1))|((!A4)&(!B1)))));
endmodule

module sky130_fd_sc_hd__a41oi_4 (output Y, input B1, input A4, input A3, input A2, input A1);
assign Y = (((!A1)&(!B1))|(((!A2)&(!B1))|(((!A3)&(!B1))|((!A4)&(!B1)))));
endmodule

module sky130_fd_sc_hd__and2_0 (output X, input B, input A);
assign X = (A&B);
endmodule

module sky130_fd_sc_hd__and2_1 (output X, input B, input A);
assign X = (A&B);
endmodule

module sky130_fd_sc_hd__and2_2 (output X, input B, input A);
assign X = (A&B);
endmodule

module sky130_fd_sc_hd__and2_4 (output X, input B, input A);
assign X = (A&B);
endmodule

module sky130_fd_sc_hd__and2b_1 (output X, input B, input A_N);
assign X = ((!A_N)&B);
endmodule

module sky130_fd_sc_hd__and2b_2 (output X, input B, input A_N);
assign X = ((!A_N)&B);
endmodule

module sky130_fd_sc_hd__and2b_4 (output X, input B, input A_N);
assign X = ((!A_N)&B);
endmodule

module sky130_fd_sc_hd__and3_1 (output X, input C, input B, input A);
assign X = (A&(B&C));
endmodule

module sky130_fd_sc_hd__and3_2 (output X, input C, input B, input A);
assign X = (A&(B&C));
endmodule

module sky130_fd_sc_hd__and3_4 (output X, input C, input B, input A);
assign X = (A&(B&C));
endmodule

module sky130_fd_sc_hd__and3b_1 (output X, input C, input B, input A_N);
assign X = ((!A_N)&(B&C));
endmodule

module sky130_fd_sc_hd__and3b_2 (output X, input C, input B, input A_N);
assign X = ((!A_N)&(B&C));
endmodule

module sky130_fd_sc_hd__and3b_4 (output X, input C, input B, input A_N);
assign X = ((!A_N)&(B&C));
endmodule

module sky130_fd_sc_hd__and4_1 (output X, input D, input C, input B, input A);
assign X = (A&(B&(C&D)));
endmodule

module sky130_fd_sc_hd__and4_2 (output X, input D, input C, input B, input A);
assign X = (A&(B&(C&D)));
endmodule

module sky130_fd_sc_hd__and4_4 (output X, input D, input C, input B, input A);
assign X = (A&(B&(C&D)));
endmodule

module sky130_fd_sc_hd__and4b_1 (output X, input D, input C, input B, input A_N);
assign X = ((!A_N)&(B&(C&D)));
endmodule

module sky130_fd_sc_hd__and4b_2 (output X, input D, input C, input B, input A_N);
assign X = ((!A_N)&(B&(C&D)));
endmodule

module sky130_fd_sc_hd__and4b_4 (output X, input D, input C, input B, input A_N);
assign X = ((!A_N)&(B&(C&D)));
endmodule

module sky130_fd_sc_hd__and4bb_1 (output X, input D, input C, input B_N, input A_N);
assign X = ((!A_N)&((!B_N)&(C&D)));
endmodule

module sky130_fd_sc_hd__and4bb_2 (output X, input D, input C, input B_N, input A_N);
assign X = ((!A_N)&((!B_N)&(C&D)));
endmodule

module sky130_fd_sc_hd__and4bb_4 (output X, input D, input C, input B_N, input A_N);
assign X = ((!A_N)&((!B_N)&(C&D)));
endmodule

module sky130_fd_sc_hd__buf_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__buf_12 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__buf_16 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__buf_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__buf_4 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__buf_6 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__buf_8 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__bufbuf_16 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__bufbuf_8 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__bufinv_16 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__bufinv_8 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__clkbuf_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkbuf_16 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkbuf_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkbuf_4 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkbuf_8 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s15_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s15_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s18_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s18_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s25_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s25_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s50_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkdlybuf4s50_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__clkinv_1 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__clkinv_16 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__clkinv_2 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__clkinv_4 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__clkinv_8 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__clkinvlp_2 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__clkinvlp_4 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__conb_1 (output LO, output HI);
assign LO = 0;
assign HI = 1;
endmodule

module sky130_fd_sc_hd__decap_12 ();

endmodule

module sky130_fd_sc_hd__decap_3 ();

endmodule

module sky130_fd_sc_hd__decap_4 ();

endmodule

module sky130_fd_sc_hd__decap_6 ();

endmodule

module sky130_fd_sc_hd__decap_8 ();

endmodule

module sky130_fd_sc_hd__dfbbn_1 (input SET_B, input RESET_B, output Q_N, output Q, input D, input CLK_N);
reg IQ_N; always @(posedge !CLK_N) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge !CLK_N) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfbbn_2 (input SET_B, input RESET_B, output Q_N, output Q, input D, input CLK_N);
reg IQ_N; always @(posedge !CLK_N) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge !CLK_N) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfbbp_1 (input SET_B, input RESET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfrbp_1 (input RESET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfrbp_2 (input RESET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfrtn_1 (input RESET_B, output Q, input D, input CLK_N);
reg IQ; always @(posedge !CLK_N) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfrtp_1 (input RESET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfrtp_2 (input RESET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfrtp_4 (input RESET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfsbp_1 (input SET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfsbp_2 (input SET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfstp_1 (input SET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfstp_2 (input SET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfstp_4 (input SET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfxbp_1 (output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfxbp_2 (output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfxtp_1 (output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfxtp_2 (output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dfxtp_4 (output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__diode_2 (input DIODE);

endmodule

module sky130_fd_sc_hd__dlclkp_1 (output GCLK, input GATE, input CLK);

endmodule

module sky130_fd_sc_hd__dlclkp_2 (output GCLK, input GATE, input CLK);

endmodule

module sky130_fd_sc_hd__dlclkp_4 (output GCLK, input GATE, input CLK);

endmodule

module sky130_fd_sc_hd__dlrbn_1 (input RESET_B, output Q_N, output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrbn_2 (input RESET_B, output Q_N, output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrbp_1 (input RESET_B, output Q_N, output Q, input GATE, input D);
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrbp_2 (input RESET_B, output Q_N, output Q, input GATE, input D);
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrtn_1 (input RESET_B, output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrtn_2 (input RESET_B, output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrtn_4 (input RESET_B, output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrtp_1 (input RESET_B, output Q, input GATE, input D);
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrtp_2 (input RESET_B, output Q, input GATE, input D);
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlrtp_4 (input RESET_B, output Q, input GATE, input D);
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlxbn_1 (output Q_N, output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlxbn_2 (output Q_N, output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlxbp_1 (output Q_N, output Q, input GATE, input D);
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlxtn_1 (output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlxtn_2 (output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlxtn_4 (output Q, input GATE_N, input D);
reg IQ; always @(!GATE_N) if (!GATE_N) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlxtp_1 (output Q, input GATE, input D);
reg IQ; always @(GATE) if (GATE) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__dlygate4sd1_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__dlygate4sd2_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__dlygate4sd3_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__dlymetal6s2s_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__dlymetal6s4s_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__dlymetal6s6s_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__ebufn_1 (output Z, input TE_B, input A);
assign Z = A;
endmodule

module sky130_fd_sc_hd__ebufn_2 (output Z, input TE_B, input A);
assign Z = A;
endmodule

module sky130_fd_sc_hd__ebufn_4 (output Z, input TE_B, input A);
assign Z = A;
endmodule

module sky130_fd_sc_hd__ebufn_8 (output Z, input TE_B, input A);
assign Z = A;
endmodule

module sky130_fd_sc_hd__edfxbp_1 (output Q_N, output Q, input DE, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__edfxtp_1 (output Q, input DE, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__einvn_0 (output Z, input TE_B, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvn_1 (output Z, input TE_B, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvn_2 (output Z, input TE_B, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvn_4 (output Z, input TE_B, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvn_8 (output Z, input TE_B, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvp_1 (output Z, input TE, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvp_2 (output Z, input TE, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvp_4 (output Z, input TE, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__einvp_8 (output Z, input TE, input A);
assign Z = (!A);
endmodule

module sky130_fd_sc_hd__fa_1 (output SUM, output COUT, input CIN, input B, input A);
assign SUM = ((A&((!B)&(!CIN)))|(((!A)&(B&(!CIN)))|(((!A)&((!B)&CIN))|(A&(B&CIN)))));
assign COUT = ((A&B)|((A&CIN)|(B&CIN)));
endmodule

module sky130_fd_sc_hd__fa_2 (output SUM, output COUT, input CIN, input B, input A);
assign SUM = ((A&((!B)&(!CIN)))|(((!A)&(B&(!CIN)))|(((!A)&((!B)&CIN))|(A&(B&CIN)))));
assign COUT = ((A&B)|((A&CIN)|(B&CIN)));
endmodule

module sky130_fd_sc_hd__fa_4 (output SUM, output COUT, input CIN, input B, input A);
assign SUM = ((A&((!B)&(!CIN)))|(((!A)&(B&(!CIN)))|(((!A)&((!B)&CIN))|(A&(B&CIN)))));
assign COUT = ((A&B)|((A&CIN)|(B&CIN)));
endmodule

module sky130_fd_sc_hd__fah_1 (output SUM, output COUT, input CI, input B, input A);
assign SUM = ((A&((!B)&(!CI)))|(((!A)&(B&(!CI)))|(((!A)&((!B)&CI))|(A&(B&CI)))));
assign COUT = ((A&B)|((A&CI)|(B&CI)));
endmodule

module sky130_fd_sc_hd__fahcin_1 (output SUM, output COUT, input CIN, input B, input A);
assign SUM = (((!A)&((!B)&(!CIN)))|((A&(B&(!CIN)))|((A&((!B)&CIN))|((!A)&(B&CIN)))));
assign COUT = ((A&(!CIN))|((A&B)|(B&(!CIN))));
endmodule

module sky130_fd_sc_hd__fahcon_1 (output SUM, output COUT_N, input CI, input B, input A);
assign SUM = ((A&((!B)&(!CI)))|(((!A)&(B&(!CI)))|(((!A)&((!B)&CI))|(A&(B&CI)))));
assign COUT_N = (((!A)&(!CI))|(((!A)&(!B))|((!B)&(!CI))));
endmodule

module sky130_fd_sc_hd__ha_1 (output SUM, output COUT, input B, input A);
assign SUM = ((A&(!B))|((!A)&B));
assign COUT = (A&B);
endmodule

module sky130_fd_sc_hd__ha_2 (output SUM, output COUT, input B, input A);
assign SUM = ((A&(!B))|((!A)&B));
assign COUT = (A&B);
endmodule

module sky130_fd_sc_hd__ha_4 (output SUM, output COUT, input B, input A);
assign SUM = ((A&(!B))|((!A)&B));
assign COUT = (A&B);
endmodule

module sky130_fd_sc_hd__inv_1 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__inv_12 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__inv_16 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__inv_2 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__inv_4 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__inv_6 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__inv_8 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__lpflow_bleeder_1 (input SHORT);

endmodule

module sky130_fd_sc_hd__lpflow_clkbufkapwr_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_clkbufkapwr_16 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_clkbufkapwr_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_clkbufkapwr_4 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_clkbufkapwr_8 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_clkinvkapwr_1 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__lpflow_clkinvkapwr_16 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__lpflow_clkinvkapwr_2 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__lpflow_clkinvkapwr_4 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__lpflow_clkinvkapwr_8 (output Y, input A);
assign Y = (!A);
endmodule

module sky130_fd_sc_hd__lpflow_decapkapwr_12 ();

endmodule

module sky130_fd_sc_hd__lpflow_decapkapwr_3 ();

endmodule

module sky130_fd_sc_hd__lpflow_decapkapwr_4 ();

endmodule

module sky130_fd_sc_hd__lpflow_decapkapwr_6 ();

endmodule

module sky130_fd_sc_hd__lpflow_decapkapwr_8 ();

endmodule

module sky130_fd_sc_hd__lpflow_inputiso0n_1 (output X, input SLEEP_B, input A);
assign X = (SLEEP_B&A);
endmodule

module sky130_fd_sc_hd__lpflow_inputiso0p_1 (output X, input SLEEP, input A);
assign X = ((!SLEEP)&A);
endmodule

module sky130_fd_sc_hd__lpflow_inputiso1n_1 (output X, input SLEEP_B, input A);
assign X = (A|(!SLEEP_B));
endmodule

module sky130_fd_sc_hd__lpflow_inputiso1p_1 (output X, input SLEEP, input A);
assign X = (A|SLEEP);
endmodule

module sky130_fd_sc_hd__lpflow_inputisolatch_1 (input SLEEP_B, output Q, input D);
reg IQ; always @(SLEEP_B) if (SLEEP_B) IQ <= D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__lpflow_isobufsrc_1 (output X, input SLEEP, input A);
assign X = (A&(!SLEEP));
endmodule

module sky130_fd_sc_hd__lpflow_isobufsrc_16 (output X, input SLEEP, input A);
assign X = (A&(!SLEEP));
endmodule

module sky130_fd_sc_hd__lpflow_isobufsrc_2 (output X, input SLEEP, input A);
assign X = (A&(!SLEEP));
endmodule

module sky130_fd_sc_hd__lpflow_isobufsrc_4 (output X, input SLEEP, input A);
assign X = (A&(!SLEEP));
endmodule

module sky130_fd_sc_hd__lpflow_isobufsrc_8 (output X, input SLEEP, input A);
assign X = (A&(!SLEEP));
endmodule

module sky130_fd_sc_hd__lpflow_isobufsrckapwr_16 (output X, input SLEEP, input A);
assign X = (A&(!SLEEP));
endmodule

module sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_4 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_4 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_1 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_2 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_4 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__macro_sparecell (output LO);
assign LO = 0;
endmodule

module sky130_fd_sc_hd__maj3_1 (output X, input C, input B, input A);
assign X = ((A&B)|((A&C)|(B&C)));
endmodule

module sky130_fd_sc_hd__maj3_2 (output X, input C, input B, input A);
assign X = ((A&B)|((A&C)|(B&C)));
endmodule

module sky130_fd_sc_hd__maj3_4 (output X, input C, input B, input A);
assign X = ((A&B)|((A&C)|(B&C)));
endmodule

module sky130_fd_sc_hd__mux2_1 (output X, input S, input A1, input A0);
assign X = ((A0&(!S))|(A1&S));
endmodule

module sky130_fd_sc_hd__mux2_2 (output X, input S, input A1, input A0);
assign X = ((A0&(!S))|(A1&S));
endmodule

module sky130_fd_sc_hd__mux2_4 (output X, input S, input A1, input A0);
assign X = ((A0&(!S))|(A1&S));
endmodule

module sky130_fd_sc_hd__mux2_8 (output X, input S, input A1, input A0);
assign X = ((A0&(!S))|(A1&S));
endmodule

module sky130_fd_sc_hd__mux2i_1 (output Y, input S, input A1, input A0);
assign Y = (((!A0)&(!S))|((!A1)&S));
endmodule

module sky130_fd_sc_hd__mux2i_2 (output Y, input S, input A1, input A0);
assign Y = (((!A0)&(!S))|((!A1)&S));
endmodule

module sky130_fd_sc_hd__mux2i_4 (output Y, input S, input A1, input A0);
assign Y = (((!A0)&(!S))|((!A1)&S));
endmodule

module sky130_fd_sc_hd__mux4_1 (output X, input S1, input S0, input A3, input A2, input A1, input A0);
assign X = ((A0&((!S0)&(!S1)))|((A1&(S0&(!S1)))|((A2&((!S0)&S1))|(A3&(S0&S1)))));
endmodule

module sky130_fd_sc_hd__mux4_2 (output X, input S1, input S0, input A3, input A2, input A1, input A0);
assign X = ((A0&((!S0)&(!S1)))|((A1&(S0&(!S1)))|((A2&((!S0)&S1))|(A3&(S0&S1)))));
endmodule

module sky130_fd_sc_hd__mux4_4 (output X, input S1, input S0, input A3, input A2, input A1, input A0);
assign X = ((A0&((!S0)&(!S1)))|((A1&(S0&(!S1)))|((A2&((!S0)&S1))|(A3&(S0&S1)))));
endmodule

module sky130_fd_sc_hd__nand2_1 (output Y, input B, input A);
assign Y = ((!A)|(!B));
endmodule

module sky130_fd_sc_hd__nand2_2 (output Y, input B, input A);
assign Y = ((!A)|(!B));
endmodule

module sky130_fd_sc_hd__nand2_4 (output Y, input B, input A);
assign Y = ((!A)|(!B));
endmodule

module sky130_fd_sc_hd__nand2_8 (output Y, input B, input A);
assign Y = ((!A)|(!B));
endmodule

module sky130_fd_sc_hd__nand2b_1 (output Y, input B, input A_N);
assign Y = (A_N|(!B));
endmodule

module sky130_fd_sc_hd__nand2b_2 (output Y, input B, input A_N);
assign Y = (A_N|(!B));
endmodule

module sky130_fd_sc_hd__nand2b_4 (output Y, input B, input A_N);
assign Y = (A_N|(!B));
endmodule

module sky130_fd_sc_hd__nand3_1 (output Y, input C, input B, input A);
assign Y = ((!A)|((!B)|(!C)));
endmodule

module sky130_fd_sc_hd__nand3_2 (output Y, input C, input B, input A);
assign Y = ((!A)|((!B)|(!C)));
endmodule

module sky130_fd_sc_hd__nand3_4 (output Y, input C, input B, input A);
assign Y = ((!A)|((!B)|(!C)));
endmodule

module sky130_fd_sc_hd__nand3b_1 (output Y, input C, input B, input A_N);
assign Y = (A_N|((!B)|(!C)));
endmodule

module sky130_fd_sc_hd__nand3b_2 (output Y, input C, input B, input A_N);
assign Y = (A_N|((!B)|(!C)));
endmodule

module sky130_fd_sc_hd__nand3b_4 (output Y, input C, input B, input A_N);
assign Y = (A_N|((!B)|(!C)));
endmodule

module sky130_fd_sc_hd__nand4_1 (output Y, input D, input C, input B, input A);
assign Y = ((!A)|((!B)|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4_2 (output Y, input D, input C, input B, input A);
assign Y = ((!A)|((!B)|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4_4 (output Y, input D, input C, input B, input A);
assign Y = ((!A)|((!B)|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4b_1 (output Y, input D, input C, input B, input A_N);
assign Y = (A_N|((!B)|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4b_2 (output Y, input D, input C, input B, input A_N);
assign Y = (A_N|((!B)|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4b_4 (output Y, input D, input C, input B, input A_N);
assign Y = (A_N|((!B)|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4bb_1 (output Y, input D, input C, input B_N, input A_N);
assign Y = (A_N|(B_N|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4bb_2 (output Y, input D, input C, input B_N, input A_N);
assign Y = (A_N|(B_N|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nand4bb_4 (output Y, input D, input C, input B_N, input A_N);
assign Y = (A_N|(B_N|((!C)|(!D))));
endmodule

module sky130_fd_sc_hd__nor2_1 (output Y, input B, input A);
assign Y = ((!A)&(!B));
endmodule

module sky130_fd_sc_hd__nor2_2 (output Y, input B, input A);
assign Y = ((!A)&(!B));
endmodule

module sky130_fd_sc_hd__nor2_4 (output Y, input B, input A);
assign Y = ((!A)&(!B));
endmodule

module sky130_fd_sc_hd__nor2_8 (output Y, input B, input A);
assign Y = ((!A)&(!B));
endmodule

module sky130_fd_sc_hd__nor2b_1 (output Y, input B_N, input A);
assign Y = ((!A)&B_N);
endmodule

module sky130_fd_sc_hd__nor2b_2 (output Y, input B_N, input A);
assign Y = ((!A)&B_N);
endmodule

module sky130_fd_sc_hd__nor2b_4 (output Y, input B_N, input A);
assign Y = ((!A)&B_N);
endmodule

module sky130_fd_sc_hd__nor3_1 (output Y, input C, input B, input A);
assign Y = ((!A)&((!B)&(!C)));
endmodule

module sky130_fd_sc_hd__nor3_2 (output Y, input C, input B, input A);
assign Y = ((!A)&((!B)&(!C)));
endmodule

module sky130_fd_sc_hd__nor3_4 (output Y, input C, input B, input A);
assign Y = ((!A)&((!B)&(!C)));
endmodule

module sky130_fd_sc_hd__nor3b_1 (output Y, input C_N, input B, input A);
assign Y = ((!A)&((!B)&C_N));
endmodule

module sky130_fd_sc_hd__nor3b_2 (output Y, input C_N, input B, input A);
assign Y = ((!A)&((!B)&C_N));
endmodule

module sky130_fd_sc_hd__nor3b_4 (output Y, input C_N, input B, input A);
assign Y = ((!A)&((!B)&C_N));
endmodule

module sky130_fd_sc_hd__nor4_1 (output Y, input D, input C, input B, input A);
assign Y = ((!A)&((!B)&((!C)&(!D))));
endmodule

module sky130_fd_sc_hd__nor4_2 (output Y, input D, input C, input B, input A);
assign Y = ((!A)&((!B)&((!C)&(!D))));
endmodule

module sky130_fd_sc_hd__nor4_4 (output Y, input D, input C, input B, input A);
assign Y = ((!A)&((!B)&((!C)&(!D))));
endmodule

module sky130_fd_sc_hd__nor4b_1 (output Y, input D_N, input C, input B, input A);
assign Y = ((!A)&((!B)&((!C)&D_N)));
endmodule

module sky130_fd_sc_hd__nor4b_2 (output Y, input D_N, input C, input B, input A);
assign Y = ((!A)&((!B)&((!C)&D_N)));
endmodule

module sky130_fd_sc_hd__nor4b_4 (output Y, input D_N, input C, input B, input A);
assign Y = ((!A)&((!B)&((!C)&D_N)));
endmodule

module sky130_fd_sc_hd__nor4bb_1 (output Y, input D_N, input C_N, input B, input A);
assign Y = ((!A)&((!B)&(C_N&D_N)));
endmodule

module sky130_fd_sc_hd__nor4bb_2 (output Y, input D_N, input C_N, input B, input A);
assign Y = ((!A)&((!B)&(C_N&D_N)));
endmodule

module sky130_fd_sc_hd__nor4bb_4 (output Y, input D_N, input C_N, input B, input A);
assign Y = ((!A)&((!B)&(C_N&D_N)));
endmodule

module sky130_fd_sc_hd__o2111a_1 (output X, input D1, input C1, input B1, input A2, input A1);
assign X = ((A1&(B1&(C1&D1)))|(A2&(B1&(C1&D1))));
endmodule

module sky130_fd_sc_hd__o2111a_2 (output X, input D1, input C1, input B1, input A2, input A1);
assign X = ((A1&(B1&(C1&D1)))|(A2&(B1&(C1&D1))));
endmodule

module sky130_fd_sc_hd__o2111a_4 (output X, input D1, input C1, input B1, input A2, input A1);
assign X = ((A1&(B1&(C1&D1)))|(A2&(B1&(C1&D1))));
endmodule

module sky130_fd_sc_hd__o2111ai_1 (output Y, input D1, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|((!B1)|((!C1)|(!D1))));
endmodule

module sky130_fd_sc_hd__o2111ai_2 (output Y, input D1, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|((!B1)|((!C1)|(!D1))));
endmodule

module sky130_fd_sc_hd__o2111ai_4 (output Y, input D1, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|((!B1)|((!C1)|(!D1))));
endmodule

module sky130_fd_sc_hd__o211a_1 (output X, input C1, input B1, input A2, input A1);
assign X = ((A1&(B1&C1))|(A2&(B1&C1)));
endmodule

module sky130_fd_sc_hd__o211a_2 (output X, input C1, input B1, input A2, input A1);
assign X = ((A1&(B1&C1))|(A2&(B1&C1)));
endmodule

module sky130_fd_sc_hd__o211a_4 (output X, input C1, input B1, input A2, input A1);
assign X = ((A1&(B1&C1))|(A2&(B1&C1)));
endmodule

module sky130_fd_sc_hd__o211ai_1 (output Y, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|((!B1)|(!C1)));
endmodule

module sky130_fd_sc_hd__o211ai_2 (output Y, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|((!B1)|(!C1)));
endmodule

module sky130_fd_sc_hd__o211ai_4 (output Y, input C1, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|((!B1)|(!C1)));
endmodule

module sky130_fd_sc_hd__o21a_1 (output X, input B1, input A2, input A1);
assign X = ((A1&B1)|(A2&B1));
endmodule

module sky130_fd_sc_hd__o21a_2 (output X, input B1, input A2, input A1);
assign X = ((A1&B1)|(A2&B1));
endmodule

module sky130_fd_sc_hd__o21a_4 (output X, input B1, input A2, input A1);
assign X = ((A1&B1)|(A2&B1));
endmodule

module sky130_fd_sc_hd__o21ai_0 (output Y, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|(!B1));
endmodule

module sky130_fd_sc_hd__o21ai_1 (output Y, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|(!B1));
endmodule

module sky130_fd_sc_hd__o21ai_2 (output Y, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|(!B1));
endmodule

module sky130_fd_sc_hd__o21ai_4 (output Y, input B1, input A2, input A1);
assign Y = (((!A1)&(!A2))|(!B1));
endmodule

module sky130_fd_sc_hd__o21ba_1 (output X, input B1_N, input A2, input A1);
assign X = ((A1&(!B1_N))|(A2&(!B1_N)));
endmodule

module sky130_fd_sc_hd__o21ba_2 (output X, input B1_N, input A2, input A1);
assign X = ((A1&(!B1_N))|(A2&(!B1_N)));
endmodule

module sky130_fd_sc_hd__o21ba_4 (output X, input B1_N, input A2, input A1);
assign X = ((A1&(!B1_N))|(A2&(!B1_N)));
endmodule

module sky130_fd_sc_hd__o21bai_1 (output Y, input B1_N, input A2, input A1);
assign Y = (((!A1)&(!A2))|B1_N);
endmodule

module sky130_fd_sc_hd__o21bai_2 (output Y, input B1_N, input A2, input A1);
assign Y = (((!A1)&(!A2))|B1_N);
endmodule

module sky130_fd_sc_hd__o21bai_4 (output Y, input B1_N, input A2, input A1);
assign Y = (((!A1)&(!A2))|B1_N);
endmodule

module sky130_fd_sc_hd__o221a_1 (output X, input C1, input B2, input B1, input A2, input A1);
assign X = ((A1&(B1&C1))|((A2&(B1&C1))|((A1&(B2&C1))|(A2&(B2&C1)))));
endmodule

module sky130_fd_sc_hd__o221a_2 (output X, input C1, input B2, input B1, input A2, input A1);
assign X = ((A1&(B1&C1))|((A2&(B1&C1))|((A1&(B2&C1))|(A2&(B2&C1)))));
endmodule

module sky130_fd_sc_hd__o221a_4 (output X, input C1, input B2, input B1, input A2, input A1);
assign X = ((A1&(B1&C1))|((A2&(B1&C1))|((A1&(B2&C1))|(A2&(B2&C1)))));
endmodule

module sky130_fd_sc_hd__o221ai_1 (output Y, input C1, input B2, input B1, input A2, input A1);
assign Y = (((!B1)&(!B2))|(((!A1)&(!A2))|(!C1)));
endmodule

module sky130_fd_sc_hd__o221ai_2 (output Y, input C1, input B2, input B1, input A2, input A1);
assign Y = (((!B1)&(!B2))|(((!A1)&(!A2))|(!C1)));
endmodule

module sky130_fd_sc_hd__o221ai_4 (output Y, input C1, input B2, input B1, input A2, input A1);
assign Y = (((!B1)&(!B2))|(((!A1)&(!A2))|(!C1)));
endmodule

module sky130_fd_sc_hd__o22a_1 (output X, input B2, input B1, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|((A1&B2)|(A2&B2))));
endmodule

module sky130_fd_sc_hd__o22a_2 (output X, input B2, input B1, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|((A1&B2)|(A2&B2))));
endmodule

module sky130_fd_sc_hd__o22a_4 (output X, input B2, input B1, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|((A1&B2)|(A2&B2))));
endmodule

module sky130_fd_sc_hd__o22ai_1 (output Y, input B2, input B1, input A2, input A1);
assign Y = (((!B1)&(!B2))|((!A1)&(!A2)));
endmodule

module sky130_fd_sc_hd__o22ai_2 (output Y, input B2, input B1, input A2, input A1);
assign Y = (((!B1)&(!B2))|((!A1)&(!A2)));
endmodule

module sky130_fd_sc_hd__o22ai_4 (output Y, input B2, input B1, input A2, input A1);
assign Y = (((!B1)&(!B2))|((!A1)&(!A2)));
endmodule

module sky130_fd_sc_hd__o2bb2a_1 (output X, input B2, input B1, input A2_N, input A1_N);
assign X = (((!A1_N)&B1)|(((!A2_N)&B1)|(((!A1_N)&B2)|((!A2_N)&B2))));
endmodule

module sky130_fd_sc_hd__o2bb2a_2 (output X, input B2, input B1, input A2_N, input A1_N);
assign X = (((!A1_N)&B1)|(((!A2_N)&B1)|(((!A1_N)&B2)|((!A2_N)&B2))));
endmodule

module sky130_fd_sc_hd__o2bb2a_4 (output X, input B2, input B1, input A2_N, input A1_N);
assign X = (((!A1_N)&B1)|(((!A2_N)&B1)|(((!A1_N)&B2)|((!A2_N)&B2))));
endmodule

module sky130_fd_sc_hd__o2bb2ai_1 (output Y, input B2, input B1, input A2_N, input A1_N);
assign Y = (((!B1)&(!B2))|(A1_N&A2_N));
endmodule

module sky130_fd_sc_hd__o2bb2ai_2 (output Y, input B2, input B1, input A2_N, input A1_N);
assign Y = (((!B1)&(!B2))|(A1_N&A2_N));
endmodule

module sky130_fd_sc_hd__o2bb2ai_4 (output Y, input B2, input B1, input A2_N, input A1_N);
assign Y = (((!B1)&(!B2))|(A1_N&A2_N));
endmodule

module sky130_fd_sc_hd__o311a_1 (output X, input C1, input B1, input A3, input A2, input A1);
assign X = ((A1&(B1&C1))|((A2&(B1&C1))|(A3&(B1&C1))));
endmodule

module sky130_fd_sc_hd__o311a_2 (output X, input C1, input B1, input A3, input A2, input A1);
assign X = ((A1&(B1&C1))|((A2&(B1&C1))|(A3&(B1&C1))));
endmodule

module sky130_fd_sc_hd__o311a_4 (output X, input C1, input B1, input A3, input A2, input A1);
assign X = ((A1&(B1&C1))|((A2&(B1&C1))|(A3&(B1&C1))));
endmodule

module sky130_fd_sc_hd__o311ai_0 (output Y, input C1, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|((!B1)|(!C1)));
endmodule

module sky130_fd_sc_hd__o311ai_1 (output Y, input C1, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|((!B1)|(!C1)));
endmodule

module sky130_fd_sc_hd__o311ai_2 (output Y, input C1, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|((!B1)|(!C1)));
endmodule

module sky130_fd_sc_hd__o311ai_4 (output Y, input C1, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|((!B1)|(!C1)));
endmodule

module sky130_fd_sc_hd__o31a_1 (output X, input B1, input A3, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|(A3&B1)));
endmodule

module sky130_fd_sc_hd__o31a_2 (output X, input B1, input A3, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|(A3&B1)));
endmodule

module sky130_fd_sc_hd__o31a_4 (output X, input B1, input A3, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|(A3&B1)));
endmodule

module sky130_fd_sc_hd__o31ai_1 (output Y, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|(!B1));
endmodule

module sky130_fd_sc_hd__o31ai_2 (output Y, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|(!B1));
endmodule

module sky130_fd_sc_hd__o31ai_4 (output Y, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|(!B1));
endmodule

module sky130_fd_sc_hd__o32a_1 (output X, input B2, input B1, input A3, input A2, input A1);
assign X = ((A1&B1)|((A1&B2)|((A2&B1)|((A3&B1)|((A2&B2)|(A3&B2))))));
endmodule

module sky130_fd_sc_hd__o32a_2 (output X, input B2, input B1, input A3, input A2, input A1);
assign X = ((A1&B1)|((A1&B2)|((A2&B1)|((A3&B1)|((A2&B2)|(A3&B2))))));
endmodule

module sky130_fd_sc_hd__o32a_4 (output X, input B2, input B1, input A3, input A2, input A1);
assign X = ((A1&B1)|((A1&B2)|((A2&B1)|((A3&B1)|((A2&B2)|(A3&B2))))));
endmodule

module sky130_fd_sc_hd__o32ai_1 (output Y, input B2, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|((!B1)&(!B2)));
endmodule

module sky130_fd_sc_hd__o32ai_2 (output Y, input B2, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|((!B1)&(!B2)));
endmodule

module sky130_fd_sc_hd__o32ai_4 (output Y, input B2, input B1, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&(!A3)))|((!B1)&(!B2)));
endmodule

module sky130_fd_sc_hd__o41a_1 (output X, input B1, input A4, input A3, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|((A3&B1)|(A4&B1))));
endmodule

module sky130_fd_sc_hd__o41a_2 (output X, input B1, input A4, input A3, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|((A3&B1)|(A4&B1))));
endmodule

module sky130_fd_sc_hd__o41a_4 (output X, input B1, input A4, input A3, input A2, input A1);
assign X = ((A1&B1)|((A2&B1)|((A3&B1)|(A4&B1))));
endmodule

module sky130_fd_sc_hd__o41ai_1 (output Y, input B1, input A4, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&((!A3)&(!A4))))|(!B1));
endmodule

module sky130_fd_sc_hd__o41ai_2 (output Y, input B1, input A4, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&((!A3)&(!A4))))|(!B1));
endmodule

module sky130_fd_sc_hd__o41ai_4 (output Y, input B1, input A4, input A3, input A2, input A1);
assign Y = (((!A1)&((!A2)&((!A3)&(!A4))))|(!B1));
endmodule

module sky130_fd_sc_hd__or2_0 (output X, input B, input A);
assign X = (A|B);
endmodule

module sky130_fd_sc_hd__or2_1 (output X, input B, input A);
assign X = (A|B);
endmodule

module sky130_fd_sc_hd__or2_2 (output X, input B, input A);
assign X = (A|B);
endmodule

module sky130_fd_sc_hd__or2_4 (output X, input B, input A);
assign X = (A|B);
endmodule

module sky130_fd_sc_hd__or2b_1 (output X, input B_N, input A);
assign X = (A|(!B_N));
endmodule

module sky130_fd_sc_hd__or2b_2 (output X, input B_N, input A);
assign X = (A|(!B_N));
endmodule

module sky130_fd_sc_hd__or2b_4 (output X, input B_N, input A);
assign X = (A|(!B_N));
endmodule

module sky130_fd_sc_hd__or3_1 (output X, input C, input B, input A);
assign X = (A|(B|C));
endmodule

module sky130_fd_sc_hd__or3_2 (output X, input C, input B, input A);
assign X = (A|(B|C));
endmodule

module sky130_fd_sc_hd__or3_4 (output X, input C, input B, input A);
assign X = (A|(B|C));
endmodule

module sky130_fd_sc_hd__or3b_1 (output X, input C_N, input B, input A);
assign X = (A|(B|(!C_N)));
endmodule

module sky130_fd_sc_hd__or3b_2 (output X, input C_N, input B, input A);
assign X = (A|(B|(!C_N)));
endmodule

module sky130_fd_sc_hd__or3b_4 (output X, input C_N, input B, input A);
assign X = (A|(B|(!C_N)));
endmodule

module sky130_fd_sc_hd__or4_1 (output X, input D, input C, input B, input A);
assign X = (A|(B|(C|D)));
endmodule

module sky130_fd_sc_hd__or4_2 (output X, input D, input C, input B, input A);
assign X = (A|(B|(C|D)));
endmodule

module sky130_fd_sc_hd__or4_4 (output X, input D, input C, input B, input A);
assign X = (A|(B|(C|D)));
endmodule

module sky130_fd_sc_hd__or4b_1 (output X, input D_N, input C, input B, input A);
assign X = (A|(B|(C|(!D_N))));
endmodule

module sky130_fd_sc_hd__or4b_2 (output X, input D_N, input C, input B, input A);
assign X = (A|(B|(C|(!D_N))));
endmodule

module sky130_fd_sc_hd__or4b_4 (output X, input D_N, input C, input B, input A);
assign X = (A|(B|(C|(!D_N))));
endmodule

module sky130_fd_sc_hd__or4bb_1 (output X, input D_N, input C_N, input B, input A);
assign X = (A|(B|((!C_N)|(!D_N))));
endmodule

module sky130_fd_sc_hd__or4bb_2 (output X, input D_N, input C_N, input B, input A);
assign X = (A|(B|((!C_N)|(!D_N))));
endmodule

module sky130_fd_sc_hd__or4bb_4 (output X, input D_N, input C_N, input B, input A);
assign X = (A|(B|((!C_N)|(!D_N))));
endmodule

module sky130_fd_sc_hd__probe_p_8 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__probec_p_8 (output X, input A);
assign X = A;
endmodule

module sky130_fd_sc_hd__sdfbbn_1 (input SET_B, input SCE, input SCD, input RESET_B, output Q_N, output Q, input D, input CLK_N);
reg IQ_N; always @(posedge !CLK_N) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge !CLK_N) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfbbn_2 (input SET_B, input SCE, input SCD, input RESET_B, output Q_N, output Q, input D, input CLK_N);
reg IQ_N; always @(posedge !CLK_N) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge !CLK_N) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfbbp_1 (input SET_B, input SCE, input SCD, input RESET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfrbp_1 (input SCE, input SCD, input RESET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfrbp_2 (input SCE, input SCD, input RESET_B, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfrtn_1 (input SCE, input SCD, input RESET_B, output Q, input D, input CLK_N);
reg IQ; always @(posedge !CLK_N) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfrtp_1 (input SCE, input SCD, input RESET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfrtp_2 (input SCE, input SCD, input RESET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfrtp_4 (input SCE, input SCD, input RESET_B, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfsbp_1 (input SET_B, input SCE, input SCD, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfsbp_2 (input SET_B, input SCE, input SCD, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfstp_1 (input SET_B, input SCE, input SCD, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfstp_2 (input SET_B, input SCE, input SCD, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfstp_4 (input SET_B, input SCE, input SCD, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfxbp_1 (input SCE, input SCD, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfxbp_2 (input SCE, input SCD, output Q_N, output Q, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfxtp_1 (input SCE, input SCD, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfxtp_2 (input SCE, input SCD, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdfxtp_4 (input SCE, input SCD, output Q, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sdlclkp_1 (input SCE, output GCLK, input GATE, input CLK);

endmodule

module sky130_fd_sc_hd__sdlclkp_2 (input SCE, output GCLK, input GATE, input CLK);

endmodule

module sky130_fd_sc_hd__sdlclkp_4 (input SCE, output GCLK, input GATE, input CLK);

endmodule

module sky130_fd_sc_hd__sedfxbp_1 (input SCE, input SCD, output Q_N, output Q, input DE, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sedfxbp_2 (input SCE, input SCD, output Q_N, output Q, input DE, input D, input CLK);
reg IQ_N; always @(posedge CLK) IQ_N <= ~D; assign Q_N = IQ_N;
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sedfxtp_1 (input SCE, input SCD, output Q, input DE, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sedfxtp_2 (input SCE, input SCD, output Q, input DE, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__sedfxtp_4 (input SCE, input SCD, output Q, input DE, input D, input CLK);
reg IQ; always @(posedge CLK) IQ <= ~D; assign Q = IQ;
endmodule

module sky130_fd_sc_hd__xnor2_1 (output Y, input B, input A);
assign Y = (((!A)&(!B))|(A&B));
endmodule

module sky130_fd_sc_hd__xnor2_2 (output Y, input B, input A);
assign Y = (((!A)&(!B))|(A&B));
endmodule

module sky130_fd_sc_hd__xnor2_4 (output Y, input B, input A);
assign Y = (((!A)&(!B))|(A&B));
endmodule

module sky130_fd_sc_hd__xnor3_1 (output X, input C, input B, input A);
assign X = (((!A)&((!B)&(!C)))|((A&(B&(!C)))|((A&((!B)&C))|((!A)&(B&C)))));
endmodule

module sky130_fd_sc_hd__xnor3_2 (output X, input C, input B, input A);
assign X = (((!A)&((!B)&(!C)))|((A&(B&(!C)))|((A&((!B)&C))|((!A)&(B&C)))));
endmodule

module sky130_fd_sc_hd__xnor3_4 (output X, input C, input B, input A);
assign X = (((!A)&((!B)&(!C)))|((A&(B&(!C)))|((A&((!B)&C))|((!A)&(B&C)))));
endmodule

module sky130_fd_sc_hd__xor2_1 (output X, input B, input A);
assign X = ((A&(!B))|((!A)&B));
endmodule

module sky130_fd_sc_hd__xor2_2 (output X, input B, input A);
assign X = ((A&(!B))|((!A)&B));
endmodule

module sky130_fd_sc_hd__xor2_4 (output X, input B, input A);
assign X = ((A&(!B))|((!A)&B));
endmodule

module sky130_fd_sc_hd__xor3_1 (output X, input C, input B, input A);
assign X = ((A&((!B)&(!C)))|(((!A)&(B&(!C)))|(((!A)&((!B)&C))|(A&(B&C)))));
endmodule

module sky130_fd_sc_hd__xor3_2 (output X, input C, input B, input A);
assign X = ((A&((!B)&(!C)))|(((!A)&(B&(!C)))|(((!A)&((!B)&C))|(A&(B&C)))));
endmodule

module sky130_fd_sc_hd__xor3_4 (output X, input C, input B, input A);
assign X = ((A&((!B)&(!C)))|(((!A)&(B&(!C)))|(((!A)&((!B)&C))|(A&(B&C)))));
endmodule

