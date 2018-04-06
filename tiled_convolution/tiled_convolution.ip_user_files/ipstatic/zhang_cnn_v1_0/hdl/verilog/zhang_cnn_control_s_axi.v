// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module zhang_cnn_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    // user signals
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    output wire [31:0]                   image_r,
    output wire [31:0]                   weights,
    output wire [31:0]                   out_r,
    output wire [31:0]                   bias,
    output wire [15:0]                   curr_layer_in_n_layer,
    output wire [15:0]                   curr_layer_in_in_w,
    output wire [15:0]                   curr_layer_in_in_h,
    output wire [15:0]                   curr_layer_in_out_w,
    output wire [15:0]                   curr_layer_in_out_h,
    output wire [15:0]                   curr_layer_in_in_ch,
    output wire [15:0]                   curr_layer_in_out_ch,
    output wire [15:0]                   curr_layer_in_ker_w,
    output wire [15:0]                   curr_layer_in_ker_h,
    output wire [15:0]                   curr_layer_in_ker_ch,
    output wire [15:0]                   curr_layer_in_str_w,
    output wire [15:0]                   curr_layer_in_str_h,
    output wire [15:0]                   curr_layer_in_pad_w,
    output wire [15:0]                   curr_layer_in_pad_h,
    output wire [15:0]                   curr_layer_in_relu,
    output wire [15:0]                   curr_layer_in_has_bias,
    output wire [3:0]                    curr_layer_in_act_type
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of image_r
//        bit 31~0 - image_r[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of weights
//        bit 31~0 - weights[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bias
//        bit 31~0 - bias[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of curr_layer_in_n_layer
//        bit 15~0 - curr_layer_in_n_layer[15:0] (Read/Write)
//        others   - reserved
// 0x34 : reserved
// 0x38 : Data signal of curr_layer_in_in_w
//        bit 15~0 - curr_layer_in_in_w[15:0] (Read/Write)
//        others   - reserved
// 0x3c : reserved
// 0x40 : Data signal of curr_layer_in_in_h
//        bit 15~0 - curr_layer_in_in_h[15:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// 0x48 : Data signal of curr_layer_in_out_w
//        bit 15~0 - curr_layer_in_out_w[15:0] (Read/Write)
//        others   - reserved
// 0x4c : reserved
// 0x50 : Data signal of curr_layer_in_out_h
//        bit 15~0 - curr_layer_in_out_h[15:0] (Read/Write)
//        others   - reserved
// 0x54 : reserved
// 0x58 : Data signal of curr_layer_in_in_ch
//        bit 15~0 - curr_layer_in_in_ch[15:0] (Read/Write)
//        others   - reserved
// 0x5c : reserved
// 0x60 : Data signal of curr_layer_in_out_ch
//        bit 15~0 - curr_layer_in_out_ch[15:0] (Read/Write)
//        others   - reserved
// 0x64 : reserved
// 0x68 : Data signal of curr_layer_in_ker_w
//        bit 15~0 - curr_layer_in_ker_w[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// 0x70 : Data signal of curr_layer_in_ker_h
//        bit 15~0 - curr_layer_in_ker_h[15:0] (Read/Write)
//        others   - reserved
// 0x74 : reserved
// 0x78 : Data signal of curr_layer_in_ker_ch
//        bit 15~0 - curr_layer_in_ker_ch[15:0] (Read/Write)
//        others   - reserved
// 0x7c : reserved
// 0x80 : Data signal of curr_layer_in_str_w
//        bit 15~0 - curr_layer_in_str_w[15:0] (Read/Write)
//        others   - reserved
// 0x84 : reserved
// 0x88 : Data signal of curr_layer_in_str_h
//        bit 15~0 - curr_layer_in_str_h[15:0] (Read/Write)
//        others   - reserved
// 0x8c : reserved
// 0x90 : Data signal of curr_layer_in_pad_w
//        bit 15~0 - curr_layer_in_pad_w[15:0] (Read/Write)
//        others   - reserved
// 0x94 : reserved
// 0x98 : Data signal of curr_layer_in_pad_h
//        bit 15~0 - curr_layer_in_pad_h[15:0] (Read/Write)
//        others   - reserved
// 0x9c : reserved
// 0xa0 : Data signal of curr_layer_in_relu
//        bit 15~0 - curr_layer_in_relu[15:0] (Read/Write)
//        others   - reserved
// 0xa4 : reserved
// 0xa8 : Data signal of curr_layer_in_has_bias
//        bit 15~0 - curr_layer_in_has_bias[15:0] (Read/Write)
//        others   - reserved
// 0xac : reserved
// 0xb0 : Data signal of curr_layer_in_act_type
//        bit 3~0 - curr_layer_in_act_type[3:0] (Read/Write)
//        others  - reserved
// 0xb4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                       = 8'h00,
    ADDR_GIE                           = 8'h04,
    ADDR_IER                           = 8'h08,
    ADDR_ISR                           = 8'h0c,
    ADDR_IMAGE_R_DATA_0                = 8'h10,
    ADDR_IMAGE_R_CTRL                  = 8'h14,
    ADDR_WEIGHTS_DATA_0                = 8'h18,
    ADDR_WEIGHTS_CTRL                  = 8'h1c,
    ADDR_OUT_R_DATA_0                  = 8'h20,
    ADDR_OUT_R_CTRL                    = 8'h24,
    ADDR_BIAS_DATA_0                   = 8'h28,
    ADDR_BIAS_CTRL                     = 8'h2c,
    ADDR_CURR_LAYER_IN_N_LAYER_DATA_0  = 8'h30,
    ADDR_CURR_LAYER_IN_N_LAYER_CTRL    = 8'h34,
    ADDR_CURR_LAYER_IN_IN_W_DATA_0     = 8'h38,
    ADDR_CURR_LAYER_IN_IN_W_CTRL       = 8'h3c,
    ADDR_CURR_LAYER_IN_IN_H_DATA_0     = 8'h40,
    ADDR_CURR_LAYER_IN_IN_H_CTRL       = 8'h44,
    ADDR_CURR_LAYER_IN_OUT_W_DATA_0    = 8'h48,
    ADDR_CURR_LAYER_IN_OUT_W_CTRL      = 8'h4c,
    ADDR_CURR_LAYER_IN_OUT_H_DATA_0    = 8'h50,
    ADDR_CURR_LAYER_IN_OUT_H_CTRL      = 8'h54,
    ADDR_CURR_LAYER_IN_IN_CH_DATA_0    = 8'h58,
    ADDR_CURR_LAYER_IN_IN_CH_CTRL      = 8'h5c,
    ADDR_CURR_LAYER_IN_OUT_CH_DATA_0   = 8'h60,
    ADDR_CURR_LAYER_IN_OUT_CH_CTRL     = 8'h64,
    ADDR_CURR_LAYER_IN_KER_W_DATA_0    = 8'h68,
    ADDR_CURR_LAYER_IN_KER_W_CTRL      = 8'h6c,
    ADDR_CURR_LAYER_IN_KER_H_DATA_0    = 8'h70,
    ADDR_CURR_LAYER_IN_KER_H_CTRL      = 8'h74,
    ADDR_CURR_LAYER_IN_KER_CH_DATA_0   = 8'h78,
    ADDR_CURR_LAYER_IN_KER_CH_CTRL     = 8'h7c,
    ADDR_CURR_LAYER_IN_STR_W_DATA_0    = 8'h80,
    ADDR_CURR_LAYER_IN_STR_W_CTRL      = 8'h84,
    ADDR_CURR_LAYER_IN_STR_H_DATA_0    = 8'h88,
    ADDR_CURR_LAYER_IN_STR_H_CTRL      = 8'h8c,
    ADDR_CURR_LAYER_IN_PAD_W_DATA_0    = 8'h90,
    ADDR_CURR_LAYER_IN_PAD_W_CTRL      = 8'h94,
    ADDR_CURR_LAYER_IN_PAD_H_DATA_0    = 8'h98,
    ADDR_CURR_LAYER_IN_PAD_H_CTRL      = 8'h9c,
    ADDR_CURR_LAYER_IN_RELU_DATA_0     = 8'ha0,
    ADDR_CURR_LAYER_IN_RELU_CTRL       = 8'ha4,
    ADDR_CURR_LAYER_IN_HAS_BIAS_DATA_0 = 8'ha8,
    ADDR_CURR_LAYER_IN_HAS_BIAS_CTRL   = 8'hac,
    ADDR_CURR_LAYER_IN_ACT_TYPE_DATA_0 = 8'hb0,
    ADDR_CURR_LAYER_IN_ACT_TYPE_CTRL   = 8'hb4,
    WRIDLE                             = 2'd0,
    WRDATA                             = 2'd1,
    WRRESP                             = 2'd2,
    RDIDLE                             = 2'd0,
    RDDATA                             = 2'd1,
    ADDR_BITS         = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    wire                          int_ap_idle;
    wire                          int_ap_ready;
    reg                           int_ap_done;
    reg                           int_ap_start;
    reg                           int_auto_restart;
    reg                           int_gie;
    reg  [1:0]                    int_ier;
    reg  [1:0]                    int_isr;
    reg  [31:0]                   int_image_r;
    reg  [31:0]                   int_weights;
    reg  [31:0]                   int_out_r;
    reg  [31:0]                   int_bias;
    reg  [15:0]                   int_curr_layer_in_n_layer;
    reg  [15:0]                   int_curr_layer_in_in_w;
    reg  [15:0]                   int_curr_layer_in_in_h;
    reg  [15:0]                   int_curr_layer_in_out_w;
    reg  [15:0]                   int_curr_layer_in_out_h;
    reg  [15:0]                   int_curr_layer_in_in_ch;
    reg  [15:0]                   int_curr_layer_in_out_ch;
    reg  [15:0]                   int_curr_layer_in_ker_w;
    reg  [15:0]                   int_curr_layer_in_ker_h;
    reg  [15:0]                   int_curr_layer_in_ker_ch;
    reg  [15:0]                   int_curr_layer_in_str_w;
    reg  [15:0]                   int_curr_layer_in_str_h;
    reg  [15:0]                   int_curr_layer_in_pad_w;
    reg  [15:0]                   int_curr_layer_in_pad_h;
    reg  [15:0]                   int_curr_layer_in_relu;
    reg  [15:0]                   int_curr_layer_in_has_bias;
    reg  [3:0]                    int_curr_layer_in_act_type;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRIDLE;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDIDLE;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_IMAGE_R_DATA_0: begin
                    rdata <= int_image_r[31:0];
                end
                ADDR_WEIGHTS_DATA_0: begin
                    rdata <= int_weights[31:0];
                end
                ADDR_OUT_R_DATA_0: begin
                    rdata <= int_out_r[31:0];
                end
                ADDR_BIAS_DATA_0: begin
                    rdata <= int_bias[31:0];
                end
                ADDR_CURR_LAYER_IN_N_LAYER_DATA_0: begin
                    rdata <= int_curr_layer_in_n_layer[15:0];
                end
                ADDR_CURR_LAYER_IN_IN_W_DATA_0: begin
                    rdata <= int_curr_layer_in_in_w[15:0];
                end
                ADDR_CURR_LAYER_IN_IN_H_DATA_0: begin
                    rdata <= int_curr_layer_in_in_h[15:0];
                end
                ADDR_CURR_LAYER_IN_OUT_W_DATA_0: begin
                    rdata <= int_curr_layer_in_out_w[15:0];
                end
                ADDR_CURR_LAYER_IN_OUT_H_DATA_0: begin
                    rdata <= int_curr_layer_in_out_h[15:0];
                end
                ADDR_CURR_LAYER_IN_IN_CH_DATA_0: begin
                    rdata <= int_curr_layer_in_in_ch[15:0];
                end
                ADDR_CURR_LAYER_IN_OUT_CH_DATA_0: begin
                    rdata <= int_curr_layer_in_out_ch[15:0];
                end
                ADDR_CURR_LAYER_IN_KER_W_DATA_0: begin
                    rdata <= int_curr_layer_in_ker_w[15:0];
                end
                ADDR_CURR_LAYER_IN_KER_H_DATA_0: begin
                    rdata <= int_curr_layer_in_ker_h[15:0];
                end
                ADDR_CURR_LAYER_IN_KER_CH_DATA_0: begin
                    rdata <= int_curr_layer_in_ker_ch[15:0];
                end
                ADDR_CURR_LAYER_IN_STR_W_DATA_0: begin
                    rdata <= int_curr_layer_in_str_w[15:0];
                end
                ADDR_CURR_LAYER_IN_STR_H_DATA_0: begin
                    rdata <= int_curr_layer_in_str_h[15:0];
                end
                ADDR_CURR_LAYER_IN_PAD_W_DATA_0: begin
                    rdata <= int_curr_layer_in_pad_w[15:0];
                end
                ADDR_CURR_LAYER_IN_PAD_H_DATA_0: begin
                    rdata <= int_curr_layer_in_pad_h[15:0];
                end
                ADDR_CURR_LAYER_IN_RELU_DATA_0: begin
                    rdata <= int_curr_layer_in_relu[15:0];
                end
                ADDR_CURR_LAYER_IN_HAS_BIAS_DATA_0: begin
                    rdata <= int_curr_layer_in_has_bias[15:0];
                end
                ADDR_CURR_LAYER_IN_ACT_TYPE_DATA_0: begin
                    rdata <= int_curr_layer_in_act_type[3:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt              = int_gie & (|int_isr);
assign ap_start               = int_ap_start;
assign int_ap_idle            = ap_idle;
assign int_ap_ready           = ap_ready;
assign image_r                = int_image_r;
assign weights                = int_weights;
assign out_r                  = int_out_r;
assign bias                   = int_bias;
assign curr_layer_in_n_layer  = int_curr_layer_in_n_layer;
assign curr_layer_in_in_w     = int_curr_layer_in_in_w;
assign curr_layer_in_in_h     = int_curr_layer_in_in_h;
assign curr_layer_in_out_w    = int_curr_layer_in_out_w;
assign curr_layer_in_out_h    = int_curr_layer_in_out_h;
assign curr_layer_in_in_ch    = int_curr_layer_in_in_ch;
assign curr_layer_in_out_ch   = int_curr_layer_in_out_ch;
assign curr_layer_in_ker_w    = int_curr_layer_in_ker_w;
assign curr_layer_in_ker_h    = int_curr_layer_in_ker_h;
assign curr_layer_in_ker_ch   = int_curr_layer_in_ker_ch;
assign curr_layer_in_str_w    = int_curr_layer_in_str_w;
assign curr_layer_in_str_h    = int_curr_layer_in_str_h;
assign curr_layer_in_pad_w    = int_curr_layer_in_pad_w;
assign curr_layer_in_pad_h    = int_curr_layer_in_pad_h;
assign curr_layer_in_relu     = int_curr_layer_in_relu;
assign curr_layer_in_has_bias = int_curr_layer_in_has_bias;
assign curr_layer_in_act_type = int_curr_layer_in_act_type;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (int_ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_image_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_image_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IMAGE_R_DATA_0)
            int_image_r[31:0] <= (WDATA[31:0] & wmask) | (int_image_r[31:0] & ~wmask);
    end
end

// int_weights[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_weights[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WEIGHTS_DATA_0)
            int_weights[31:0] <= (WDATA[31:0] & wmask) | (int_weights[31:0] & ~wmask);
    end
end

// int_out_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_out_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUT_R_DATA_0)
            int_out_r[31:0] <= (WDATA[31:0] & wmask) | (int_out_r[31:0] & ~wmask);
    end
end

// int_bias[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bias[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BIAS_DATA_0)
            int_bias[31:0] <= (WDATA[31:0] & wmask) | (int_bias[31:0] & ~wmask);
    end
end

// int_curr_layer_in_n_layer[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_n_layer[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_N_LAYER_DATA_0)
            int_curr_layer_in_n_layer[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_n_layer[15:0] & ~wmask);
    end
end

// int_curr_layer_in_in_w[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_in_w[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_IN_W_DATA_0)
            int_curr_layer_in_in_w[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_in_w[15:0] & ~wmask);
    end
end

// int_curr_layer_in_in_h[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_in_h[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_IN_H_DATA_0)
            int_curr_layer_in_in_h[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_in_h[15:0] & ~wmask);
    end
end

// int_curr_layer_in_out_w[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_out_w[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_OUT_W_DATA_0)
            int_curr_layer_in_out_w[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_out_w[15:0] & ~wmask);
    end
end

// int_curr_layer_in_out_h[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_out_h[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_OUT_H_DATA_0)
            int_curr_layer_in_out_h[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_out_h[15:0] & ~wmask);
    end
end

// int_curr_layer_in_in_ch[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_in_ch[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_IN_CH_DATA_0)
            int_curr_layer_in_in_ch[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_in_ch[15:0] & ~wmask);
    end
end

// int_curr_layer_in_out_ch[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_out_ch[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_OUT_CH_DATA_0)
            int_curr_layer_in_out_ch[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_out_ch[15:0] & ~wmask);
    end
end

// int_curr_layer_in_ker_w[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_ker_w[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_KER_W_DATA_0)
            int_curr_layer_in_ker_w[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_ker_w[15:0] & ~wmask);
    end
end

// int_curr_layer_in_ker_h[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_ker_h[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_KER_H_DATA_0)
            int_curr_layer_in_ker_h[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_ker_h[15:0] & ~wmask);
    end
end

// int_curr_layer_in_ker_ch[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_ker_ch[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_KER_CH_DATA_0)
            int_curr_layer_in_ker_ch[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_ker_ch[15:0] & ~wmask);
    end
end

// int_curr_layer_in_str_w[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_str_w[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_STR_W_DATA_0)
            int_curr_layer_in_str_w[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_str_w[15:0] & ~wmask);
    end
end

// int_curr_layer_in_str_h[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_str_h[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_STR_H_DATA_0)
            int_curr_layer_in_str_h[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_str_h[15:0] & ~wmask);
    end
end

// int_curr_layer_in_pad_w[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_pad_w[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_PAD_W_DATA_0)
            int_curr_layer_in_pad_w[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_pad_w[15:0] & ~wmask);
    end
end

// int_curr_layer_in_pad_h[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_pad_h[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_PAD_H_DATA_0)
            int_curr_layer_in_pad_h[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_pad_h[15:0] & ~wmask);
    end
end

// int_curr_layer_in_relu[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_relu[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_RELU_DATA_0)
            int_curr_layer_in_relu[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_relu[15:0] & ~wmask);
    end
end

// int_curr_layer_in_has_bias[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_has_bias[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_HAS_BIAS_DATA_0)
            int_curr_layer_in_has_bias[15:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_has_bias[15:0] & ~wmask);
    end
end

// int_curr_layer_in_act_type[3:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_curr_layer_in_act_type[3:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CURR_LAYER_IN_ACT_TYPE_DATA_0)
            int_curr_layer_in_act_type[3:0] <= (WDATA[31:0] & wmask) | (int_curr_layer_in_act_type[3:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
