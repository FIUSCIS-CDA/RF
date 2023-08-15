// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue Aug 15 13:40:33 2023"

module RF(
	reset,
	clk,
	we,
	r1a,
	r2a,
	wa,
	wd,
	r1d,
	r2d
);


input wire	reset;
input wire	clk;
input wire	we;
input wire	[4:0] r1a;
input wire	[4:0] r2a;
input wire	[4:0] wa;
input wire	[31:0] wd;
output wire	[31:0] r1d;
output wire	[31:0] r2d;

wire	[31:0] contents_a0;
wire	[31:0] contents_a1;
wire	[31:0] contents_a2;
wire	[31:0] contents_a3;
wire	[31:0] contents_at;
wire	[31:0] contents_fp;
wire	[31:0] contents_gp;
wire	[31:0] contents_k0;
wire	[31:0] contents_k1;
wire	[31:0] contents_ra;
wire	[31:0] contents_s0;
wire	[31:0] contents_s1;
wire	[31:0] contents_s2;
wire	[31:0] contents_s3;
wire	[31:0] contents_s4;
wire	[31:0] contents_s5;
wire	[31:0] contents_s6;
wire	[31:0] contents_s7;
wire	[31:0] contents_sp;
wire	[31:0] contents_t0;
wire	[31:0] contents_t1;
wire	[31:0] contents_t2;
wire	[31:0] contents_t3;
wire	[31:0] contents_t4;
wire	[31:0] contents_t5;
wire	[31:0] contents_t6;
wire	[31:0] contents_t7;
wire	[31:0] contents_t8;
wire	[31:0] contents_t9;
wire	[31:0] contents_v0;
wire	[31:0] contents_v1;
wire	[31:0] contents_zero;
wire	ENa0;
wire	ENa1;
wire	ENa2;
wire	ENa3;
wire	ENat;
wire	ENfp;
wire	ENgp;
wire	ENk0;
wire	ENk1;
wire	ENra;
wire	ENs0;
wire	ENs1;
wire	ENs2;
wire	ENs3;
wire	ENs4;
wire	ENs5;
wire	ENs6;
wire	ENs7;
wire	ENsp;
wire	ENt0;
wire	ENt1;
wire	ENt2;
wire	ENt3;
wire	ENt4;
wire	ENt5;
wire	ENt6;
wire	ENt7;
wire	ENt8;
wire	ENt9;
wire	ENv0;
wire	ENv1;
wire	ENzero;
wire	wa_a0;
wire	wa_a1;
wire	wa_a2;
wire	wa_a3;
wire	wa_at;
wire	wa_fp;
wire	wa_gp;
wire	wa_k0;
wire	wa_k1;
wire	wa_ra;
wire	wa_s0;
wire	wa_s1;
wire	wa_s2;
wire	wa_s3;
wire	wa_s4;
wire	wa_s5;
wire	wa_s6;
wire	wa_s7;
wire	wa_sp;
wire	wa_t0;
wire	wa_t1;
wire	wa_t2;
wire	wa_t3;
wire	wa_t4;
wire	wa_t5;
wire	wa_t6;
wire	wa_t7;
wire	wa_t8;
wire	wa_t9;
wire	wa_v0;
wire	wa_v1;
wire	wa_zero;





Flopenr_32	b2v_a0(
	.reset(reset),
	.clk(clk),
	.E(ENa0),
	.D(wd),
	.Q(contents_a0));


Flopenr_32	b2v_a1(
	.reset(reset),
	.clk(clk),
	.E(ENa1),
	.D(wd),
	.Q(contents_a1));


Flopenr_32	b2v_a2(
	.reset(reset),
	.clk(clk),
	.E(ENa2),
	.D(wd),
	.Q(contents_a2));


Flopenr_32	b2v_a3(
	.reset(reset),
	.clk(clk),
	.E(ENa3),
	.D(wd),
	.Q(contents_a3));


Flopenr_32	b2v_at(
	.reset(reset),
	.clk(clk),
	.E(ENat),
	.D(wd),
	.Q(contents_at));


Flopenr_32	b2v_fp(
	.reset(reset),
	.clk(clk),
	.E(ENfp),
	.D(wd),
	.Q(contents_fp));


Flopenr_32	b2v_gp(
	.reset(reset),
	.clk(clk),
	.E(ENgp),
	.D(wd),
	.Q(contents_gp));

assign	ENzero = wa_zero & we;

assign	ENat = wa_at & we;

assign	ENv0 = wa_v0 & we;

assign	ENv1 = wa_v1 & we;

assign	ENa0 = wa_a0 & we;

assign	ENa1 = wa_a1 & we;

assign	ENa2 = wa_a2 & we;

assign	ENa3 = wa_a3 & we;

assign	ENt0 = wa_t0 & we;

assign	ENt1 = wa_t1 & we;

assign	ENt2 = wa_t2 & we;

assign	ENt3 = wa_t3 & we;

assign	ENt4 = wa_t4 & we;

assign	ENt5 = wa_t5 & we;

assign	ENt6 = wa_t6 & we;

assign	ENt7 = wa_t7 & we;

assign	ENs0 = wa_s0 & we;

assign	ENs1 = wa_s1 & we;

assign	ENs2 = wa_s2 & we;

assign	ENs3 = wa_s3 & we;

assign	ENs4 = wa_s4 & we;

assign	ENs5 = wa_s5 & we;

assign	ENs6 = wa_s6 & we;

assign	ENs7 = wa_s7 & we;

assign	ENt8 = wa_t8 & we;

assign	ENt9 = wa_t9 & we;

assign	ENk0 = wa_k0 & we;

assign	ENk1 = wa_k1 & we;

assign	ENgp = wa_gp & we;

assign	ENsp = wa_sp & we;

assign	ENfp = wa_fp & we;

assign	ENra = wa_ra & we;


Flopenr_32	b2v_k0(
	.reset(reset),
	.clk(clk),
	.E(ENk0),
	.D(wd),
	.Q(contents_k0));


Flopenr_32	b2v_k1(
	.reset(reset),
	.clk(clk),
	.E(ENk1),
	.D(wd),
	.Q(contents_k1));


MUX32_32	b2v_mux_r1a(
	.I0(contents_zero),
	.I1(contents_at),
	.I2(contents_v0),
	.I3(contents_v1),
	.I4(contents_a0),
	.I5(contents_a1),
	.I6(contents_a2),
	.I7(contents_a3),
	.I8(contents_t0),
	.I9(contents_t1),
	.I_10(contents_t2),
	.I_11(contents_t3),
	.I_12(contents_t4),
	.I_13(contents_t5),
	.I_14(contents_t6),
	.I_15(contents_t7),
	.I_16(contents_s0),
	.I_17(contents_s1),
	.I_18(contents_s2),
	.I_19(contents_s3),
	.I_20(contents_s4),
	.I_21(contents_s5),
	.I_22(contents_s6),
	.I_23(contents_s7),
	.I_24(contents_t8),
	.I_25(contents_t9),
	.I_26(contents_k0),
	.I_27(contents_k1),
	.I_28(contents_gp),
	.I_29(contents_sp),
	.I_30(contents_fp),
	.I_31(contents_ra),
	.S(r1a),
	.Y(r1d));


MUX32_32	b2v_mux_r2a(
	.I0(contents_zero),
	.I1(contents_at),
	.I2(contents_v0),
	.I3(contents_v1),
	.I4(contents_a0),
	.I5(contents_a1),
	.I6(contents_a2),
	.I7(contents_a3),
	.I8(contents_t0),
	.I9(contents_t1),
	.I_10(contents_t2),
	.I_11(contents_t3),
	.I_12(contents_t4),
	.I_13(contents_t5),
	.I_14(contents_t6),
	.I_15(contents_t7),
	.I_16(contents_s0),
	.I_17(contents_s1),
	.I_18(contents_s2),
	.I_19(contents_s3),
	.I_20(contents_s4),
	.I_21(contents_s5),
	.I_22(contents_s6),
	.I_23(contents_s7),
	.I_24(contents_t8),
	.I_25(contents_t9),
	.I_26(contents_k0),
	.I_27(contents_k1),
	.I_28(contents_gp),
	.I_29(contents_sp),
	.I_30(contents_fp),
	.I_31(contents_ra),
	.S(r2a),
	.Y(r2d));


Decoder_32	b2v_myDecoder(
	.A(wa),
	.Q0(wa_zero),
	.Q1(wa_at),
	.Q2(wa_v0),
	.Q3(wa_v1),
	.Q4(wa_a0),
	.Q5(wa_a1),
	.Q6(wa_a2),
	.Q7(wa_a3),
	.Q8(wa_t0),
	.Q9(wa_t1),
	.Q10(wa_t2),
	.Q11(wa_t3),
	.Q12(wa_t4),
	.Q13(wa_t5),
	.Q14(wa_t6),
	.Q15(wa_t7),
	.Q16(wa_s0),
	.Q17(wa_s1),
	.Q18(wa_s2),
	.Q19(wa_s3),
	.Q20(wa_s4),
	.Q21(wa_s5),
	.Q22(wa_s6),
	.Q23(wa_s7),
	.Q24(wa_t8),
	.Q25(wa_t9),
	.Q26(wa_k0),
	.Q27(wa_k1),
	.Q28(wa_gp),
	.Q29(wa_sp),
	.Q30(wa_fp),
	.Q31(wa_ra));


Flopenr_32	b2v_ra(
	.reset(reset),
	.clk(clk),
	.E(ENra),
	.D(wd),
	.Q(contents_ra));


Flopenr_32	b2v_s0(
	.reset(reset),
	.clk(clk),
	.E(ENs0),
	.D(wd),
	.Q(contents_s0));


Flopenr_32	b2v_s1(
	.reset(reset),
	.clk(clk),
	.E(ENs1),
	.D(wd),
	.Q(contents_s1));


Flopenr_32	b2v_s2(
	.reset(reset),
	.clk(clk),
	.E(ENs2),
	.D(wd),
	.Q(contents_s2));


Flopenr_32	b2v_s3(
	.reset(reset),
	.clk(clk),
	.E(ENs3),
	.D(wd),
	.Q(contents_s3));


Flopenr_32	b2v_s4(
	.reset(reset),
	.clk(clk),
	.E(ENs4),
	.D(wd),
	.Q(contents_s4));


Flopenr_32	b2v_s5(
	.reset(reset),
	.clk(clk),
	.E(ENs5),
	.D(wd),
	.Q(contents_s5));


Flopenr_32	b2v_s6(
	.reset(reset),
	.clk(clk),
	.E(ENs6),
	.D(wd),
	.Q(contents_s6));


Flopenr_32	b2v_s7(
	.reset(reset),
	.clk(clk),
	.E(ENs7),
	.D(wd),
	.Q(contents_s7));


Flopenr_32	b2v_sp(
	.reset(reset),
	.clk(clk),
	.E(ENsp),
	.D(wd),
	.Q(contents_sp));


Flopenr_32	b2v_t0(
	.reset(reset),
	.clk(clk),
	.E(ENt0),
	.D(wd),
	.Q(contents_t0));


Flopenr_32	b2v_t1(
	.reset(reset),
	.clk(clk),
	.E(ENt1),
	.D(wd),
	.Q(contents_t1));


Flopenr_32	b2v_t2(
	.reset(reset),
	.clk(clk),
	.E(ENt2),
	.D(wd),
	.Q(contents_t2));


Flopenr_32	b2v_t3(
	.reset(reset),
	.clk(clk),
	.E(ENt3),
	.D(wd),
	.Q(contents_t3));


Flopenr_32	b2v_t4(
	.reset(reset),
	.clk(clk),
	.E(ENt4),
	.D(wd),
	.Q(contents_t4));


Flopenr_32	b2v_t5(
	.reset(reset),
	.clk(clk),
	.E(ENt5),
	.D(wd),
	.Q(contents_t5));


Flopenr_32	b2v_t6(
	.reset(reset),
	.clk(clk),
	.E(ENt6),
	.D(wd),
	.Q(contents_t6));


Flopenr_32	b2v_t7(
	.reset(reset),
	.clk(clk),
	.E(ENt7),
	.D(wd),
	.Q(contents_t7));


Flopenr_32	b2v_t8(
	.reset(reset),
	.clk(clk),
	.E(ENt8),
	.D(wd),
	.Q(contents_t8));


Flopenr_32	b2v_t9(
	.reset(reset),
	.clk(clk),
	.E(ENt9),
	.D(wd),
	.Q(contents_t9));


Flopenr_32	b2v_v0(
	.reset(reset),
	.clk(clk),
	.E(ENv0),
	.D(wd),
	.Q(contents_v0));


Flopenr_32	b2v_v1(
	.reset(reset),
	.clk(clk),
	.E(ENv1),
	.D(wd),
	.Q(contents_v1));


Flopenr_32	b2v_zero(
	.reset(reset),
	.clk(clk),
	.E(ENzero),
	.D(wd),
	.Q(contents_zero));


endmodule
