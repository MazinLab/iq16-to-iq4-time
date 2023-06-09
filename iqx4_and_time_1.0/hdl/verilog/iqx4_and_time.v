// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="iqx4_and_time_iqx4_and_time,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu28dr-ffvg1517-2-e,HLS_INPUT_CLOCK=1.818000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=1.025000,HLS_SYN_LAT=4,HLS_SYN_TPT=4,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=469,HLS_SYN_LUT=223,HLS_VERSION=2022_1}" *)

module iqx4_and_time (
        ap_clk,
        ap_rst_n,
        dac_iq_TDATA,
        dac_iq_TVALID,
        dac_iq_TREADY,
        dac_iq_TKEEP,
        dac_iq_TSTRB,
        dac_iq_TUSER,
        dac_iq_TLAST,
        iq4x_TDATA,
        iq4x_TVALID,
        iq4x_TREADY,
        iq4x_TKEEP,
        iq4x_TSTRB,
        iq4x_TUSER,
        iq4x_TLAST,
        time_r_TDATA,
        time_r_TVALID,
        time_r_TREADY
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input  [511:0] dac_iq_TDATA;
input   dac_iq_TVALID;
output   dac_iq_TREADY;
input  [63:0] dac_iq_TKEEP;
input  [63:0] dac_iq_TSTRB;
input  [7:0] dac_iq_TUSER;
input  [0:0] dac_iq_TLAST;
output  [127:0] iq4x_TDATA;
output   iq4x_TVALID;
input   iq4x_TREADY;
output  [15:0] iq4x_TKEEP;
output  [15:0] iq4x_TSTRB;
output  [8:0] iq4x_TUSER;
output  [0:0] iq4x_TLAST;
output  [39:0] time_r_TDATA;
output   time_r_TVALID;
input   time_r_TREADY;

 reg    ap_rst_n_inv;
reg   [35:0] p_time_V;
reg    dac_iq_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0;
reg    iq4x_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg    ap_enable_reg_pp0_iter1;
reg    time_r_TDATA_blk_n;
reg   [0:0] tmp_last_V_reg_234;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state1_io;
wire    regslice_both_iq4x_V_data_V_U_apdone_blk;
wire    regslice_both_time_r_U_apdone_blk;
reg    ap_block_state5_pp0_stage0_iter1;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [8:0] out_user_V_fu_147_p3;
reg   [8:0] out_user_V_reg_239;
wire   [127:0] out_data_V_fu_160_p1;
wire   [39:0] zext_ln174_fu_165_p1;
reg   [39:0] zext_ln174_reg_252;
reg   [127:0] out_data_V_1_reg_257;
reg   [127:0] out_data_V_2_reg_262;
reg   [127:0] out_data_V_3_reg_267;
wire   [8:0] out_user_V_1_fu_216_p2;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_state2_io;
reg    ap_block_pp0_stage1_11001;
wire   [8:0] out_user_V_2_fu_222_p2;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage2_11001;
wire   [8:0] out_user_V_3_fu_228_p2;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage3_11001;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage0_subdone;
wire   [35:0] add_ln886_fu_204_p2;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp0_stage1_01001;
reg    ap_block_pp0_stage2_01001;
reg    ap_block_pp0_stage3_01001;
wire   [6:0] trunc_ln232_fu_143_p1;
wire   [35:0] zext_ln886_fu_200_p1;
reg   [3:0] ap_NS_fsm;
wire    ap_reset_idle_pp0;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_dac_iq_V_data_V_U_apdone_blk;
wire   [511:0] dac_iq_TDATA_int_regslice;
wire    dac_iq_TVALID_int_regslice;
reg    dac_iq_TREADY_int_regslice;
wire    regslice_both_dac_iq_V_data_V_U_ack_in;
wire    regslice_both_dac_iq_V_keep_V_U_apdone_blk;
wire   [63:0] dac_iq_TKEEP_int_regslice;
wire    regslice_both_dac_iq_V_keep_V_U_vld_out;
wire    regslice_both_dac_iq_V_keep_V_U_ack_in;
wire    regslice_both_dac_iq_V_strb_V_U_apdone_blk;
wire   [63:0] dac_iq_TSTRB_int_regslice;
wire    regslice_both_dac_iq_V_strb_V_U_vld_out;
wire    regslice_both_dac_iq_V_strb_V_U_ack_in;
wire    regslice_both_dac_iq_V_user_V_U_apdone_blk;
wire   [7:0] dac_iq_TUSER_int_regslice;
wire    regslice_both_dac_iq_V_user_V_U_vld_out;
wire    regslice_both_dac_iq_V_user_V_U_ack_in;
wire    regslice_both_dac_iq_V_last_V_U_apdone_blk;
wire   [0:0] dac_iq_TLAST_int_regslice;
wire    regslice_both_dac_iq_V_last_V_U_vld_out;
wire    regslice_both_dac_iq_V_last_V_U_ack_in;
reg   [127:0] iq4x_TDATA_int_regslice;
reg    iq4x_TVALID_int_regslice;
wire    iq4x_TREADY_int_regslice;
wire    regslice_both_iq4x_V_data_V_U_vld_out;
wire    regslice_both_iq4x_V_keep_V_U_apdone_blk;
wire    regslice_both_iq4x_V_keep_V_U_ack_in_dummy;
wire    regslice_both_iq4x_V_keep_V_U_vld_out;
wire    regslice_both_iq4x_V_strb_V_U_apdone_blk;
wire    regslice_both_iq4x_V_strb_V_U_ack_in_dummy;
wire    regslice_both_iq4x_V_strb_V_U_vld_out;
wire    regslice_both_iq4x_V_user_V_U_apdone_blk;
reg   [8:0] iq4x_TUSER_int_regslice;
wire    regslice_both_iq4x_V_user_V_U_ack_in_dummy;
wire    regslice_both_iq4x_V_user_V_U_vld_out;
wire    regslice_both_iq4x_V_last_V_U_apdone_blk;
reg   [0:0] iq4x_TLAST_int_regslice;
wire    regslice_both_iq4x_V_last_V_U_ack_in_dummy;
wire    regslice_both_iq4x_V_last_V_U_vld_out;
reg   [39:0] time_r_TDATA_int_regslice;
reg    time_r_TVALID_int_regslice;
wire    time_r_TREADY_int_regslice;
wire    regslice_both_time_r_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 p_time_V = 36'd0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

iqx4_and_time_regslice_both #(
    .DataWidth( 512 ))
regslice_both_dac_iq_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(dac_iq_TDATA),
    .vld_in(dac_iq_TVALID),
    .ack_in(regslice_both_dac_iq_V_data_V_U_ack_in),
    .data_out(dac_iq_TDATA_int_regslice),
    .vld_out(dac_iq_TVALID_int_regslice),
    .ack_out(dac_iq_TREADY_int_regslice),
    .apdone_blk(regslice_both_dac_iq_V_data_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 64 ))
regslice_both_dac_iq_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(dac_iq_TKEEP),
    .vld_in(dac_iq_TVALID),
    .ack_in(regslice_both_dac_iq_V_keep_V_U_ack_in),
    .data_out(dac_iq_TKEEP_int_regslice),
    .vld_out(regslice_both_dac_iq_V_keep_V_U_vld_out),
    .ack_out(dac_iq_TREADY_int_regslice),
    .apdone_blk(regslice_both_dac_iq_V_keep_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 64 ))
regslice_both_dac_iq_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(dac_iq_TSTRB),
    .vld_in(dac_iq_TVALID),
    .ack_in(regslice_both_dac_iq_V_strb_V_U_ack_in),
    .data_out(dac_iq_TSTRB_int_regslice),
    .vld_out(regslice_both_dac_iq_V_strb_V_U_vld_out),
    .ack_out(dac_iq_TREADY_int_regslice),
    .apdone_blk(regslice_both_dac_iq_V_strb_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 8 ))
regslice_both_dac_iq_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(dac_iq_TUSER),
    .vld_in(dac_iq_TVALID),
    .ack_in(regslice_both_dac_iq_V_user_V_U_ack_in),
    .data_out(dac_iq_TUSER_int_regslice),
    .vld_out(regslice_both_dac_iq_V_user_V_U_vld_out),
    .ack_out(dac_iq_TREADY_int_regslice),
    .apdone_blk(regslice_both_dac_iq_V_user_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 1 ))
regslice_both_dac_iq_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(dac_iq_TLAST),
    .vld_in(dac_iq_TVALID),
    .ack_in(regslice_both_dac_iq_V_last_V_U_ack_in),
    .data_out(dac_iq_TLAST_int_regslice),
    .vld_out(regslice_both_dac_iq_V_last_V_U_vld_out),
    .ack_out(dac_iq_TREADY_int_regslice),
    .apdone_blk(regslice_both_dac_iq_V_last_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 128 ))
regslice_both_iq4x_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(iq4x_TDATA_int_regslice),
    .vld_in(iq4x_TVALID_int_regslice),
    .ack_in(iq4x_TREADY_int_regslice),
    .data_out(iq4x_TDATA),
    .vld_out(regslice_both_iq4x_V_data_V_U_vld_out),
    .ack_out(iq4x_TREADY),
    .apdone_blk(regslice_both_iq4x_V_data_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 16 ))
regslice_both_iq4x_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(16'd0),
    .vld_in(iq4x_TVALID_int_regslice),
    .ack_in(regslice_both_iq4x_V_keep_V_U_ack_in_dummy),
    .data_out(iq4x_TKEEP),
    .vld_out(regslice_both_iq4x_V_keep_V_U_vld_out),
    .ack_out(iq4x_TREADY),
    .apdone_blk(regslice_both_iq4x_V_keep_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 16 ))
regslice_both_iq4x_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(16'd0),
    .vld_in(iq4x_TVALID_int_regslice),
    .ack_in(regslice_both_iq4x_V_strb_V_U_ack_in_dummy),
    .data_out(iq4x_TSTRB),
    .vld_out(regslice_both_iq4x_V_strb_V_U_vld_out),
    .ack_out(iq4x_TREADY),
    .apdone_blk(regslice_both_iq4x_V_strb_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 9 ))
regslice_both_iq4x_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(iq4x_TUSER_int_regslice),
    .vld_in(iq4x_TVALID_int_regslice),
    .ack_in(regslice_both_iq4x_V_user_V_U_ack_in_dummy),
    .data_out(iq4x_TUSER),
    .vld_out(regslice_both_iq4x_V_user_V_U_vld_out),
    .ack_out(iq4x_TREADY),
    .apdone_blk(regslice_both_iq4x_V_user_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 1 ))
regslice_both_iq4x_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(iq4x_TLAST_int_regslice),
    .vld_in(iq4x_TVALID_int_regslice),
    .ack_in(regslice_both_iq4x_V_last_V_U_ack_in_dummy),
    .data_out(iq4x_TLAST),
    .vld_out(regslice_both_iq4x_V_last_V_U_vld_out),
    .ack_out(iq4x_TREADY),
    .apdone_blk(regslice_both_iq4x_V_last_V_U_apdone_blk)
);

iqx4_and_time_regslice_both #(
    .DataWidth( 40 ))
regslice_both_time_r_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(time_r_TDATA_int_regslice),
    .vld_in(time_r_TVALID_int_regslice),
    .ack_in(time_r_TREADY_int_regslice),
    .data_out(time_r_TDATA),
    .vld_out(regslice_both_time_r_U_vld_out),
    .ack_out(time_r_TREADY),
    .apdone_blk(regslice_both_time_r_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_data_V_1_reg_257 <= {{dac_iq_TDATA_int_regslice[255:128]}};
        out_data_V_2_reg_262 <= {{dac_iq_TDATA_int_regslice[383:256]}};
        out_data_V_3_reg_267 <= {{dac_iq_TDATA_int_regslice[511:384]}};
        out_user_V_reg_239[8 : 2] <= out_user_V_fu_147_p3[8 : 2];
        tmp_last_V_reg_234 <= dac_iq_TLAST_int_regslice;
        zext_ln174_reg_252[35 : 0] <= zext_ln174_fu_165_p1[35 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_time_V <= add_ln886_fu_204_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

assign ap_reset_idle_pp0 = 1'b0;

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dac_iq_TDATA_blk_n = dac_iq_TVALID_int_regslice;
    end else begin
        dac_iq_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dac_iq_TREADY_int_regslice = 1'b1;
    end else begin
        dac_iq_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        iq4x_TDATA_blk_n = iq4x_TREADY_int_regslice;
    end else begin
        iq4x_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_01001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            iq4x_TDATA_int_regslice = out_data_V_3_reg_267;
        end else if (((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            iq4x_TDATA_int_regslice = out_data_V_2_reg_262;
        end else if (((1'b0 == ap_block_pp0_stage1_01001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            iq4x_TDATA_int_regslice = out_data_V_1_reg_257;
        end else if (((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            iq4x_TDATA_int_regslice = out_data_V_fu_160_p1;
        end else begin
            iq4x_TDATA_int_regslice = 'bx;
        end
    end else begin
        iq4x_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        iq4x_TLAST_int_regslice = tmp_last_V_reg_234;
    end else if ((((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        iq4x_TLAST_int_regslice = 1'd0;
    end else begin
        iq4x_TLAST_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_01001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            iq4x_TUSER_int_regslice = out_user_V_3_fu_228_p2;
        end else if (((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            iq4x_TUSER_int_regslice = out_user_V_2_fu_222_p2;
        end else if (((1'b0 == ap_block_pp0_stage1_01001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            iq4x_TUSER_int_regslice = out_user_V_1_fu_216_p2;
        end else if (((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            iq4x_TUSER_int_regslice = out_user_V_fu_147_p3;
        end else begin
            iq4x_TUSER_int_regslice = 'bx;
        end
    end else begin
        iq4x_TUSER_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        iq4x_TVALID_int_regslice = 1'b1;
    end else begin
        iq4x_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        time_r_TDATA_blk_n = time_r_TREADY_int_regslice;
    end else begin
        time_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        time_r_TDATA_int_regslice = zext_ln174_reg_252;
    end else if (((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        time_r_TDATA_int_regslice = zext_ln174_fu_165_p1;
    end else begin
        time_r_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        time_r_TVALID_int_regslice = 1'b1;
    end else begin
        time_r_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln886_fu_204_p2 = (p_time_V + zext_ln886_fu_200_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (regslice_both_time_r_U_apdone_blk == 1'b1) | (regslice_both_iq4x_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (dac_iq_TVALID_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state5_io) | (regslice_both_time_r_U_apdone_blk == 1'b1) | (regslice_both_iq4x_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (dac_iq_TVALID_int_regslice == 1'b0) | (1'b1 == ap_block_state1_io))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state5_io) | (regslice_both_time_r_U_apdone_blk == 1'b1) | (regslice_both_iq4x_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (dac_iq_TVALID_int_regslice == 1'b0) | (1'b1 == ap_block_state1_io))));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state2_io)));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_01001 = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state3_io)));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_01001 = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state4_io)));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((1'b1 == 1'b1) & ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (1'b1 == ap_block_state4_io)));
end

always @ (*) begin
    ap_block_state1_io = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (dac_iq_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_io = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_io = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state5_io = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = ((time_r_TREADY_int_regslice == 1'b0) | (iq4x_TREADY_int_regslice == 1'b0) | (regslice_both_time_r_U_apdone_blk == 1'b1) | (regslice_both_iq4x_V_data_V_U_apdone_blk == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign dac_iq_TREADY = regslice_both_dac_iq_V_data_V_U_ack_in;

assign iq4x_TVALID = regslice_both_iq4x_V_data_V_U_vld_out;

assign out_data_V_fu_160_p1 = dac_iq_TDATA_int_regslice[127:0];

assign out_user_V_1_fu_216_p2 = (out_user_V_reg_239 | 9'd1);

assign out_user_V_2_fu_222_p2 = (out_user_V_reg_239 | 9'd2);

assign out_user_V_3_fu_228_p2 = (out_user_V_reg_239 | 9'd3);

assign out_user_V_fu_147_p3 = {{trunc_ln232_fu_143_p1}, {2'd0}};

assign time_r_TVALID = regslice_both_time_r_U_vld_out;

assign trunc_ln232_fu_143_p1 = dac_iq_TUSER_int_regslice[6:0];

assign zext_ln174_fu_165_p1 = p_time_V;

assign zext_ln886_fu_200_p1 = dac_iq_TLAST_int_regslice;

always @ (posedge ap_clk) begin
    out_user_V_reg_239[1:0] <= 2'b00;
    zext_ln174_reg_252[39:36] <= 4'b0000;
end


reg find_kernel_block = 0;
// synthesis translate_off
`include "iqx4_and_time_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //iqx4_and_time

