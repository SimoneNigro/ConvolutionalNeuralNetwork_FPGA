// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module set_out_buffer_to_0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        partial_outputfm_V_0_address1,
        partial_outputfm_V_0_ce1,
        partial_outputfm_V_0_we1,
        partial_outputfm_V_0_d1,
        partial_outputfm_V_1_address1,
        partial_outputfm_V_1_ce1,
        partial_outputfm_V_1_we1,
        partial_outputfm_V_1_d1,
        partial_outputfm_V_2_address1,
        partial_outputfm_V_2_ce1,
        partial_outputfm_V_2_we1,
        partial_outputfm_V_2_d1,
        partial_outputfm_V_3_address1,
        partial_outputfm_V_3_ce1,
        partial_outputfm_V_3_we1,
        partial_outputfm_V_3_d1,
        partial_outputfm_V_4_address1,
        partial_outputfm_V_4_ce1,
        partial_outputfm_V_4_we1,
        partial_outputfm_V_4_d1,
        partial_outputfm_V_5_address1,
        partial_outputfm_V_5_ce1,
        partial_outputfm_V_5_we1,
        partial_outputfm_V_5_d1,
        partial_outputfm_V_6_address1,
        partial_outputfm_V_6_ce1,
        partial_outputfm_V_6_we1,
        partial_outputfm_V_6_d1,
        partial_outputfm_V_7_address1,
        partial_outputfm_V_7_ce1,
        partial_outputfm_V_7_we1,
        partial_outputfm_V_7_d1,
        partial_outputfm_V_8_address1,
        partial_outputfm_V_8_ce1,
        partial_outputfm_V_8_we1,
        partial_outputfm_V_8_d1,
        partial_outputfm_V_9_address1,
        partial_outputfm_V_9_ce1,
        partial_outputfm_V_9_we1,
        partial_outputfm_V_9_d1,
        partial_outputfm_V_10_address1,
        partial_outputfm_V_10_ce1,
        partial_outputfm_V_10_we1,
        partial_outputfm_V_10_d1,
        partial_outputfm_V_11_address1,
        partial_outputfm_V_11_ce1,
        partial_outputfm_V_11_we1,
        partial_outputfm_V_11_d1,
        partial_outputfm_V_12_address1,
        partial_outputfm_V_12_ce1,
        partial_outputfm_V_12_we1,
        partial_outputfm_V_12_d1,
        partial_outputfm_V_13_address1,
        partial_outputfm_V_13_ce1,
        partial_outputfm_V_13_we1,
        partial_outputfm_V_13_d1,
        partial_outputfm_V_14_address1,
        partial_outputfm_V_14_ce1,
        partial_outputfm_V_14_we1,
        partial_outputfm_V_14_d1,
        partial_outputfm_V_15_address1,
        partial_outputfm_V_15_ce1,
        partial_outputfm_V_15_we1,
        partial_outputfm_V_15_d1,
        partial_outputfm_V_16_address1,
        partial_outputfm_V_16_ce1,
        partial_outputfm_V_16_we1,
        partial_outputfm_V_16_d1,
        partial_outputfm_V_17_address1,
        partial_outputfm_V_17_ce1,
        partial_outputfm_V_17_we1,
        partial_outputfm_V_17_d1,
        partial_outputfm_V_18_address1,
        partial_outputfm_V_18_ce1,
        partial_outputfm_V_18_we1,
        partial_outputfm_V_18_d1,
        partial_outputfm_V_19_address1,
        partial_outputfm_V_19_ce1,
        partial_outputfm_V_19_we1,
        partial_outputfm_V_19_d1,
        partial_outputfm_V_20_address1,
        partial_outputfm_V_20_ce1,
        partial_outputfm_V_20_we1,
        partial_outputfm_V_20_d1,
        partial_outputfm_V_21_address1,
        partial_outputfm_V_21_ce1,
        partial_outputfm_V_21_we1,
        partial_outputfm_V_21_d1,
        partial_outputfm_V_22_address1,
        partial_outputfm_V_22_ce1,
        partial_outputfm_V_22_we1,
        partial_outputfm_V_22_d1,
        partial_outputfm_V_23_address1,
        partial_outputfm_V_23_ce1,
        partial_outputfm_V_23_we1,
        partial_outputfm_V_23_d1,
        partial_outputfm_V_24_address1,
        partial_outputfm_V_24_ce1,
        partial_outputfm_V_24_we1,
        partial_outputfm_V_24_d1,
        partial_outputfm_V_25_address1,
        partial_outputfm_V_25_ce1,
        partial_outputfm_V_25_we1,
        partial_outputfm_V_25_d1,
        partial_outputfm_V_26_address1,
        partial_outputfm_V_26_ce1,
        partial_outputfm_V_26_we1,
        partial_outputfm_V_26_d1,
        partial_outputfm_V_27_address1,
        partial_outputfm_V_27_ce1,
        partial_outputfm_V_27_we1,
        partial_outputfm_V_27_d1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] partial_outputfm_V_0_address1;
output   partial_outputfm_V_0_ce1;
output   partial_outputfm_V_0_we1;
output  [47:0] partial_outputfm_V_0_d1;
output  [9:0] partial_outputfm_V_1_address1;
output   partial_outputfm_V_1_ce1;
output   partial_outputfm_V_1_we1;
output  [47:0] partial_outputfm_V_1_d1;
output  [9:0] partial_outputfm_V_2_address1;
output   partial_outputfm_V_2_ce1;
output   partial_outputfm_V_2_we1;
output  [47:0] partial_outputfm_V_2_d1;
output  [9:0] partial_outputfm_V_3_address1;
output   partial_outputfm_V_3_ce1;
output   partial_outputfm_V_3_we1;
output  [47:0] partial_outputfm_V_3_d1;
output  [9:0] partial_outputfm_V_4_address1;
output   partial_outputfm_V_4_ce1;
output   partial_outputfm_V_4_we1;
output  [47:0] partial_outputfm_V_4_d1;
output  [9:0] partial_outputfm_V_5_address1;
output   partial_outputfm_V_5_ce1;
output   partial_outputfm_V_5_we1;
output  [47:0] partial_outputfm_V_5_d1;
output  [9:0] partial_outputfm_V_6_address1;
output   partial_outputfm_V_6_ce1;
output   partial_outputfm_V_6_we1;
output  [47:0] partial_outputfm_V_6_d1;
output  [9:0] partial_outputfm_V_7_address1;
output   partial_outputfm_V_7_ce1;
output   partial_outputfm_V_7_we1;
output  [47:0] partial_outputfm_V_7_d1;
output  [9:0] partial_outputfm_V_8_address1;
output   partial_outputfm_V_8_ce1;
output   partial_outputfm_V_8_we1;
output  [47:0] partial_outputfm_V_8_d1;
output  [9:0] partial_outputfm_V_9_address1;
output   partial_outputfm_V_9_ce1;
output   partial_outputfm_V_9_we1;
output  [47:0] partial_outputfm_V_9_d1;
output  [9:0] partial_outputfm_V_10_address1;
output   partial_outputfm_V_10_ce1;
output   partial_outputfm_V_10_we1;
output  [47:0] partial_outputfm_V_10_d1;
output  [9:0] partial_outputfm_V_11_address1;
output   partial_outputfm_V_11_ce1;
output   partial_outputfm_V_11_we1;
output  [47:0] partial_outputfm_V_11_d1;
output  [9:0] partial_outputfm_V_12_address1;
output   partial_outputfm_V_12_ce1;
output   partial_outputfm_V_12_we1;
output  [47:0] partial_outputfm_V_12_d1;
output  [9:0] partial_outputfm_V_13_address1;
output   partial_outputfm_V_13_ce1;
output   partial_outputfm_V_13_we1;
output  [47:0] partial_outputfm_V_13_d1;
output  [9:0] partial_outputfm_V_14_address1;
output   partial_outputfm_V_14_ce1;
output   partial_outputfm_V_14_we1;
output  [47:0] partial_outputfm_V_14_d1;
output  [9:0] partial_outputfm_V_15_address1;
output   partial_outputfm_V_15_ce1;
output   partial_outputfm_V_15_we1;
output  [47:0] partial_outputfm_V_15_d1;
output  [9:0] partial_outputfm_V_16_address1;
output   partial_outputfm_V_16_ce1;
output   partial_outputfm_V_16_we1;
output  [47:0] partial_outputfm_V_16_d1;
output  [9:0] partial_outputfm_V_17_address1;
output   partial_outputfm_V_17_ce1;
output   partial_outputfm_V_17_we1;
output  [47:0] partial_outputfm_V_17_d1;
output  [9:0] partial_outputfm_V_18_address1;
output   partial_outputfm_V_18_ce1;
output   partial_outputfm_V_18_we1;
output  [47:0] partial_outputfm_V_18_d1;
output  [9:0] partial_outputfm_V_19_address1;
output   partial_outputfm_V_19_ce1;
output   partial_outputfm_V_19_we1;
output  [47:0] partial_outputfm_V_19_d1;
output  [9:0] partial_outputfm_V_20_address1;
output   partial_outputfm_V_20_ce1;
output   partial_outputfm_V_20_we1;
output  [47:0] partial_outputfm_V_20_d1;
output  [9:0] partial_outputfm_V_21_address1;
output   partial_outputfm_V_21_ce1;
output   partial_outputfm_V_21_we1;
output  [47:0] partial_outputfm_V_21_d1;
output  [9:0] partial_outputfm_V_22_address1;
output   partial_outputfm_V_22_ce1;
output   partial_outputfm_V_22_we1;
output  [47:0] partial_outputfm_V_22_d1;
output  [9:0] partial_outputfm_V_23_address1;
output   partial_outputfm_V_23_ce1;
output   partial_outputfm_V_23_we1;
output  [47:0] partial_outputfm_V_23_d1;
output  [9:0] partial_outputfm_V_24_address1;
output   partial_outputfm_V_24_ce1;
output   partial_outputfm_V_24_we1;
output  [47:0] partial_outputfm_V_24_d1;
output  [9:0] partial_outputfm_V_25_address1;
output   partial_outputfm_V_25_ce1;
output   partial_outputfm_V_25_we1;
output  [47:0] partial_outputfm_V_25_d1;
output  [9:0] partial_outputfm_V_26_address1;
output   partial_outputfm_V_26_ce1;
output   partial_outputfm_V_26_we1;
output  [47:0] partial_outputfm_V_26_d1;
output  [9:0] partial_outputfm_V_27_address1;
output   partial_outputfm_V_27_ce1;
output   partial_outputfm_V_27_we1;
output  [47:0] partial_outputfm_V_27_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg partial_outputfm_V_0_ce1;
reg partial_outputfm_V_0_we1;
reg partial_outputfm_V_1_ce1;
reg partial_outputfm_V_1_we1;
reg partial_outputfm_V_2_ce1;
reg partial_outputfm_V_2_we1;
reg partial_outputfm_V_3_ce1;
reg partial_outputfm_V_3_we1;
reg partial_outputfm_V_4_ce1;
reg partial_outputfm_V_4_we1;
reg partial_outputfm_V_5_ce1;
reg partial_outputfm_V_5_we1;
reg partial_outputfm_V_6_ce1;
reg partial_outputfm_V_6_we1;
reg partial_outputfm_V_7_ce1;
reg partial_outputfm_V_7_we1;
reg partial_outputfm_V_8_ce1;
reg partial_outputfm_V_8_we1;
reg partial_outputfm_V_9_ce1;
reg partial_outputfm_V_9_we1;
reg partial_outputfm_V_10_ce1;
reg partial_outputfm_V_10_we1;
reg partial_outputfm_V_11_ce1;
reg partial_outputfm_V_11_we1;
reg partial_outputfm_V_12_ce1;
reg partial_outputfm_V_12_we1;
reg partial_outputfm_V_13_ce1;
reg partial_outputfm_V_13_we1;
reg partial_outputfm_V_14_ce1;
reg partial_outputfm_V_14_we1;
reg partial_outputfm_V_15_ce1;
reg partial_outputfm_V_15_we1;
reg partial_outputfm_V_16_ce1;
reg partial_outputfm_V_16_we1;
reg partial_outputfm_V_17_ce1;
reg partial_outputfm_V_17_we1;
reg partial_outputfm_V_18_ce1;
reg partial_outputfm_V_18_we1;
reg partial_outputfm_V_19_ce1;
reg partial_outputfm_V_19_we1;
reg partial_outputfm_V_20_ce1;
reg partial_outputfm_V_20_we1;
reg partial_outputfm_V_21_ce1;
reg partial_outputfm_V_21_we1;
reg partial_outputfm_V_22_ce1;
reg partial_outputfm_V_22_we1;
reg partial_outputfm_V_23_ce1;
reg partial_outputfm_V_23_we1;
reg partial_outputfm_V_24_ce1;
reg partial_outputfm_V_24_we1;
reg partial_outputfm_V_25_ce1;
reg partial_outputfm_V_25_we1;
reg partial_outputfm_V_26_ce1;
reg partial_outputfm_V_26_we1;
reg partial_outputfm_V_27_ce1;
reg partial_outputfm_V_27_we1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [9:0] indvar_flatten_reg_550;
reg   [5:0] r_reg_561;
reg   [4:0] c_reg_572;
wire   [0:0] exitcond_flatten_fu_583_p2;
reg   [0:0] exitcond_flatten_reg_675;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] indvar_flatten_next_fu_589_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [4:0] c_mid2_fu_607_p3;
reg   [4:0] c_mid2_reg_684;
wire   [5:0] tmp_mid2_v_fu_615_p3;
reg   [5:0] tmp_mid2_v_reg_689;
wire   [4:0] c_1_fu_623_p2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [5:0] ap_phi_mux_r_phi_fu_565_p4;
wire    ap_block_pp0_stage0;
wire  signed [63:0] tmp_32_cast_fu_635_p1;
wire   [0:0] exitcond_fu_601_p2;
wire   [5:0] r_1_fu_595_p2;
wire   [10:0] grp_fu_666_p3;
wire   [5:0] grp_fu_666_p0;
wire   [5:0] grp_fu_666_p1;
wire   [4:0] grp_fu_666_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [10:0] grp_fu_666_p00;
wire   [10:0] grp_fu_666_p20;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

zhang_cnn_mac_mulfYi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 5 ),
    .dout_WIDTH( 11 ))
zhang_cnn_mac_mulfYi_U774(
    .din0(grp_fu_666_p0),
    .din1(grp_fu_666_p1),
    .din2(grp_fu_666_p2),
    .dout(grp_fu_666_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((ap_block_pp0_stage0_subdone == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((ap_block_pp0_stage0_subdone == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
        end else if ((ap_block_pp0_stage0_subdone == 1'b0)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_fu_583_p2 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_reg_572 <= c_1_fu_623_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        c_reg_572 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_fu_583_p2 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_550 <= indvar_flatten_next_fu_589_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_550 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_reg_561 <= tmp_mid2_v_reg_689;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        r_reg_561 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_fu_583_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_mid2_reg_684 <= c_mid2_fu_607_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_675 <= exitcond_flatten_fu_583_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_fu_583_p2 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_mid2_v_reg_689 <= tmp_mid2_v_fu_615_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_583_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_r_phi_fu_565_p4 = tmp_mid2_v_reg_689;
    end else begin
        ap_phi_mux_r_phi_fu_565_p4 = r_reg_561;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_0_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_0_we1 = 1'b1;
    end else begin
        partial_outputfm_V_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_10_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_10_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_10_we1 = 1'b1;
    end else begin
        partial_outputfm_V_10_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_11_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_11_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_11_we1 = 1'b1;
    end else begin
        partial_outputfm_V_11_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_12_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_12_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_12_we1 = 1'b1;
    end else begin
        partial_outputfm_V_12_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_13_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_13_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_13_we1 = 1'b1;
    end else begin
        partial_outputfm_V_13_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_14_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_14_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_14_we1 = 1'b1;
    end else begin
        partial_outputfm_V_14_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_15_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_15_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_15_we1 = 1'b1;
    end else begin
        partial_outputfm_V_15_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_16_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_16_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_16_we1 = 1'b1;
    end else begin
        partial_outputfm_V_16_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_17_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_17_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_17_we1 = 1'b1;
    end else begin
        partial_outputfm_V_17_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_18_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_18_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_18_we1 = 1'b1;
    end else begin
        partial_outputfm_V_18_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_19_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_19_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_19_we1 = 1'b1;
    end else begin
        partial_outputfm_V_19_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_1_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_1_we1 = 1'b1;
    end else begin
        partial_outputfm_V_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_20_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_20_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_20_we1 = 1'b1;
    end else begin
        partial_outputfm_V_20_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_21_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_21_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_21_we1 = 1'b1;
    end else begin
        partial_outputfm_V_21_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_22_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_22_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_22_we1 = 1'b1;
    end else begin
        partial_outputfm_V_22_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_23_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_23_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_23_we1 = 1'b1;
    end else begin
        partial_outputfm_V_23_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_24_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_24_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_24_we1 = 1'b1;
    end else begin
        partial_outputfm_V_24_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_25_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_25_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_25_we1 = 1'b1;
    end else begin
        partial_outputfm_V_25_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_26_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_26_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_26_we1 = 1'b1;
    end else begin
        partial_outputfm_V_26_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_27_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_27_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_27_we1 = 1'b1;
    end else begin
        partial_outputfm_V_27_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_2_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_2_we1 = 1'b1;
    end else begin
        partial_outputfm_V_2_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_3_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_3_we1 = 1'b1;
    end else begin
        partial_outputfm_V_3_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_4_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_4_we1 = 1'b1;
    end else begin
        partial_outputfm_V_4_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_5_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_5_we1 = 1'b1;
    end else begin
        partial_outputfm_V_5_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_6_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_6_we1 = 1'b1;
    end else begin
        partial_outputfm_V_6_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_7_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_7_we1 = 1'b1;
    end else begin
        partial_outputfm_V_7_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_8_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_8_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_8_we1 = 1'b1;
    end else begin
        partial_outputfm_V_8_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_9_ce1 = 1'b1;
    end else begin
        partial_outputfm_V_9_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_11001 == 1'b0) & (exitcond_flatten_reg_675 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        partial_outputfm_V_9_we1 = 1'b1;
    end else begin
        partial_outputfm_V_9_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_block_pp0_stage0_subdone == 1'b0) & (exitcond_flatten_fu_583_p2 == 1'd1) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_block_pp0_stage0_subdone == 1'b0) & (exitcond_flatten_fu_583_p2 == 1'd1) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign c_1_fu_623_p2 = (c_mid2_fu_607_p3 + 5'd1);

assign c_mid2_fu_607_p3 = ((exitcond_fu_601_p2[0:0] === 1'b1) ? 5'd0 : c_reg_572);

assign exitcond_flatten_fu_583_p2 = ((indvar_flatten_reg_550 == 10'd875) ? 1'b1 : 1'b0);

assign exitcond_fu_601_p2 = ((c_reg_572 == 5'd25) ? 1'b1 : 1'b0);

assign grp_fu_666_p0 = grp_fu_666_p00;

assign grp_fu_666_p00 = tmp_mid2_v_reg_689;

assign grp_fu_666_p1 = 11'd25;

assign grp_fu_666_p2 = grp_fu_666_p20;

assign grp_fu_666_p20 = c_mid2_reg_684;

assign indvar_flatten_next_fu_589_p2 = (indvar_flatten_reg_550 + 10'd1);

assign partial_outputfm_V_0_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_0_d1 = 48'd0;

assign partial_outputfm_V_10_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_10_d1 = 48'd0;

assign partial_outputfm_V_11_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_11_d1 = 48'd0;

assign partial_outputfm_V_12_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_12_d1 = 48'd0;

assign partial_outputfm_V_13_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_13_d1 = 48'd0;

assign partial_outputfm_V_14_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_14_d1 = 48'd0;

assign partial_outputfm_V_15_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_15_d1 = 48'd0;

assign partial_outputfm_V_16_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_16_d1 = 48'd0;

assign partial_outputfm_V_17_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_17_d1 = 48'd0;

assign partial_outputfm_V_18_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_18_d1 = 48'd0;

assign partial_outputfm_V_19_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_19_d1 = 48'd0;

assign partial_outputfm_V_1_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_1_d1 = 48'd0;

assign partial_outputfm_V_20_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_20_d1 = 48'd0;

assign partial_outputfm_V_21_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_21_d1 = 48'd0;

assign partial_outputfm_V_22_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_22_d1 = 48'd0;

assign partial_outputfm_V_23_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_23_d1 = 48'd0;

assign partial_outputfm_V_24_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_24_d1 = 48'd0;

assign partial_outputfm_V_25_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_25_d1 = 48'd0;

assign partial_outputfm_V_26_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_26_d1 = 48'd0;

assign partial_outputfm_V_27_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_27_d1 = 48'd0;

assign partial_outputfm_V_2_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_2_d1 = 48'd0;

assign partial_outputfm_V_3_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_3_d1 = 48'd0;

assign partial_outputfm_V_4_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_4_d1 = 48'd0;

assign partial_outputfm_V_5_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_5_d1 = 48'd0;

assign partial_outputfm_V_6_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_6_d1 = 48'd0;

assign partial_outputfm_V_7_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_7_d1 = 48'd0;

assign partial_outputfm_V_8_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_8_d1 = 48'd0;

assign partial_outputfm_V_9_address1 = tmp_32_cast_fu_635_p1;

assign partial_outputfm_V_9_d1 = 48'd0;

assign r_1_fu_595_p2 = (ap_phi_mux_r_phi_fu_565_p4 + 6'd1);

assign tmp_32_cast_fu_635_p1 = $signed(grp_fu_666_p3);

assign tmp_mid2_v_fu_615_p3 = ((exitcond_fu_601_p2[0:0] === 1'b1) ? r_1_fu_595_p2 : ap_phi_mux_r_phi_fu_565_p4);

endmodule //set_out_buffer_to_0
