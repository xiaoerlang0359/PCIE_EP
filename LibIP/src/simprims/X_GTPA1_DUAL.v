// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/stan/X_GTPA1_DUAL.v,v 1.17 2010/06/07 18:35:43 robh Exp $
///////////////////////////////////////////////////////
//  Copyright (c) 2009 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version     : 11.1i 
//  \  \           Description : Xilinx Timing Simulation Library Component
//  /  /                         Multi-Gigabit Tranceiver Port Secure IP
// /__/   /\       Filename    : X_GTPA1_DUAL.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision:      Date:  Comment
//       1.0:  08/15/08:  Initial version.
//       1.1   01/22/09:  updates for VCS, NCSIM
//       1.2:  01/29/09:  CR503397 remove NCELAB work arounds
//       1.3:  03/12/09:  CR511750 - upper case attribute defaults
//       1.4:  04/09/09:  CR516873 - yml, rtl update
//       1.5:  09/02/09:  CR532550 - yml update
//       1.6:  10/01/09:  CR533370 - yml update
//       1.7:  06/07/10:  CR563488 - yml update

// End Revision
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module X_GTPA1_DUAL (
  DRDY,
  DRPDO,
  GTPCLKFBEAST,
  GTPCLKFBWEST,
  GTPCLKOUT0,
  GTPCLKOUT1,
  PHYSTATUS0,
  PHYSTATUS1,
  PLLLKDET0,
  PLLLKDET1,
  RCALOUTEAST,
  RCALOUTWEST,
  REFCLKOUT0,
  REFCLKOUT1,
  REFCLKPLL0,
  REFCLKPLL1,
  RESETDONE0,
  RESETDONE1,
  RXBUFSTATUS0,
  RXBUFSTATUS1,
  RXBYTEISALIGNED0,
  RXBYTEISALIGNED1,
  RXBYTEREALIGN0,
  RXBYTEREALIGN1,
  RXCHANBONDSEQ0,
  RXCHANBONDSEQ1,
  RXCHANISALIGNED0,
  RXCHANISALIGNED1,
  RXCHANREALIGN0,
  RXCHANREALIGN1,
  RXCHARISCOMMA0,
  RXCHARISCOMMA1,
  RXCHARISK0,
  RXCHARISK1,
  RXCHBONDO,
  RXCLKCORCNT0,
  RXCLKCORCNT1,
  RXCOMMADET0,
  RXCOMMADET1,
  RXDATA0,
  RXDATA1,
  RXDISPERR0,
  RXDISPERR1,
  RXELECIDLE0,
  RXELECIDLE1,
  RXLOSSOFSYNC0,
  RXLOSSOFSYNC1,
  RXNOTINTABLE0,
  RXNOTINTABLE1,
  RXPRBSERR0,
  RXPRBSERR1,
  RXRECCLK0,
  RXRECCLK1,
  RXRUNDISP0,
  RXRUNDISP1,
  RXSTATUS0,
  RXSTATUS1,
  RXVALID0,
  RXVALID1,
  TSTOUT0,
  TSTOUT1,
  TXBUFSTATUS0,
  TXBUFSTATUS1,
  TXKERR0,
  TXKERR1,
  TXN0,
  TXN1,
  TXOUTCLK0,
  TXOUTCLK1,
  TXP0,
  TXP1,
  TXRUNDISP0,
  TXRUNDISP1,
  CLK00,
  CLK01,
  CLK10,
  CLK11,
  CLKINEAST0,
  CLKINEAST1,
  CLKINWEST0,
  CLKINWEST1,
  DADDR,
  DCLK,
  DEN,
  DI,
  DWE,
  GATERXELECIDLE0,
  GATERXELECIDLE1,
  GCLK00,
  GCLK01,
  GCLK10,
  GCLK11,
  GTPCLKFBSEL0EAST,
  GTPCLKFBSEL0WEST,
  GTPCLKFBSEL1EAST,
  GTPCLKFBSEL1WEST,
  GTPRESET0,
  GTPRESET1,
  GTPTEST0,
  GTPTEST1,
  IGNORESIGDET0,
  IGNORESIGDET1,
  INTDATAWIDTH0,
  INTDATAWIDTH1,
  LOOPBACK0,
  LOOPBACK1,
  PLLCLK00,
  PLLCLK01,
  PLLCLK10,
  PLLCLK11,
  PLLLKDETEN0,
  PLLLKDETEN1,
  PLLPOWERDOWN0,
  PLLPOWERDOWN1,
  PRBSCNTRESET0,
  PRBSCNTRESET1,
  RCALINEAST,
  RCALINWEST,
  REFCLKPWRDNB0,
  REFCLKPWRDNB1,
  REFSELDYPLL0,
  REFSELDYPLL1,
  RXBUFRESET0,
  RXBUFRESET1,
  RXCDRRESET0,
  RXCDRRESET1,
  RXCHBONDI,
  RXCHBONDMASTER0,
  RXCHBONDMASTER1,
  RXCHBONDSLAVE0,
  RXCHBONDSLAVE1,
  RXCOMMADETUSE0,
  RXCOMMADETUSE1,
  RXDATAWIDTH0,
  RXDATAWIDTH1,
  RXDEC8B10BUSE0,
  RXDEC8B10BUSE1,
  RXENCHANSYNC0,
  RXENCHANSYNC1,
  RXENMCOMMAALIGN0,
  RXENMCOMMAALIGN1,
  RXENPCOMMAALIGN0,
  RXENPCOMMAALIGN1,
  RXENPMAPHASEALIGN0,
  RXENPMAPHASEALIGN1,
  RXENPRBSTST0,
  RXENPRBSTST1,
  RXEQMIX0,
  RXEQMIX1,
  RXN0,
  RXN1,
  RXP0,
  RXP1,
  RXPMASETPHASE0,
  RXPMASETPHASE1,
  RXPOLARITY0,
  RXPOLARITY1,
  RXPOWERDOWN0,
  RXPOWERDOWN1,
  RXRESET0,
  RXRESET1,
  RXSLIDE0,
  RXSLIDE1,
  RXUSRCLK0,
  RXUSRCLK1,
  RXUSRCLK20,
  RXUSRCLK21,
  TSTCLK0,
  TSTCLK1,
  TSTIN0,
  TSTIN1,
  TXBUFDIFFCTRL0,
  TXBUFDIFFCTRL1,
  TXBYPASS8B10B0,
  TXBYPASS8B10B1,
  TXCHARDISPMODE0,
  TXCHARDISPMODE1,
  TXCHARDISPVAL0,
  TXCHARDISPVAL1,
  TXCHARISK0,
  TXCHARISK1,
  TXCOMSTART0,
  TXCOMSTART1,
  TXCOMTYPE0,
  TXCOMTYPE1,
  TXDATA0,
  TXDATA1,
  TXDATAWIDTH0,
  TXDATAWIDTH1,
  TXDETECTRX0,
  TXDETECTRX1,
  TXDIFFCTRL0,
  TXDIFFCTRL1,
  TXELECIDLE0,
  TXELECIDLE1,
  TXENC8B10BUSE0,
  TXENC8B10BUSE1,
  TXENPMAPHASEALIGN0,
  TXENPMAPHASEALIGN1,
  TXENPRBSTST0,
  TXENPRBSTST1,
  TXINHIBIT0,
  TXINHIBIT1,
  TXPDOWNASYNCH0,
  TXPDOWNASYNCH1,
  TXPMASETPHASE0,
  TXPMASETPHASE1,
  TXPOLARITY0,
  TXPOLARITY1,
  TXPOWERDOWN0,
  TXPOWERDOWN1,
  TXPRBSFORCEERR0,
  TXPRBSFORCEERR1,
  TXPREEMPHASIS0,
  TXPREEMPHASIS1,
  TXRESET0,
  TXRESET1,
  TXUSRCLK0,
  TXUSRCLK1,
  TXUSRCLK20,
  TXUSRCLK21,
  USRCODEERR0,
  USRCODEERR1
);

  parameter AC_CAP_DIS_0 = "TRUE";
  parameter AC_CAP_DIS_1 = "TRUE";
  parameter integer ALIGN_COMMA_WORD_0 = 1;
  parameter integer ALIGN_COMMA_WORD_1 = 1;
  parameter integer CB2_INH_CC_PERIOD_0 = 8;
  parameter integer CB2_INH_CC_PERIOD_1 = 8;
  parameter [4:0] CDR_PH_ADJ_TIME_0 = 5'b01010;
  parameter [4:0] CDR_PH_ADJ_TIME_1 = 5'b01010;
  parameter integer CHAN_BOND_1_MAX_SKEW_0 = 7;
  parameter integer CHAN_BOND_1_MAX_SKEW_1 = 7;
  parameter integer CHAN_BOND_2_MAX_SKEW_0 = 1;
  parameter integer CHAN_BOND_2_MAX_SKEW_1 = 1;
  parameter CHAN_BOND_KEEP_ALIGN_0 = "FALSE";
  parameter CHAN_BOND_KEEP_ALIGN_1 = "FALSE";
  parameter [9:0] CHAN_BOND_SEQ_1_1_0 = 10'b0101111100;
  parameter [9:0] CHAN_BOND_SEQ_1_1_1 = 10'b0101111100;
  parameter [9:0] CHAN_BOND_SEQ_1_2_0 = 10'b0001001010;
  parameter [9:0] CHAN_BOND_SEQ_1_2_1 = 10'b0001001010;
  parameter [9:0] CHAN_BOND_SEQ_1_3_0 = 10'b0001001010;
  parameter [9:0] CHAN_BOND_SEQ_1_3_1 = 10'b0001001010;
  parameter [9:0] CHAN_BOND_SEQ_1_4_0 = 10'b0110111100;
  parameter [9:0] CHAN_BOND_SEQ_1_4_1 = 10'b0110111100;
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE_0 = 4'b1111;
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE_1 = 4'b1111;
  parameter [9:0] CHAN_BOND_SEQ_2_1_0 = 10'b0110111100;
  parameter [9:0] CHAN_BOND_SEQ_2_1_1 = 10'b0110111100;
  parameter [9:0] CHAN_BOND_SEQ_2_2_0 = 10'b0100111100;
  parameter [9:0] CHAN_BOND_SEQ_2_2_1 = 10'b0100111100;
  parameter [9:0] CHAN_BOND_SEQ_2_3_0 = 10'b0100111100;
  parameter [9:0] CHAN_BOND_SEQ_2_3_1 = 10'b0100111100;
  parameter [9:0] CHAN_BOND_SEQ_2_4_0 = 10'b0100111100;
  parameter [9:0] CHAN_BOND_SEQ_2_4_1 = 10'b0100111100;
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE_0 = 4'b1111;
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE_1 = 4'b1111;
  parameter CHAN_BOND_SEQ_2_USE_0 = "FALSE";
  parameter CHAN_BOND_SEQ_2_USE_1 = "FALSE";
  parameter integer CHAN_BOND_SEQ_LEN_0 = 1;
  parameter integer CHAN_BOND_SEQ_LEN_1 = 1;
  parameter integer CLK25_DIVIDER_0 = 4;
  parameter integer CLK25_DIVIDER_1 = 4;
  parameter CLKINDC_B_0 = "TRUE";
  parameter CLKINDC_B_1 = "TRUE";
  parameter CLKRCV_TRST_0 = "TRUE";
  parameter CLKRCV_TRST_1 = "TRUE";
  parameter CLK_CORRECT_USE_0 = "TRUE";
  parameter CLK_CORRECT_USE_1 = "TRUE";
  parameter integer CLK_COR_ADJ_LEN_0 = 1;
  parameter integer CLK_COR_ADJ_LEN_1 = 1;
  parameter integer CLK_COR_DET_LEN_0 = 1;
  parameter integer CLK_COR_DET_LEN_1 = 1;
  parameter CLK_COR_INSERT_IDLE_FLAG_0 = "FALSE";
  parameter CLK_COR_INSERT_IDLE_FLAG_1 = "FALSE";
  parameter CLK_COR_KEEP_IDLE_0 = "FALSE";
  parameter CLK_COR_KEEP_IDLE_1 = "FALSE";
  parameter integer CLK_COR_MAX_LAT_0 = 20;
  parameter integer CLK_COR_MAX_LAT_1 = 20;
  parameter integer CLK_COR_MIN_LAT_0 = 18;
  parameter integer CLK_COR_MIN_LAT_1 = 18;
  parameter CLK_COR_PRECEDENCE_0 = "TRUE";
  parameter CLK_COR_PRECEDENCE_1 = "TRUE";
  parameter integer CLK_COR_REPEAT_WAIT_0 = 0;
  parameter integer CLK_COR_REPEAT_WAIT_1 = 0;
  parameter [9:0] CLK_COR_SEQ_1_1_0 = 10'b0100011100;
  parameter [9:0] CLK_COR_SEQ_1_1_1 = 10'b0100011100;
  parameter [9:0] CLK_COR_SEQ_1_2_0 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_2_1 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_3_0 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_3_1 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_4_0 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_4_1 = 10'b0000000000;
  parameter [3:0] CLK_COR_SEQ_1_ENABLE_0 = 4'b1111;
  parameter [3:0] CLK_COR_SEQ_1_ENABLE_1 = 4'b1111;
  parameter [9:0] CLK_COR_SEQ_2_1_0 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_2_1_1 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_2_2_0 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_2_2_1 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_2_3_0 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_2_3_1 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_2_4_0 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_2_4_1 = 10'b0000000000;
  parameter [3:0] CLK_COR_SEQ_2_ENABLE_0 = 4'b1111;
  parameter [3:0] CLK_COR_SEQ_2_ENABLE_1 = 4'b1111;
  parameter CLK_COR_SEQ_2_USE_0 = "FALSE";
  parameter CLK_COR_SEQ_2_USE_1 = "FALSE";
  parameter CLK_OUT_GTP_SEL_0 = "REFCLKPLL0";
  parameter CLK_OUT_GTP_SEL_1 = "REFCLKPLL1";
  parameter [1:0] CM_TRIM_0 = 2'b00;
  parameter [1:0] CM_TRIM_1 = 2'b00;
  parameter [9:0] COMMA_10B_ENABLE_0 = 10'b1111111111;
  parameter [9:0] COMMA_10B_ENABLE_1 = 10'b1111111111;
  parameter [3:0] COM_BURST_VAL_0 = 4'b1111;
  parameter [3:0] COM_BURST_VAL_1 = 4'b1111;
  parameter DEC_MCOMMA_DETECT_0 = "TRUE";
  parameter DEC_MCOMMA_DETECT_1 = "TRUE";
  parameter DEC_PCOMMA_DETECT_0 = "TRUE";
  parameter DEC_PCOMMA_DETECT_1 = "TRUE";
  parameter DEC_VALID_COMMA_ONLY_0 = "TRUE";
  parameter DEC_VALID_COMMA_ONLY_1 = "TRUE";
  parameter GTP_CFG_PWRUP_0 = "TRUE";
  parameter GTP_CFG_PWRUP_1 = "TRUE";
  parameter [9:0] MCOMMA_10B_VALUE_0 = 10'b1010000011;
  parameter [9:0] MCOMMA_10B_VALUE_1 = 10'b1010000011;
  parameter MCOMMA_DETECT_0 = "TRUE";
  parameter MCOMMA_DETECT_1 = "TRUE";
  parameter [2:0] OOBDETECT_THRESHOLD_0 = 3'b110;
  parameter [2:0] OOBDETECT_THRESHOLD_1 = 3'b110;
  parameter integer OOB_CLK_DIVIDER_0 = 4;
  parameter integer OOB_CLK_DIVIDER_1 = 4;
  parameter PCI_EXPRESS_MODE_0 = "FALSE";
  parameter PCI_EXPRESS_MODE_1 = "FALSE";
  parameter [9:0] PCOMMA_10B_VALUE_0 = 10'b0101111100;
  parameter [9:0] PCOMMA_10B_VALUE_1 = 10'b0101111100;
  parameter PCOMMA_DETECT_0 = "TRUE";
  parameter PCOMMA_DETECT_1 = "TRUE";
  parameter [2:0] PLLLKDET_CFG_0 = 3'b101;
  parameter [2:0] PLLLKDET_CFG_1 = 3'b101;
  parameter [23:0] PLL_COM_CFG_0 = 24'h21680A;
  parameter [23:0] PLL_COM_CFG_1 = 24'h21680A;
  parameter [7:0] PLL_CP_CFG_0 = 8'h00;
  parameter [7:0] PLL_CP_CFG_1 = 8'h00;
  parameter integer PLL_DIVSEL_FB_0 = 5;
  parameter integer PLL_DIVSEL_FB_1 = 5;
  parameter integer PLL_DIVSEL_REF_0 = 2;
  parameter integer PLL_DIVSEL_REF_1 = 2;
  parameter integer PLL_RXDIVSEL_OUT_0 = 1;
  parameter integer PLL_RXDIVSEL_OUT_1 = 1;
  parameter PLL_SATA_0 = "FALSE";
  parameter PLL_SATA_1 = "FALSE";
  parameter PLL_SOURCE_0 = "PLL0";
  parameter PLL_SOURCE_1 = "PLL0";
  parameter integer PLL_TXDIVSEL_OUT_0 = 1;
  parameter integer PLL_TXDIVSEL_OUT_1 = 1;
  parameter [26:0] PMA_CDR_SCAN_0 = 27'h6404040;
  parameter [26:0] PMA_CDR_SCAN_1 = 27'h6404040;
  parameter [35:0] PMA_COM_CFG_EAST = 36'h000008000;
  parameter [35:0] PMA_COM_CFG_WEST = 36'h00000A000;
  parameter [6:0] PMA_RXSYNC_CFG_0 = 7'h00;
  parameter [6:0] PMA_RXSYNC_CFG_1 = 7'h00;
  parameter [24:0] PMA_RX_CFG_0 = 25'h05CE048;
  parameter [24:0] PMA_RX_CFG_1 = 25'h05CE048;
  parameter [19:0] PMA_TX_CFG_0 = 20'h00082;
  parameter [19:0] PMA_TX_CFG_1 = 20'h00082;
  parameter RCV_TERM_GND_0 = "FALSE";
  parameter RCV_TERM_GND_1 = "FALSE";
  parameter RCV_TERM_VTTRX_0 = "TRUE";
  parameter RCV_TERM_VTTRX_1 = "TRUE";
  parameter [7:0] RXEQ_CFG_0 = 8'b01111011;
  parameter [7:0] RXEQ_CFG_1 = 8'b01111011;
  parameter [0:0] RXPRBSERR_LOOPBACK_0 = 1'b0;
  parameter [0:0] RXPRBSERR_LOOPBACK_1 = 1'b0;
  parameter RX_BUFFER_USE_0 = "TRUE";
  parameter RX_BUFFER_USE_1 = "TRUE";
  parameter RX_DECODE_SEQ_MATCH_0 = "TRUE";
  parameter RX_DECODE_SEQ_MATCH_1 = "TRUE";
  parameter RX_EN_IDLE_HOLD_CDR_0 = "FALSE";
  parameter RX_EN_IDLE_HOLD_CDR_1 = "FALSE";
  parameter RX_EN_IDLE_RESET_BUF_0 = "TRUE";
  parameter RX_EN_IDLE_RESET_BUF_1 = "TRUE";
  parameter RX_EN_IDLE_RESET_FR_0 = "TRUE";
  parameter RX_EN_IDLE_RESET_FR_1 = "TRUE";
  parameter RX_EN_IDLE_RESET_PH_0 = "TRUE";
  parameter RX_EN_IDLE_RESET_PH_1 = "TRUE";
  parameter RX_EN_MODE_RESET_BUF_0 = "TRUE";
  parameter RX_EN_MODE_RESET_BUF_1 = "TRUE";
  parameter [3:0] RX_IDLE_HI_CNT_0 = 4'b1000;
  parameter [3:0] RX_IDLE_HI_CNT_1 = 4'b1000;
  parameter [3:0] RX_IDLE_LO_CNT_0 = 4'b0000;
  parameter [3:0] RX_IDLE_LO_CNT_1 = 4'b0000;
  parameter RX_LOSS_OF_SYNC_FSM_0 = "FALSE";
  parameter RX_LOSS_OF_SYNC_FSM_1 = "FALSE";
  parameter integer RX_LOS_INVALID_INCR_0 = 1;
  parameter integer RX_LOS_INVALID_INCR_1 = 1;
  parameter integer RX_LOS_THRESHOLD_0 = 4;
  parameter integer RX_LOS_THRESHOLD_1 = 4;
  parameter RX_SLIDE_MODE_0 = "PCS";
  parameter RX_SLIDE_MODE_1 = "PCS";
  parameter RX_STATUS_FMT_0 = "PCIE";
  parameter RX_STATUS_FMT_1 = "PCIE";
  parameter RX_XCLK_SEL_0 = "RXREC";
  parameter RX_XCLK_SEL_1 = "RXREC";
  parameter [2:0] SATA_BURST_VAL_0 = 3'b100;
  parameter [2:0] SATA_BURST_VAL_1 = 3'b100;
  parameter [2:0] SATA_IDLE_VAL_0 = 3'b011;
  parameter [2:0] SATA_IDLE_VAL_1 = 3'b011;
  parameter integer SATA_MAX_BURST_0 = 7;
  parameter integer SATA_MAX_BURST_1 = 7;
  parameter integer SATA_MAX_INIT_0 = 22;
  parameter integer SATA_MAX_INIT_1 = 22;
  parameter integer SATA_MAX_WAKE_0 = 7;
  parameter integer SATA_MAX_WAKE_1 = 7;
  parameter integer SATA_MIN_BURST_0 = 4;
  parameter integer SATA_MIN_BURST_1 = 4;
  parameter integer SATA_MIN_INIT_0 = 12;
  parameter integer SATA_MIN_INIT_1 = 12;
  parameter integer SATA_MIN_WAKE_0 = 4;
  parameter integer SATA_MIN_WAKE_1 = 4;
  parameter integer SIM_GTPRESET_SPEEDUP = 1;
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE";
  parameter [2:0] SIM_REFCLK0_SOURCE = 3'b000;
  parameter [2:0] SIM_REFCLK1_SOURCE = 3'b000;
  parameter SIM_TX_ELEC_IDLE_LEVEL = "X";
  parameter SIM_VERSION = "2.0";
  parameter [4:0] TERMINATION_CTRL_0 = 5'b10100;
  parameter [4:0] TERMINATION_CTRL_1 = 5'b10100;
  parameter TERMINATION_OVRD_0 = "FALSE";
  parameter TERMINATION_OVRD_1 = "FALSE";
  parameter [11:0] TRANS_TIME_FROM_P2_0 = 12'h03C;
  parameter [11:0] TRANS_TIME_FROM_P2_1 = 12'h03C;
  parameter [7:0] TRANS_TIME_NON_P2_0 = 8'h19;
  parameter [7:0] TRANS_TIME_NON_P2_1 = 8'h19;
  parameter [9:0] TRANS_TIME_TO_P2_0 = 10'h064;
  parameter [9:0] TRANS_TIME_TO_P2_1 = 10'h064;
  parameter [31:0] TST_ATTR_0 = 32'h00000000;
  parameter [31:0] TST_ATTR_1 = 32'h00000000;
  parameter [2:0] TXRX_INVERT_0 = 3'b011;
  parameter [2:0] TXRX_INVERT_1 = 3'b011;
  parameter TX_BUFFER_USE_0 = "FALSE";
  parameter TX_BUFFER_USE_1 = "FALSE";
  parameter [13:0] TX_DETECT_RX_CFG_0 = 14'h1832;
  parameter [13:0] TX_DETECT_RX_CFG_1 = 14'h1832;
  parameter [2:0] TX_IDLE_DELAY_0 = 3'b011;
  parameter [2:0] TX_IDLE_DELAY_1 = 3'b011;
  parameter [1:0] TX_TDCC_CFG_0 = 2'b00;
  parameter [1:0] TX_TDCC_CFG_1 = 2'b00;
  parameter TX_XCLK_SEL_0 = "TXUSR";
  parameter TX_XCLK_SEL_1 = "TXUSR";
  parameter LOC = "UNPLACED";

  localparam in_delay = 0;
  localparam out_delay = 0;
  localparam INCLK_DELAY = 0;
  localparam OUTCLK_DELAY = 0;
  localparam MODULE_NAME = "X_GTPA1_DUAL";


  output DRDY;
  output PHYSTATUS0;
  output PHYSTATUS1;
  output PLLLKDET0;
  output PLLLKDET1;
  output REFCLKOUT0;
  output REFCLKOUT1;
  output REFCLKPLL0;
  output REFCLKPLL1;
  output RESETDONE0;
  output RESETDONE1;
  output RXBYTEISALIGNED0;
  output RXBYTEISALIGNED1;
  output RXBYTEREALIGN0;
  output RXBYTEREALIGN1;
  output RXCHANBONDSEQ0;
  output RXCHANBONDSEQ1;
  output RXCHANISALIGNED0;
  output RXCHANISALIGNED1;
  output RXCHANREALIGN0;
  output RXCHANREALIGN1;
  output RXCOMMADET0;
  output RXCOMMADET1;
  output RXELECIDLE0;
  output RXELECIDLE1;
  output RXPRBSERR0;
  output RXPRBSERR1;
  output RXRECCLK0;
  output RXRECCLK1;
  output RXVALID0;
  output RXVALID1;
  output TXN0;
  output TXN1;
  output TXOUTCLK0;
  output TXOUTCLK1;
  output TXP0;
  output TXP1;
  output [15:0] DRPDO;
  output [1:0] GTPCLKFBEAST;
  output [1:0] GTPCLKFBWEST;
  output [1:0] GTPCLKOUT0;
  output [1:0] GTPCLKOUT1;
  output [1:0] RXLOSSOFSYNC0;
  output [1:0] RXLOSSOFSYNC1;
  output [1:0] TXBUFSTATUS0;
  output [1:0] TXBUFSTATUS1;
  output [2:0] RXBUFSTATUS0;
  output [2:0] RXBUFSTATUS1;
  output [2:0] RXCHBONDO;
  output [2:0] RXCLKCORCNT0;
  output [2:0] RXCLKCORCNT1;
  output [2:0] RXSTATUS0;
  output [2:0] RXSTATUS1;
  output [31:0] RXDATA0;
  output [31:0] RXDATA1;
  output [3:0] RXCHARISCOMMA0;
  output [3:0] RXCHARISCOMMA1;
  output [3:0] RXCHARISK0;
  output [3:0] RXCHARISK1;
  output [3:0] RXDISPERR0;
  output [3:0] RXDISPERR1;
  output [3:0] RXNOTINTABLE0;
  output [3:0] RXNOTINTABLE1;
  output [3:0] RXRUNDISP0;
  output [3:0] RXRUNDISP1;
  output [3:0] TXKERR0;
  output [3:0] TXKERR1;
  output [3:0] TXRUNDISP0;
  output [3:0] TXRUNDISP1;
  output [4:0] RCALOUTEAST;
  output [4:0] RCALOUTWEST;
  output [4:0] TSTOUT0;
  output [4:0] TSTOUT1;

  input CLK00;
  input CLK01;
  input CLK10;
  input CLK11;
  input CLKINEAST0;
  input CLKINEAST1;
  input CLKINWEST0;
  input CLKINWEST1;
  input DCLK;
  input DEN;
  input DWE;
  input GATERXELECIDLE0;
  input GATERXELECIDLE1;
  input GCLK00;
  input GCLK01;
  input GCLK10;
  input GCLK11;
  input GTPRESET0;
  input GTPRESET1;
  input IGNORESIGDET0;
  input IGNORESIGDET1;
  input INTDATAWIDTH0;
  input INTDATAWIDTH1;
  input PLLCLK00;
  input PLLCLK01;
  input PLLCLK10;
  input PLLCLK11;
  input PLLLKDETEN0;
  input PLLLKDETEN1;
  input PLLPOWERDOWN0;
  input PLLPOWERDOWN1;
  input PRBSCNTRESET0;
  input PRBSCNTRESET1;
  input REFCLKPWRDNB0;
  input REFCLKPWRDNB1;
  input RXBUFRESET0;
  input RXBUFRESET1;
  input RXCDRRESET0;
  input RXCDRRESET1;
  input RXCHBONDMASTER0;
  input RXCHBONDMASTER1;
  input RXCHBONDSLAVE0;
  input RXCHBONDSLAVE1;
  input RXCOMMADETUSE0;
  input RXCOMMADETUSE1;
  input RXDEC8B10BUSE0;
  input RXDEC8B10BUSE1;
  input RXENCHANSYNC0;
  input RXENCHANSYNC1;
  input RXENMCOMMAALIGN0;
  input RXENMCOMMAALIGN1;
  input RXENPCOMMAALIGN0;
  input RXENPCOMMAALIGN1;
  input RXENPMAPHASEALIGN0;
  input RXENPMAPHASEALIGN1;
  input RXN0;
  input RXN1;
  input RXP0;
  input RXP1;
  input RXPMASETPHASE0;
  input RXPMASETPHASE1;
  input RXPOLARITY0;
  input RXPOLARITY1;
  input RXRESET0;
  input RXRESET1;
  input RXSLIDE0;
  input RXSLIDE1;
  input RXUSRCLK0;
  input RXUSRCLK1;
  input RXUSRCLK20;
  input RXUSRCLK21;
  input TSTCLK0;
  input TSTCLK1;
  input TXCOMSTART0;
  input TXCOMSTART1;
  input TXCOMTYPE0;
  input TXCOMTYPE1;
  input TXDETECTRX0;
  input TXDETECTRX1;
  input TXELECIDLE0;
  input TXELECIDLE1;
  input TXENC8B10BUSE0;
  input TXENC8B10BUSE1;
  input TXENPMAPHASEALIGN0;
  input TXENPMAPHASEALIGN1;
  input TXINHIBIT0;
  input TXINHIBIT1;
  input TXPDOWNASYNCH0;
  input TXPDOWNASYNCH1;
  input TXPMASETPHASE0;
  input TXPMASETPHASE1;
  input TXPOLARITY0;
  input TXPOLARITY1;
  input TXPRBSFORCEERR0;
  input TXPRBSFORCEERR1;
  input TXRESET0;
  input TXRESET1;
  input TXUSRCLK0;
  input TXUSRCLK1;
  input TXUSRCLK20;
  input TXUSRCLK21;
  input USRCODEERR0;
  input USRCODEERR1;
  input [11:0] TSTIN0;
  input [11:0] TSTIN1;
  input [15:0] DI;
  input [1:0] GTPCLKFBSEL0EAST;
  input [1:0] GTPCLKFBSEL0WEST;
  input [1:0] GTPCLKFBSEL1EAST;
  input [1:0] GTPCLKFBSEL1WEST;
  input [1:0] RXDATAWIDTH0;
  input [1:0] RXDATAWIDTH1;
  input [1:0] RXEQMIX0;
  input [1:0] RXEQMIX1;
  input [1:0] RXPOWERDOWN0;
  input [1:0] RXPOWERDOWN1;
  input [1:0] TXDATAWIDTH0;
  input [1:0] TXDATAWIDTH1;
  input [1:0] TXPOWERDOWN0;
  input [1:0] TXPOWERDOWN1;
  input [2:0] LOOPBACK0;
  input [2:0] LOOPBACK1;
  input [2:0] REFSELDYPLL0;
  input [2:0] REFSELDYPLL1;
  input [2:0] RXCHBONDI;
  input [2:0] RXENPRBSTST0;
  input [2:0] RXENPRBSTST1;
  input [2:0] TXBUFDIFFCTRL0;
  input [2:0] TXBUFDIFFCTRL1;
  input [2:0] TXENPRBSTST0;
  input [2:0] TXENPRBSTST1;
  input [2:0] TXPREEMPHASIS0;
  input [2:0] TXPREEMPHASIS1;
  input [31:0] TXDATA0;
  input [31:0] TXDATA1;
  input [3:0] TXBYPASS8B10B0;
  input [3:0] TXBYPASS8B10B1;
  input [3:0] TXCHARDISPMODE0;
  input [3:0] TXCHARDISPMODE1;
  input [3:0] TXCHARDISPVAL0;
  input [3:0] TXCHARDISPVAL1;
  input [3:0] TXCHARISK0;
  input [3:0] TXCHARISK1;
  input [3:0] TXDIFFCTRL0;
  input [3:0] TXDIFFCTRL1;
  input [4:0] RCALINEAST;
  input [4:0] RCALINWEST;
  input [7:0] DADDR;
  input [7:0] GTPTEST0;
  input [7:0] GTPTEST1;

  reg SIM_GTPRESET_SPEEDUP_BINARY;
  reg SIM_RECEIVER_DETECT_PASS_BINARY;
  reg SIM_TX_ELEC_IDLE_LEVEL_BINARY;
  reg SIM_VERSION_BINARY;
  reg [0:0] AC_CAP_DIS_0_BINARY;
  reg [0:0] AC_CAP_DIS_1_BINARY;
  reg [0:0] ALIGN_COMMA_WORD_0_BINARY;
  reg [0:0] ALIGN_COMMA_WORD_1_BINARY;
  reg [0:0] CHAN_BOND_KEEP_ALIGN_0_BINARY;
  reg [0:0] CHAN_BOND_KEEP_ALIGN_1_BINARY;
  reg [0:0] CHAN_BOND_SEQ_2_USE_0_BINARY;
  reg [0:0] CHAN_BOND_SEQ_2_USE_1_BINARY;
  reg [0:0] CLKINDC_B_0_BINARY;
  reg [0:0] CLKINDC_B_1_BINARY;
  reg [0:0] CLKRCV_TRST_0_BINARY;
  reg [0:0] CLKRCV_TRST_1_BINARY;
  reg [0:0] CLK_CORRECT_USE_0_BINARY;
  reg [0:0] CLK_CORRECT_USE_1_BINARY;
  reg [0:0] CLK_COR_INSERT_IDLE_FLAG_0_BINARY;
  reg [0:0] CLK_COR_INSERT_IDLE_FLAG_1_BINARY;
  reg [0:0] CLK_COR_KEEP_IDLE_0_BINARY;
  reg [0:0] CLK_COR_KEEP_IDLE_1_BINARY;
  reg [0:0] CLK_COR_PRECEDENCE_0_BINARY;
  reg [0:0] CLK_COR_PRECEDENCE_1_BINARY;
  reg [0:0] CLK_COR_SEQ_2_USE_0_BINARY;
  reg [0:0] CLK_COR_SEQ_2_USE_1_BINARY;
  reg [0:0] CLK_OUT_GTP_SEL_0_BINARY;
  reg [0:0] CLK_OUT_GTP_SEL_1_BINARY;
  reg [0:0] DEC_MCOMMA_DETECT_0_BINARY;
  reg [0:0] DEC_MCOMMA_DETECT_1_BINARY;
  reg [0:0] DEC_PCOMMA_DETECT_0_BINARY;
  reg [0:0] DEC_PCOMMA_DETECT_1_BINARY;
  reg [0:0] DEC_VALID_COMMA_ONLY_0_BINARY;
  reg [0:0] DEC_VALID_COMMA_ONLY_1_BINARY;
  reg [0:0] GTP_CFG_PWRUP_0_BINARY;
  reg [0:0] GTP_CFG_PWRUP_1_BINARY;
  reg [0:0] MCOMMA_DETECT_0_BINARY;
  reg [0:0] MCOMMA_DETECT_1_BINARY;
  reg [0:0] PCI_EXPRESS_MODE_0_BINARY;
  reg [0:0] PCI_EXPRESS_MODE_1_BINARY;
  reg [0:0] PCOMMA_DETECT_0_BINARY;
  reg [0:0] PCOMMA_DETECT_1_BINARY;
  reg [0:0] PLL_SATA_0_BINARY;
  reg [0:0] PLL_SATA_1_BINARY;
  reg [0:0] PLL_SOURCE_0_BINARY;
  reg [0:0] PLL_SOURCE_1_BINARY;
  reg [0:0] RCV_TERM_GND_0_BINARY;
  reg [0:0] RCV_TERM_GND_1_BINARY;
  reg [0:0] RCV_TERM_VTTRX_0_BINARY;
  reg [0:0] RCV_TERM_VTTRX_1_BINARY;
  reg [0:0] RXPRBSERR_LOOPBACK_0_BINARY;
  reg [0:0] RXPRBSERR_LOOPBACK_1_BINARY;
  reg [0:0] RX_BUFFER_USE_0_BINARY;
  reg [0:0] RX_BUFFER_USE_1_BINARY;
  reg [0:0] RX_DECODE_SEQ_MATCH_0_BINARY;
  reg [0:0] RX_DECODE_SEQ_MATCH_1_BINARY;
  reg [0:0] RX_EN_IDLE_HOLD_CDR_0_BINARY;
  reg [0:0] RX_EN_IDLE_HOLD_CDR_1_BINARY;
  reg [0:0] RX_EN_IDLE_RESET_BUF_0_BINARY;
  reg [0:0] RX_EN_IDLE_RESET_BUF_1_BINARY;
  reg [0:0] RX_EN_IDLE_RESET_FR_0_BINARY;
  reg [0:0] RX_EN_IDLE_RESET_FR_1_BINARY;
  reg [0:0] RX_EN_IDLE_RESET_PH_0_BINARY;
  reg [0:0] RX_EN_IDLE_RESET_PH_1_BINARY;
  reg [0:0] RX_EN_MODE_RESET_BUF_0_BINARY;
  reg [0:0] RX_EN_MODE_RESET_BUF_1_BINARY;
  reg [0:0] RX_LOSS_OF_SYNC_FSM_0_BINARY;
  reg [0:0] RX_LOSS_OF_SYNC_FSM_1_BINARY;
  reg [0:0] RX_SLIDE_MODE_0_BINARY;
  reg [0:0] RX_SLIDE_MODE_1_BINARY;
  reg [0:0] RX_STATUS_FMT_0_BINARY;
  reg [0:0] RX_STATUS_FMT_1_BINARY;
  reg [0:0] RX_XCLK_SEL_0_BINARY;
  reg [0:0] RX_XCLK_SEL_1_BINARY;
  reg [0:0] TERMINATION_OVRD_0_BINARY;
  reg [0:0] TERMINATION_OVRD_1_BINARY;
  reg [0:0] TX_BUFFER_USE_0_BINARY;
  reg [0:0] TX_BUFFER_USE_1_BINARY;
  reg [0:0] TX_XCLK_SEL_0_BINARY;
  reg [0:0] TX_XCLK_SEL_1_BINARY;
  reg [1:0] CHAN_BOND_SEQ_LEN_0_BINARY;
  reg [1:0] CHAN_BOND_SEQ_LEN_1_BINARY;
  reg [1:0] CLK_COR_ADJ_LEN_0_BINARY;
  reg [1:0] CLK_COR_ADJ_LEN_1_BINARY;
  reg [1:0] CLK_COR_DET_LEN_0_BINARY;
  reg [1:0] CLK_COR_DET_LEN_1_BINARY;
  reg [1:0] CM_TRIM_0_BINARY;
  reg [1:0] CM_TRIM_1_BINARY;
  reg [1:0] PLL_RXDIVSEL_OUT_0_BINARY;
  reg [1:0] PLL_RXDIVSEL_OUT_1_BINARY;
  reg [1:0] PLL_TXDIVSEL_OUT_0_BINARY;
  reg [1:0] PLL_TXDIVSEL_OUT_1_BINARY;
  reg [1:0] TX_TDCC_CFG_0_BINARY;
  reg [1:0] TX_TDCC_CFG_1_BINARY;
  reg [2:0] CLK25_DIVIDER_0_BINARY;
  reg [2:0] CLK25_DIVIDER_1_BINARY;
  reg [2:0] OOBDETECT_THRESHOLD_0_BINARY;
  reg [2:0] OOBDETECT_THRESHOLD_1_BINARY;
  reg [2:0] OOB_CLK_DIVIDER_0_BINARY;
  reg [2:0] OOB_CLK_DIVIDER_1_BINARY;
  reg [2:0] PLLLKDET_CFG_0_BINARY;
  reg [2:0] PLLLKDET_CFG_1_BINARY;
  reg [2:0] RX_LOS_INVALID_INCR_0_BINARY;
  reg [2:0] RX_LOS_INVALID_INCR_1_BINARY;
  reg [2:0] RX_LOS_THRESHOLD_0_BINARY;
  reg [2:0] RX_LOS_THRESHOLD_1_BINARY;
  reg [2:0] SATA_BURST_VAL_0_BINARY;
  reg [2:0] SATA_BURST_VAL_1_BINARY;
  reg [2:0] SATA_IDLE_VAL_0_BINARY;
  reg [2:0] SATA_IDLE_VAL_1_BINARY;
  reg [2:0] SIM_REFCLK0_SOURCE_BINARY;
  reg [2:0] SIM_REFCLK1_SOURCE_BINARY;
  reg [2:0] TXRX_INVERT_0_BINARY;
  reg [2:0] TXRX_INVERT_1_BINARY;
  reg [2:0] TX_IDLE_DELAY_0_BINARY;
  reg [2:0] TX_IDLE_DELAY_1_BINARY;
  reg [3:0] CB2_INH_CC_PERIOD_0_BINARY;
  reg [3:0] CB2_INH_CC_PERIOD_1_BINARY;
  reg [3:0] CHAN_BOND_1_MAX_SKEW_0_BINARY;
  reg [3:0] CHAN_BOND_1_MAX_SKEW_1_BINARY;
  reg [3:0] CHAN_BOND_2_MAX_SKEW_0_BINARY;
  reg [3:0] CHAN_BOND_2_MAX_SKEW_1_BINARY;
  reg [3:0] CHAN_BOND_SEQ_1_ENABLE_0_BINARY;
  reg [3:0] CHAN_BOND_SEQ_1_ENABLE_1_BINARY;
  reg [3:0] CHAN_BOND_SEQ_2_ENABLE_0_BINARY;
  reg [3:0] CHAN_BOND_SEQ_2_ENABLE_1_BINARY;
  reg [3:0] CLK_COR_SEQ_1_ENABLE_0_BINARY;
  reg [3:0] CLK_COR_SEQ_1_ENABLE_1_BINARY;
  reg [3:0] CLK_COR_SEQ_2_ENABLE_0_BINARY;
  reg [3:0] CLK_COR_SEQ_2_ENABLE_1_BINARY;
  reg [3:0] COM_BURST_VAL_0_BINARY;
  reg [3:0] COM_BURST_VAL_1_BINARY;
  reg [3:0] RX_IDLE_HI_CNT_0_BINARY;
  reg [3:0] RX_IDLE_HI_CNT_1_BINARY;
  reg [3:0] RX_IDLE_LO_CNT_0_BINARY;
  reg [3:0] RX_IDLE_LO_CNT_1_BINARY;
  reg [4:0] CDR_PH_ADJ_TIME_0_BINARY;
  reg [4:0] CDR_PH_ADJ_TIME_1_BINARY;
  reg [4:0] CLK_COR_REPEAT_WAIT_0_BINARY;
  reg [4:0] CLK_COR_REPEAT_WAIT_1_BINARY;
  reg [4:0] PLL_DIVSEL_FB_0_BINARY;
  reg [4:0] PLL_DIVSEL_FB_1_BINARY;
  reg [4:0] TERMINATION_CTRL_0_BINARY;
  reg [4:0] TERMINATION_CTRL_1_BINARY;
  reg [5:0] CLK_COR_MAX_LAT_0_BINARY;
  reg [5:0] CLK_COR_MAX_LAT_1_BINARY;
  reg [5:0] CLK_COR_MIN_LAT_0_BINARY;
  reg [5:0] CLK_COR_MIN_LAT_1_BINARY;
  reg [5:0] PLL_DIVSEL_REF_0_BINARY;
  reg [5:0] PLL_DIVSEL_REF_1_BINARY;
  reg [5:0] SATA_MAX_BURST_0_BINARY;
  reg [5:0] SATA_MAX_BURST_1_BINARY;
  reg [5:0] SATA_MAX_INIT_0_BINARY;
  reg [5:0] SATA_MAX_INIT_1_BINARY;
  reg [5:0] SATA_MAX_WAKE_0_BINARY;
  reg [5:0] SATA_MAX_WAKE_1_BINARY;
  reg [5:0] SATA_MIN_BURST_0_BINARY;
  reg [5:0] SATA_MIN_BURST_1_BINARY;
  reg [5:0] SATA_MIN_INIT_0_BINARY;
  reg [5:0] SATA_MIN_INIT_1_BINARY;
  reg [5:0] SATA_MIN_WAKE_0_BINARY;
  reg [5:0] SATA_MIN_WAKE_1_BINARY;
  reg [7:0] RXEQ_CFG_0_BINARY;
  reg [7:0] RXEQ_CFG_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_1_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_1_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_2_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_2_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_3_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_3_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_4_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_1_4_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_1_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_1_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_2_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_2_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_3_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_3_1_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_4_0_BINARY;
  reg [9:0] CHAN_BOND_SEQ_2_4_1_BINARY;
  reg [9:0] CLK_COR_SEQ_1_1_0_BINARY;
  reg [9:0] CLK_COR_SEQ_1_1_1_BINARY;
  reg [9:0] CLK_COR_SEQ_1_2_0_BINARY;
  reg [9:0] CLK_COR_SEQ_1_2_1_BINARY;
  reg [9:0] CLK_COR_SEQ_1_3_0_BINARY;
  reg [9:0] CLK_COR_SEQ_1_3_1_BINARY;
  reg [9:0] CLK_COR_SEQ_1_4_0_BINARY;
  reg [9:0] CLK_COR_SEQ_1_4_1_BINARY;
  reg [9:0] CLK_COR_SEQ_2_1_0_BINARY;
  reg [9:0] CLK_COR_SEQ_2_1_1_BINARY;
  reg [9:0] CLK_COR_SEQ_2_2_0_BINARY;
  reg [9:0] CLK_COR_SEQ_2_2_1_BINARY;
  reg [9:0] CLK_COR_SEQ_2_3_0_BINARY;
  reg [9:0] CLK_COR_SEQ_2_3_1_BINARY;
  reg [9:0] CLK_COR_SEQ_2_4_0_BINARY;
  reg [9:0] CLK_COR_SEQ_2_4_1_BINARY;
  reg [9:0] COMMA_10B_ENABLE_0_BINARY;
  reg [9:0] COMMA_10B_ENABLE_1_BINARY;
  reg [9:0] MCOMMA_10B_VALUE_0_BINARY;
  reg [9:0] MCOMMA_10B_VALUE_1_BINARY;
  reg [9:0] PCOMMA_10B_VALUE_0_BINARY;
  reg [9:0] PCOMMA_10B_VALUE_1_BINARY;

  tri0 GSR = glbl.GSR;
  reg notifier;
  wire DRDY_OUT;
  wire PHYSTATUS0_OUT;
  wire PHYSTATUS1_OUT;
  wire PLLLKDET0_OUT;
  wire PLLLKDET1_OUT;
  wire REFCLKOUT0_OUT;
  wire REFCLKOUT1_OUT;
  wire REFCLKPLL0_OUT;
  wire REFCLKPLL1_OUT;
  wire RESETDONE0_OUT;
  wire RESETDONE1_OUT;
  wire RXBYTEISALIGNED0_OUT;
  wire RXBYTEISALIGNED1_OUT;
  wire RXBYTEREALIGN0_OUT;
  wire RXBYTEREALIGN1_OUT;
  wire RXCHANBONDSEQ0_OUT;
  wire RXCHANBONDSEQ1_OUT;
  wire RXCHANISALIGNED0_OUT;
  wire RXCHANISALIGNED1_OUT;
  wire RXCHANREALIGN0_OUT;
  wire RXCHANREALIGN1_OUT;
  wire RXCOMMADET0_OUT;
  wire RXCOMMADET1_OUT;
  wire RXELECIDLE0_OUT;
  wire RXELECIDLE1_OUT;
  wire RXPRBSERR0_OUT;
  wire RXPRBSERR1_OUT;
  wire RXRECCLK0_OUT;
  wire RXRECCLK1_OUT;
  wire RXVALID0_OUT;
  wire RXVALID1_OUT;
  wire TXN0_OUT;
  wire TXN1_OUT;
  wire TXOUTCLK0_OUT;
  wire TXOUTCLK1_OUT;
  wire TXP0_OUT;
  wire TXP1_OUT;
  wire [15:0] DRPDO_OUT;
  wire [1:0] GTPCLKFBEAST_OUT;
  wire [1:0] GTPCLKFBWEST_OUT;
  wire [1:0] GTPCLKOUT0_OUT;
  wire [1:0] GTPCLKOUT1_OUT;
  wire [1:0] RXLOSSOFSYNC0_OUT;
  wire [1:0] RXLOSSOFSYNC1_OUT;
  wire [1:0] TXBUFSTATUS0_OUT;
  wire [1:0] TXBUFSTATUS1_OUT;
  wire [2:0] RXBUFSTATUS0_OUT;
  wire [2:0] RXBUFSTATUS1_OUT;
  wire [2:0] RXCHBONDO_OUT;
  wire [2:0] RXCLKCORCNT0_OUT;
  wire [2:0] RXCLKCORCNT1_OUT;
  wire [2:0] RXSTATUS0_OUT;
  wire [2:0] RXSTATUS1_OUT;
  wire [31:0] RXDATA0_OUT;
  wire [31:0] RXDATA1_OUT;
  wire [3:0] RXCHARISCOMMA0_OUT;
  wire [3:0] RXCHARISCOMMA1_OUT;
  wire [3:0] RXCHARISK0_OUT;
  wire [3:0] RXCHARISK1_OUT;
  wire [3:0] RXDISPERR0_OUT;
  wire [3:0] RXDISPERR1_OUT;
  wire [3:0] RXNOTINTABLE0_OUT;
  wire [3:0] RXNOTINTABLE1_OUT;
  wire [3:0] RXRUNDISP0_OUT;
  wire [3:0] RXRUNDISP1_OUT;
  wire [3:0] TXKERR0_OUT;
  wire [3:0] TXKERR1_OUT;
  wire [3:0] TXRUNDISP0_OUT;
  wire [3:0] TXRUNDISP1_OUT;
  wire [4:0] RCALOUTEAST_OUT;
  wire [4:0] RCALOUTWEST_OUT;
  wire [4:0] TSTOUT0_OUT;
  wire [4:0] TSTOUT1_OUT;

  wire delay_DRDY;
  wire delay_PHYSTATUS0;
  wire delay_PHYSTATUS1;
  wire delay_PLLLKDET0;
  wire delay_PLLLKDET1;
  wire delay_REFCLKOUT0;
  wire delay_REFCLKOUT1;
  wire delay_REFCLKPLL0;
  wire delay_REFCLKPLL1;
  wire delay_RESETDONE0;
  wire delay_RESETDONE1;
  wire delay_RXBYTEISALIGNED0;
  wire delay_RXBYTEISALIGNED1;
  wire delay_RXBYTEREALIGN0;
  wire delay_RXBYTEREALIGN1;
  wire delay_RXCHANBONDSEQ0;
  wire delay_RXCHANBONDSEQ1;
  wire delay_RXCHANISALIGNED0;
  wire delay_RXCHANISALIGNED1;
  wire delay_RXCHANREALIGN0;
  wire delay_RXCHANREALIGN1;
  wire delay_RXCOMMADET0;
  wire delay_RXCOMMADET1;
  wire delay_RXELECIDLE0;
  wire delay_RXELECIDLE1;
  wire delay_RXPRBSERR0;
  wire delay_RXPRBSERR1;
  wire delay_RXRECCLK0;
  wire delay_RXRECCLK1;
  wire delay_RXVALID0;
  wire delay_RXVALID1;
  wire delay_TXN0;
  wire delay_TXN1;
  wire delay_TXOUTCLK0;
  wire delay_TXOUTCLK1;
  wire delay_TXP0;
  wire delay_TXP1;
  wire [15:0] delay_DRPDO;
  wire [1:0] delay_GTPCLKFBEAST;
  wire [1:0] delay_GTPCLKFBWEST;
  wire [1:0] delay_GTPCLKOUT0;
  wire [1:0] delay_GTPCLKOUT1;
  wire [1:0] delay_RXLOSSOFSYNC0;
  wire [1:0] delay_RXLOSSOFSYNC1;
  wire [1:0] delay_TXBUFSTATUS0;
  wire [1:0] delay_TXBUFSTATUS1;
  wire [2:0] delay_RXBUFSTATUS0;
  wire [2:0] delay_RXBUFSTATUS1;
  wire [2:0] delay_RXCHBONDO;
  wire [2:0] delay_RXCLKCORCNT0;
  wire [2:0] delay_RXCLKCORCNT1;
  wire [2:0] delay_RXSTATUS0;
  wire [2:0] delay_RXSTATUS1;
  wire [31:0] delay_RXDATA0;
  wire [31:0] delay_RXDATA1;
  wire [3:0] delay_RXCHARISCOMMA0;
  wire [3:0] delay_RXCHARISCOMMA1;
  wire [3:0] delay_RXCHARISK0;
  wire [3:0] delay_RXCHARISK1;
  wire [3:0] delay_RXDISPERR0;
  wire [3:0] delay_RXDISPERR1;
  wire [3:0] delay_RXNOTINTABLE0;
  wire [3:0] delay_RXNOTINTABLE1;
  wire [3:0] delay_RXRUNDISP0;
  wire [3:0] delay_RXRUNDISP1;
  wire [3:0] delay_TXKERR0;
  wire [3:0] delay_TXKERR1;
  wire [3:0] delay_TXRUNDISP0;
  wire [3:0] delay_TXRUNDISP1;
  wire [4:0] delay_RCALOUTEAST;
  wire [4:0] delay_RCALOUTWEST;
  wire [4:0] delay_TSTOUT0;
  wire [4:0] delay_TSTOUT1;

  wire CLK00_IN;
  wire CLK01_IN;
  wire CLK10_IN;
  wire CLK11_IN;
  wire CLKINEAST0_IN;
  wire CLKINEAST1_IN;
  wire CLKINWEST0_IN;
  wire CLKINWEST1_IN;
  wire DCLK_IN;
  wire DEN_IN;
  wire DWE_IN;
  wire GATERXELECIDLE0_IN;
  wire GATERXELECIDLE1_IN;
  wire GCLK00_IN;
  wire GCLK01_IN;
  wire GCLK10_IN;
  wire GCLK11_IN;
  wire GTPRESET0_IN;
  wire GTPRESET1_IN;
  wire IGNORESIGDET0_IN;
  wire IGNORESIGDET1_IN;
  wire INTDATAWIDTH0_IN;
  wire INTDATAWIDTH1_IN;
  wire PLLCLK00_IN;
  wire PLLCLK01_IN;
  wire PLLCLK10_IN;
  wire PLLCLK11_IN;
  wire PLLLKDETEN0_IN;
  wire PLLLKDETEN1_IN;
  wire PLLPOWERDOWN0_IN;
  wire PLLPOWERDOWN1_IN;
  wire PRBSCNTRESET0_IN;
  wire PRBSCNTRESET1_IN;
  wire REFCLKPWRDNB0_IN;
  wire REFCLKPWRDNB1_IN;
  wire RXBUFRESET0_IN;
  wire RXBUFRESET1_IN;
  wire RXCDRRESET0_IN;
  wire RXCDRRESET1_IN;
  wire RXCHBONDMASTER0_IN;
  wire RXCHBONDMASTER1_IN;
  wire RXCHBONDSLAVE0_IN;
  wire RXCHBONDSLAVE1_IN;
  wire RXCOMMADETUSE0_IN;
  wire RXCOMMADETUSE1_IN;
  wire RXDEC8B10BUSE0_IN;
  wire RXDEC8B10BUSE1_IN;
  wire RXENCHANSYNC0_IN;
  wire RXENCHANSYNC1_IN;
  wire RXENMCOMMAALIGN0_IN;
  wire RXENMCOMMAALIGN1_IN;
  wire RXENPCOMMAALIGN0_IN;
  wire RXENPCOMMAALIGN1_IN;
  wire RXENPMAPHASEALIGN0_IN;
  wire RXENPMAPHASEALIGN1_IN;
  wire RXN0_IN;
  wire RXN1_IN;
  wire RXP0_IN;
  wire RXP1_IN;
  wire RXPMASETPHASE0_IN;
  wire RXPMASETPHASE1_IN;
  wire RXPOLARITY0_IN;
  wire RXPOLARITY1_IN;
  wire RXRESET0_IN;
  wire RXRESET1_IN;
  wire RXSLIDE0_IN;
  wire RXSLIDE1_IN;
  wire RXUSRCLK0_IN;
  wire RXUSRCLK1_IN;
  wire RXUSRCLK20_IN;
  wire RXUSRCLK21_IN;
  wire TSTCLK0_IN;
  wire TSTCLK1_IN;
  wire TXCOMSTART0_IN;
  wire TXCOMSTART1_IN;
  wire TXCOMTYPE0_IN;
  wire TXCOMTYPE1_IN;
  wire TXDETECTRX0_IN;
  wire TXDETECTRX1_IN;
  wire TXELECIDLE0_IN;
  wire TXELECIDLE1_IN;
  wire TXENC8B10BUSE0_IN;
  wire TXENC8B10BUSE1_IN;
  wire TXENPMAPHASEALIGN0_IN;
  wire TXENPMAPHASEALIGN1_IN;
  wire TXINHIBIT0_IN;
  wire TXINHIBIT1_IN;
  wire TXPDOWNASYNCH0_IN;
  wire TXPDOWNASYNCH1_IN;
  wire TXPMASETPHASE0_IN;
  wire TXPMASETPHASE1_IN;
  wire TXPOLARITY0_IN;
  wire TXPOLARITY1_IN;
  wire TXPRBSFORCEERR0_IN;
  wire TXPRBSFORCEERR1_IN;
  wire TXRESET0_IN;
  wire TXRESET1_IN;
  wire TXUSRCLK0_IN;
  wire TXUSRCLK1_IN;
  wire TXUSRCLK20_IN;
  wire TXUSRCLK21_IN;
  wire USRCODEERR0_IN;
  wire USRCODEERR1_IN;
  wire [11:0] TSTIN0_IN;
  wire [11:0] TSTIN1_IN;
  wire [15:0] DI_IN;
  wire [1:0] GTPCLKFBSEL0EAST_IN;
  wire [1:0] GTPCLKFBSEL0WEST_IN;
  wire [1:0] GTPCLKFBSEL1EAST_IN;
  wire [1:0] GTPCLKFBSEL1WEST_IN;
  wire [1:0] RXDATAWIDTH0_IN;
  wire [1:0] RXDATAWIDTH1_IN;
  wire [1:0] RXEQMIX0_IN;
  wire [1:0] RXEQMIX1_IN;
  wire [1:0] RXPOWERDOWN0_IN;
  wire [1:0] RXPOWERDOWN1_IN;
  wire [1:0] TXDATAWIDTH0_IN;
  wire [1:0] TXDATAWIDTH1_IN;
  wire [1:0] TXPOWERDOWN0_IN;
  wire [1:0] TXPOWERDOWN1_IN;
  wire [2:0] LOOPBACK0_IN;
  wire [2:0] LOOPBACK1_IN;
  wire [2:0] REFSELDYPLL0_IN;
  wire [2:0] REFSELDYPLL1_IN;
  wire [2:0] RXCHBONDI_IN;
  wire [2:0] RXENPRBSTST0_IN;
  wire [2:0] RXENPRBSTST1_IN;
  wire [2:0] TXBUFDIFFCTRL0_IN;
  wire [2:0] TXBUFDIFFCTRL1_IN;
  wire [2:0] TXENPRBSTST0_IN;
  wire [2:0] TXENPRBSTST1_IN;
  wire [2:0] TXPREEMPHASIS0_IN;
  wire [2:0] TXPREEMPHASIS1_IN;
  wire [31:0] TXDATA0_IN;
  wire [31:0] TXDATA1_IN;
  wire [3:0] TXBYPASS8B10B0_IN;
  wire [3:0] TXBYPASS8B10B1_IN;
  wire [3:0] TXCHARDISPMODE0_IN;
  wire [3:0] TXCHARDISPMODE1_IN;
  wire [3:0] TXCHARDISPVAL0_IN;
  wire [3:0] TXCHARDISPVAL1_IN;
  wire [3:0] TXCHARISK0_IN;
  wire [3:0] TXCHARISK1_IN;
  wire [3:0] TXDIFFCTRL0_IN;
  wire [3:0] TXDIFFCTRL1_IN;
  wire [4:0] RCALINEAST_IN;
  wire [4:0] RCALINWEST_IN;
  wire [7:0] DADDR_IN;
  wire [7:0] GTPTEST0_IN;
  wire [7:0] GTPTEST1_IN;
  wire delay_CLK00;
  wire delay_CLK01;
  wire delay_CLK10;
  wire delay_CLK11;
  wire delay_CLKINEAST0;
  wire delay_CLKINEAST1;
  wire delay_CLKINWEST0;
  wire delay_CLKINWEST1;
  wire delay_DCLK;
  wire delay_DEN;
  wire delay_DWE;
  wire delay_GATERXELECIDLE0;
  wire delay_GATERXELECIDLE1;
  wire delay_GCLK00;
  wire delay_GCLK01;
  wire delay_GCLK10;
  wire delay_GCLK11;
  wire delay_GTPRESET0;
  wire delay_GTPRESET1;
  wire delay_IGNORESIGDET0;
  wire delay_IGNORESIGDET1;
  wire delay_INTDATAWIDTH0;
  wire delay_INTDATAWIDTH1;
  wire delay_PLLCLK00;
  wire delay_PLLCLK01;
  wire delay_PLLCLK10;
  wire delay_PLLCLK11;
  wire delay_PLLLKDETEN0;
  wire delay_PLLLKDETEN1;
  wire delay_PLLPOWERDOWN0;
  wire delay_PLLPOWERDOWN1;
  wire delay_PRBSCNTRESET0;
  wire delay_PRBSCNTRESET1;
  wire delay_REFCLKPWRDNB0;
  wire delay_REFCLKPWRDNB1;
  wire delay_RXBUFRESET0;
  wire delay_RXBUFRESET1;
  wire delay_RXCDRRESET0;
  wire delay_RXCDRRESET1;
  wire delay_RXCHBONDMASTER0;
  wire delay_RXCHBONDMASTER1;
  wire delay_RXCHBONDSLAVE0;
  wire delay_RXCHBONDSLAVE1;
  wire delay_RXCOMMADETUSE0;
  wire delay_RXCOMMADETUSE1;
  wire delay_RXDEC8B10BUSE0;
  wire delay_RXDEC8B10BUSE1;
  wire delay_RXENCHANSYNC0;
  wire delay_RXENCHANSYNC1;
  wire delay_RXENMCOMMAALIGN0;
  wire delay_RXENMCOMMAALIGN1;
  wire delay_RXENPCOMMAALIGN0;
  wire delay_RXENPCOMMAALIGN1;
  wire delay_RXENPMAPHASEALIGN0;
  wire delay_RXENPMAPHASEALIGN1;
  wire delay_RXN0;
  wire delay_RXN1;
  wire delay_RXP0;
  wire delay_RXP1;
  wire delay_RXPMASETPHASE0;
  wire delay_RXPMASETPHASE1;
  wire delay_RXPOLARITY0;
  wire delay_RXPOLARITY1;
  wire delay_RXRESET0;
  wire delay_RXRESET1;
  wire delay_RXSLIDE0;
  wire delay_RXSLIDE1;
  wire delay_RXUSRCLK0;
  wire delay_RXUSRCLK1;
  wire delay_RXUSRCLK20;
  wire delay_RXUSRCLK21;
  wire delay_TSTCLK0;
  wire delay_TSTCLK1;
  wire delay_TXCOMSTART0;
  wire delay_TXCOMSTART1;
  wire delay_TXCOMTYPE0;
  wire delay_TXCOMTYPE1;
  wire delay_TXDETECTRX0;
  wire delay_TXDETECTRX1;
  wire delay_TXELECIDLE0;
  wire delay_TXELECIDLE1;
  wire delay_TXENC8B10BUSE0;
  wire delay_TXENC8B10BUSE1;
  wire delay_TXENPMAPHASEALIGN0;
  wire delay_TXENPMAPHASEALIGN1;
  wire delay_TXINHIBIT0;
  wire delay_TXINHIBIT1;
  wire delay_TXPDOWNASYNCH0;
  wire delay_TXPDOWNASYNCH1;
  wire delay_TXPMASETPHASE0;
  wire delay_TXPMASETPHASE1;
  wire delay_TXPOLARITY0;
  wire delay_TXPOLARITY1;
  wire delay_TXPRBSFORCEERR0;
  wire delay_TXPRBSFORCEERR1;
  wire delay_TXRESET0;
  wire delay_TXRESET1;
  wire delay_TXUSRCLK0;
  wire delay_TXUSRCLK1;
  wire delay_TXUSRCLK20;
  wire delay_TXUSRCLK21;
  wire delay_USRCODEERR0;
  wire delay_USRCODEERR1;
  wire [11:0] delay_TSTIN0;
  wire [11:0] delay_TSTIN1;
  wire [15:0] delay_DI;
  wire [1:0] delay_GTPCLKFBSEL0EAST;
  wire [1:0] delay_GTPCLKFBSEL0WEST;
  wire [1:0] delay_GTPCLKFBSEL1EAST;
  wire [1:0] delay_GTPCLKFBSEL1WEST;
  wire [1:0] delay_RXDATAWIDTH0;
  wire [1:0] delay_RXDATAWIDTH1;
  wire [1:0] delay_RXEQMIX0;
  wire [1:0] delay_RXEQMIX1;
  wire [1:0] delay_RXPOWERDOWN0;
  wire [1:0] delay_RXPOWERDOWN1;
  wire [1:0] delay_TXDATAWIDTH0;
  wire [1:0] delay_TXDATAWIDTH1;
  wire [1:0] delay_TXPOWERDOWN0;
  wire [1:0] delay_TXPOWERDOWN1;
  wire [2:0] delay_LOOPBACK0;
  wire [2:0] delay_LOOPBACK1;
  wire [2:0] delay_REFSELDYPLL0;
  wire [2:0] delay_REFSELDYPLL1;
  wire [2:0] delay_RXCHBONDI;
  wire [2:0] delay_RXENPRBSTST0;
  wire [2:0] delay_RXENPRBSTST1;
  wire [2:0] delay_TXBUFDIFFCTRL0;
  wire [2:0] delay_TXBUFDIFFCTRL1;
  wire [2:0] delay_TXENPRBSTST0;
  wire [2:0] delay_TXENPRBSTST1;
  wire [2:0] delay_TXPREEMPHASIS0;
  wire [2:0] delay_TXPREEMPHASIS1;
  wire [31:0] delay_TXDATA0;
  wire [31:0] delay_TXDATA1;
  wire [3:0] delay_TXBYPASS8B10B0;
  wire [3:0] delay_TXBYPASS8B10B1;
  wire [3:0] delay_TXCHARDISPMODE0;
  wire [3:0] delay_TXCHARDISPMODE1;
  wire [3:0] delay_TXCHARDISPVAL0;
  wire [3:0] delay_TXCHARDISPVAL1;
  wire [3:0] delay_TXCHARISK0;
  wire [3:0] delay_TXCHARISK1;
  wire [3:0] delay_TXDIFFCTRL0;
  wire [3:0] delay_TXDIFFCTRL1;
  wire [4:0] delay_RCALINEAST;
  wire [4:0] delay_RCALINWEST;
  wire [7:0] delay_DADDR;
  wire [7:0] delay_GTPTEST0;
  wire [7:0] delay_GTPTEST1;

  initial begin
    case (AC_CAP_DIS_0[31:0])
      "ALSE" : AC_CAP_DIS_0_BINARY <= 1'b0;
      "TRUE" : AC_CAP_DIS_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute AC_CAP_DIS_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, AC_CAP_DIS_0);
        $finish;
      end
    endcase

    case (AC_CAP_DIS_1[31:0])
      "ALSE" : AC_CAP_DIS_1_BINARY <= 1'b0;
      "TRUE" : AC_CAP_DIS_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute AC_CAP_DIS_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, AC_CAP_DIS_1);
        $finish;
      end
    endcase

    case (ALIGN_COMMA_WORD_0)
      1 : ALIGN_COMMA_WORD_0_BINARY <= 1'b0;
      2 : ALIGN_COMMA_WORD_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute ALIGN_COMMA_WORD_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 2.", MODULE_NAME, ALIGN_COMMA_WORD_0);
        $finish;
      end
    endcase

    case (ALIGN_COMMA_WORD_1)
      1 : ALIGN_COMMA_WORD_1_BINARY <= 1'b0;
      2 : ALIGN_COMMA_WORD_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute ALIGN_COMMA_WORD_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 2.", MODULE_NAME, ALIGN_COMMA_WORD_1);
        $finish;
      end
    endcase

    case (CHAN_BOND_KEEP_ALIGN_0[31:0])
      "ALSE" : CHAN_BOND_KEEP_ALIGN_0_BINARY <= 1'b0;
      "TRUE" : CHAN_BOND_KEEP_ALIGN_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CHAN_BOND_KEEP_ALIGN_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CHAN_BOND_KEEP_ALIGN_0);
        $finish;
      end
    endcase

    case (CHAN_BOND_KEEP_ALIGN_1[31:0])
      "ALSE" : CHAN_BOND_KEEP_ALIGN_1_BINARY <= 1'b0;
      "TRUE" : CHAN_BOND_KEEP_ALIGN_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CHAN_BOND_KEEP_ALIGN_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CHAN_BOND_KEEP_ALIGN_1);
        $finish;
      end
    endcase

    case (CHAN_BOND_SEQ_2_USE_0[31:0])
      "ALSE" : CHAN_BOND_SEQ_2_USE_0_BINARY <= 1'b0;
      "TRUE" : CHAN_BOND_SEQ_2_USE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_USE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CHAN_BOND_SEQ_2_USE_0);
        $finish;
      end
    endcase

    case (CHAN_BOND_SEQ_2_USE_1[31:0])
      "ALSE" : CHAN_BOND_SEQ_2_USE_1_BINARY <= 1'b0;
      "TRUE" : CHAN_BOND_SEQ_2_USE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_USE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CHAN_BOND_SEQ_2_USE_1);
        $finish;
      end
    endcase

    case (CHAN_BOND_SEQ_LEN_0)
      1 : CHAN_BOND_SEQ_LEN_0_BINARY <= 2'b00;
      2 : CHAN_BOND_SEQ_LEN_0_BINARY <= 2'b01;
      4 : CHAN_BOND_SEQ_LEN_0_BINARY <= 2'b11;
      default : begin
        $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_LEN_0 on %s instance %m is set to %d.  Legal values for this attribute are  1, 2 or 4.", MODULE_NAME, CHAN_BOND_SEQ_LEN_0);
        $finish;
      end
    endcase

    case (CHAN_BOND_SEQ_LEN_1)
      1 : CHAN_BOND_SEQ_LEN_1_BINARY <= 2'b00;
      2 : CHAN_BOND_SEQ_LEN_1_BINARY <= 2'b01;
      4 : CHAN_BOND_SEQ_LEN_1_BINARY <= 2'b11;
      default : begin
        $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_LEN_1 on %s instance %m is set to %d.  Legal values for this attribute are  1, 2 or 4.", MODULE_NAME, CHAN_BOND_SEQ_LEN_1);
        $finish;
      end
    endcase

    case (CLK25_DIVIDER_0)
      4 : CLK25_DIVIDER_0_BINARY <= 3'b011;
      1 : CLK25_DIVIDER_0_BINARY <= 3'b000;
      2 : CLK25_DIVIDER_0_BINARY <= 3'b001;
      3 : CLK25_DIVIDER_0_BINARY <= 3'b010;
      5 : CLK25_DIVIDER_0_BINARY <= 3'b100;
      6 : CLK25_DIVIDER_0_BINARY <= 3'b101;
      10 : CLK25_DIVIDER_0_BINARY <= 3'b110;
      12 : CLK25_DIVIDER_0_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK25_DIVIDER_0 on %s instance %m is set to %d.  Legal values for this attribute are 1 to 6, 10 and 12.", MODULE_NAME, CLK25_DIVIDER_0);
        $finish;
      end
    endcase

    case (CLK25_DIVIDER_1)
      4 : CLK25_DIVIDER_1_BINARY <= 3'b011;
      1 : CLK25_DIVIDER_1_BINARY <= 3'b000;
      2 : CLK25_DIVIDER_1_BINARY <= 3'b001;
      3 : CLK25_DIVIDER_1_BINARY <= 3'b010;
      5 : CLK25_DIVIDER_1_BINARY <= 3'b100;
      6 : CLK25_DIVIDER_1_BINARY <= 3'b101;
      10 : CLK25_DIVIDER_1_BINARY <= 3'b110;
      12 : CLK25_DIVIDER_1_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK25_DIVIDER_1 on %s instance %m is set to %d.  Legal values for this attribute are 1 to 6, 10 and 12.", MODULE_NAME, CLK25_DIVIDER_1);
        $finish;
      end
    endcase

    case (CLKINDC_B_0[31:0])
      "ALSE" : CLKINDC_B_0_BINARY <= 1'b0;
      "TRUE" : CLKINDC_B_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLKINDC_B_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLKINDC_B_0);
        $finish;
      end
    endcase

    case (CLKINDC_B_1[31:0])
      "ALSE" : CLKINDC_B_1_BINARY <= 1'b0;
      "TRUE" : CLKINDC_B_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLKINDC_B_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLKINDC_B_1);
        $finish;
      end
    endcase

    case (CLKRCV_TRST_0[31:0])
      "ALSE" : CLKRCV_TRST_0_BINARY <= 1'b0;
      "TRUE" : CLKRCV_TRST_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLKRCV_TRST_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLKRCV_TRST_0);
        $finish;
      end
    endcase

    case (CLKRCV_TRST_1[31:0])
      "ALSE" : CLKRCV_TRST_1_BINARY <= 1'b0;
      "TRUE" : CLKRCV_TRST_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLKRCV_TRST_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLKRCV_TRST_1);
        $finish;
      end
    endcase

    case (CLK_CORRECT_USE_0[31:0])
      "ALSE" : CLK_CORRECT_USE_0_BINARY <= 1'b0;
      "TRUE" : CLK_CORRECT_USE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_CORRECT_USE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_CORRECT_USE_0);
        $finish;
      end
    endcase

    case (CLK_CORRECT_USE_1[31:0])
      "ALSE" : CLK_CORRECT_USE_1_BINARY <= 1'b0;
      "TRUE" : CLK_CORRECT_USE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_CORRECT_USE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_CORRECT_USE_1);
        $finish;
      end
    endcase

    case (CLK_COR_ADJ_LEN_0)
      1 : CLK_COR_ADJ_LEN_0_BINARY <= 2'b00;
      2 : CLK_COR_ADJ_LEN_0_BINARY <= 2'b01;
      4 : CLK_COR_ADJ_LEN_0_BINARY <= 2'b11;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_ADJ_LEN_0 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 or 4.", MODULE_NAME, CLK_COR_ADJ_LEN_0);
        $finish;
      end
    endcase

    case (CLK_COR_ADJ_LEN_1)
      1 : CLK_COR_ADJ_LEN_1_BINARY <= 2'b00;
      2 : CLK_COR_ADJ_LEN_1_BINARY <= 2'b01;
      4 : CLK_COR_ADJ_LEN_1_BINARY <= 2'b11;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_ADJ_LEN_1 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 or 4.", MODULE_NAME, CLK_COR_ADJ_LEN_1);
        $finish;
      end
    endcase

    case (CLK_COR_DET_LEN_0)
      1 : CLK_COR_DET_LEN_0_BINARY <= 2'b00;
      2 : CLK_COR_DET_LEN_0_BINARY <= 2'b01;
      4 : CLK_COR_DET_LEN_0_BINARY <= 2'b11;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_DET_LEN_0 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 or 4.", MODULE_NAME, CLK_COR_DET_LEN_0);
        $finish;
      end
    endcase

    case (CLK_COR_DET_LEN_1)
      1 : CLK_COR_DET_LEN_1_BINARY <= 2'b00;
      2 : CLK_COR_DET_LEN_1_BINARY <= 2'b01;
      4 : CLK_COR_DET_LEN_1_BINARY <= 2'b11;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_DET_LEN_1 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 or 4.", MODULE_NAME, CLK_COR_DET_LEN_1);
        $finish;
      end
    endcase

    case (CLK_COR_INSERT_IDLE_FLAG_0[31:0])
      "ALSE" : CLK_COR_INSERT_IDLE_FLAG_0_BINARY <= 1'b0;
      "TRUE" : CLK_COR_INSERT_IDLE_FLAG_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_INSERT_IDLE_FLAG_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_INSERT_IDLE_FLAG_0);
        $finish;
      end
    endcase

    case (CLK_COR_INSERT_IDLE_FLAG_1[31:0])
      "ALSE" : CLK_COR_INSERT_IDLE_FLAG_1_BINARY <= 1'b0;
      "TRUE" : CLK_COR_INSERT_IDLE_FLAG_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_INSERT_IDLE_FLAG_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_INSERT_IDLE_FLAG_1);
        $finish;
      end
    endcase

    case (CLK_COR_KEEP_IDLE_0[31:0])
      "ALSE" : CLK_COR_KEEP_IDLE_0_BINARY <= 1'b0;
      "TRUE" : CLK_COR_KEEP_IDLE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_KEEP_IDLE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_KEEP_IDLE_0);
        $finish;
      end
    endcase

    case (CLK_COR_KEEP_IDLE_1[31:0])
      "ALSE" : CLK_COR_KEEP_IDLE_1_BINARY <= 1'b0;
      "TRUE" : CLK_COR_KEEP_IDLE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_KEEP_IDLE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_KEEP_IDLE_1);
        $finish;
      end
    endcase

    case (CLK_COR_PRECEDENCE_0[31:0])
      "ALSE" : CLK_COR_PRECEDENCE_0_BINARY <= 1'b0;
      "TRUE" : CLK_COR_PRECEDENCE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_PRECEDENCE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_PRECEDENCE_0);
        $finish;
      end
    endcase

    case (CLK_COR_PRECEDENCE_1[31:0])
      "ALSE" : CLK_COR_PRECEDENCE_1_BINARY <= 1'b0;
      "TRUE" : CLK_COR_PRECEDENCE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_PRECEDENCE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_PRECEDENCE_1);
        $finish;
      end
    endcase

    case (CLK_COR_SEQ_2_USE_0[31:0])
      "ALSE" : CLK_COR_SEQ_2_USE_0_BINARY <= 1'b0;
      "TRUE" : CLK_COR_SEQ_2_USE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_USE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_SEQ_2_USE_0);
        $finish;
      end
    endcase

    case (CLK_COR_SEQ_2_USE_1[31:0])
      "ALSE" : CLK_COR_SEQ_2_USE_1_BINARY <= 1'b0;
      "TRUE" : CLK_COR_SEQ_2_USE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_USE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, CLK_COR_SEQ_2_USE_1);
        $finish;
      end
    endcase

    case (CLK_OUT_GTP_SEL_0[71:0])
      "EFCLKPLL0" : CLK_OUT_GTP_SEL_0_BINARY <= 1'b1;
      "TXOUTCLK0" : CLK_OUT_GTP_SEL_0_BINARY <= 1'b0;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_OUT_GTP_SEL_0 on %s instance %m is set to %s.  Legal values for this attribute are TXOUTCLK0, or REFCLKPLL0.", MODULE_NAME, CLK_OUT_GTP_SEL_0);
        $finish;
      end
    endcase

    case (CLK_OUT_GTP_SEL_1[71:0])
      "EFCLKPLL1" : CLK_OUT_GTP_SEL_1_BINARY <= 1'b1;
      "TXOUTCLK1" : CLK_OUT_GTP_SEL_1_BINARY <= 1'b0;
      default : begin
        $display("Attribute Syntax Error : The Attribute CLK_OUT_GTP_SEL_1 on %s instance %m is set to %s.  Legal values for this attribute are TXOUTCLK1, or REFCLKPLL1.", MODULE_NAME, CLK_OUT_GTP_SEL_1);
        $finish;
      end
    endcase

    case (DEC_MCOMMA_DETECT_0[31:0])
      "ALSE" : DEC_MCOMMA_DETECT_0_BINARY <= 1'b0;
      "TRUE" : DEC_MCOMMA_DETECT_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute DEC_MCOMMA_DETECT_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DEC_MCOMMA_DETECT_0);
        $finish;
      end
    endcase

    case (DEC_MCOMMA_DETECT_1[31:0])
      "ALSE" : DEC_MCOMMA_DETECT_1_BINARY <= 1'b0;
      "TRUE" : DEC_MCOMMA_DETECT_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute DEC_MCOMMA_DETECT_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DEC_MCOMMA_DETECT_1);
        $finish;
      end
    endcase

    case (DEC_PCOMMA_DETECT_0[31:0])
      "ALSE" : DEC_PCOMMA_DETECT_0_BINARY <= 1'b0;
      "TRUE" : DEC_PCOMMA_DETECT_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute DEC_PCOMMA_DETECT_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DEC_PCOMMA_DETECT_0);
        $finish;
      end
    endcase

    case (DEC_PCOMMA_DETECT_1[31:0])
      "ALSE" : DEC_PCOMMA_DETECT_1_BINARY <= 1'b0;
      "TRUE" : DEC_PCOMMA_DETECT_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute DEC_PCOMMA_DETECT_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DEC_PCOMMA_DETECT_1);
        $finish;
      end
    endcase

    case (DEC_VALID_COMMA_ONLY_0[31:0])
      "ALSE" : DEC_VALID_COMMA_ONLY_0_BINARY <= 1'b0;
      "TRUE" : DEC_VALID_COMMA_ONLY_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute DEC_VALID_COMMA_ONLY_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DEC_VALID_COMMA_ONLY_0);
        $finish;
      end
    endcase

    case (DEC_VALID_COMMA_ONLY_1[31:0])
      "ALSE" : DEC_VALID_COMMA_ONLY_1_BINARY <= 1'b0;
      "TRUE" : DEC_VALID_COMMA_ONLY_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute DEC_VALID_COMMA_ONLY_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DEC_VALID_COMMA_ONLY_1);
        $finish;
      end
    endcase

    case (GTP_CFG_PWRUP_0[31:0])
      "ALSE" : GTP_CFG_PWRUP_0_BINARY <= 1'b0;
      "TRUE" : GTP_CFG_PWRUP_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute GTP_CFG_PWRUP_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, GTP_CFG_PWRUP_0);
        $finish;
      end
    endcase

    case (GTP_CFG_PWRUP_1[31:0])
      "ALSE" : GTP_CFG_PWRUP_1_BINARY <= 1'b0;
      "TRUE" : GTP_CFG_PWRUP_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute GTP_CFG_PWRUP_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, GTP_CFG_PWRUP_1);
        $finish;
      end
    endcase

    case (MCOMMA_DETECT_0[31:0])
      "ALSE" : MCOMMA_DETECT_0_BINARY <= 1'b0;
      "TRUE" : MCOMMA_DETECT_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute MCOMMA_DETECT_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, MCOMMA_DETECT_0);
        $finish;
      end
    endcase

    case (MCOMMA_DETECT_1[31:0])
      "ALSE" : MCOMMA_DETECT_1_BINARY <= 1'b0;
      "TRUE" : MCOMMA_DETECT_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute MCOMMA_DETECT_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, MCOMMA_DETECT_1);
        $finish;
      end
    endcase

    case (OOB_CLK_DIVIDER_0)
      4 : OOB_CLK_DIVIDER_0_BINARY <= 3'b010;
      1 : OOB_CLK_DIVIDER_0_BINARY <= 3'b000;
      2 : OOB_CLK_DIVIDER_0_BINARY <= 3'b001;
      6 : OOB_CLK_DIVIDER_0_BINARY <= 3'b011;
      8 : OOB_CLK_DIVIDER_0_BINARY <= 3'b100;
      10 : OOB_CLK_DIVIDER_0_BINARY <= 3'b101;
      12 : OOB_CLK_DIVIDER_0_BINARY <= 3'b110;
      14 : OOB_CLK_DIVIDER_0_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute OOB_CLK_DIVIDER_0 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2, 4, 6, 8, 10, 12 and 14.", MODULE_NAME, OOB_CLK_DIVIDER_0);
        $finish;
      end
    endcase

    case (OOB_CLK_DIVIDER_1)
      4 : OOB_CLK_DIVIDER_1_BINARY <= 3'b010;
      1 : OOB_CLK_DIVIDER_1_BINARY <= 3'b000;
      2 : OOB_CLK_DIVIDER_1_BINARY <= 3'b001;
      6 : OOB_CLK_DIVIDER_1_BINARY <= 3'b011;
      8 : OOB_CLK_DIVIDER_1_BINARY <= 3'b100;
      10 : OOB_CLK_DIVIDER_1_BINARY <= 3'b101;
      12 : OOB_CLK_DIVIDER_1_BINARY <= 3'b110;
      14 : OOB_CLK_DIVIDER_1_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute OOB_CLK_DIVIDER_1 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2, 4, 6, 8, 10, 12 and 14.", MODULE_NAME, OOB_CLK_DIVIDER_1);
        $finish;
      end
    endcase

    case (PCI_EXPRESS_MODE_0[31:0])
      "ALSE" : PCI_EXPRESS_MODE_0_BINARY <= 1'b0;
      "TRUE" : PCI_EXPRESS_MODE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PCI_EXPRESS_MODE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, PCI_EXPRESS_MODE_0);
        $finish;
      end
    endcase

    case (PCI_EXPRESS_MODE_1[31:0])
      "ALSE" : PCI_EXPRESS_MODE_1_BINARY <= 1'b0;
      "TRUE" : PCI_EXPRESS_MODE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PCI_EXPRESS_MODE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, PCI_EXPRESS_MODE_1);
        $finish;
      end
    endcase

    case (PCOMMA_DETECT_0[31:0])
      "ALSE" : PCOMMA_DETECT_0_BINARY <= 1'b0;
      "TRUE" : PCOMMA_DETECT_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PCOMMA_DETECT_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, PCOMMA_DETECT_0);
        $finish;
      end
    endcase

    case (PCOMMA_DETECT_1[31:0])
      "ALSE" : PCOMMA_DETECT_1_BINARY <= 1'b0;
      "TRUE" : PCOMMA_DETECT_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PCOMMA_DETECT_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, PCOMMA_DETECT_1);
        $finish;
      end
    endcase

    case (PLL_DIVSEL_FB_0)
      5 : PLL_DIVSEL_FB_0_BINARY <= 5'b00011;
      1 : PLL_DIVSEL_FB_0_BINARY <= 5'b10000;
      2 : PLL_DIVSEL_FB_0_BINARY <= 5'b00000;
      3 : PLL_DIVSEL_FB_0_BINARY <= 5'b00001;
      4 : PLL_DIVSEL_FB_0_BINARY <= 5'b00010;
      8 : PLL_DIVSEL_FB_0_BINARY <= 5'b00110;
      10 : PLL_DIVSEL_FB_0_BINARY <= 5'b00111;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_DIVSEL_FB_0 on %s instance %m is set to %d.  Legal values for this attribute are 1 to 5, 8 and 10.", MODULE_NAME, PLL_DIVSEL_FB_0);
        $finish;
      end
    endcase

    case (PLL_DIVSEL_FB_1)
      5 : PLL_DIVSEL_FB_1_BINARY <= 5'b00011;
      1 : PLL_DIVSEL_FB_1_BINARY <= 5'b10000;
      2 : PLL_DIVSEL_FB_1_BINARY <= 5'b00000;
      3 : PLL_DIVSEL_FB_1_BINARY <= 5'b00001;
      4 : PLL_DIVSEL_FB_1_BINARY <= 5'b00010;
      8 : PLL_DIVSEL_FB_1_BINARY <= 5'b00110;
      10 : PLL_DIVSEL_FB_1_BINARY <= 5'b00111;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_DIVSEL_FB_1 on %s instance %m is set to %d.  Legal values for this attribute are 1 to 5, 8 and 10.", MODULE_NAME, PLL_DIVSEL_FB_1);
        $finish;
      end
    endcase

    case (PLL_DIVSEL_REF_0)
      2 : PLL_DIVSEL_REF_0_BINARY <= 6'b000000;
      1 : PLL_DIVSEL_REF_0_BINARY <= 6'b010000;
      3 : PLL_DIVSEL_REF_0_BINARY <= 6'b000001;
      4 : PLL_DIVSEL_REF_0_BINARY <= 6'b000010;
      5 : PLL_DIVSEL_REF_0_BINARY <= 6'b000011;
      6 : PLL_DIVSEL_REF_0_BINARY <= 6'b000101;
      8 : PLL_DIVSEL_REF_0_BINARY <= 6'b000110;
      10 : PLL_DIVSEL_REF_0_BINARY <= 6'b000111;
      12 : PLL_DIVSEL_REF_0_BINARY <= 6'b001101;
      16 : PLL_DIVSEL_REF_0_BINARY <= 6'b001110;
      20 : PLL_DIVSEL_REF_0_BINARY <= 6'b001111;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_DIVSEL_REF_0 on %s instance %m is set to %d.  Legal values for this attribute are 1 to 6, 8, 10, 12, 16 and 20.", MODULE_NAME, PLL_DIVSEL_REF_0);
        $finish;
      end
    endcase

    case (PLL_DIVSEL_REF_1)
      2 : PLL_DIVSEL_REF_1_BINARY <= 6'b000000;
      1 : PLL_DIVSEL_REF_1_BINARY <= 6'b010000;
      3 : PLL_DIVSEL_REF_1_BINARY <= 6'b000001;
      4 : PLL_DIVSEL_REF_1_BINARY <= 6'b000010;
      5 : PLL_DIVSEL_REF_1_BINARY <= 6'b000011;
      6 : PLL_DIVSEL_REF_1_BINARY <= 6'b000101;
      8 : PLL_DIVSEL_REF_1_BINARY <= 6'b000110;
      10 : PLL_DIVSEL_REF_1_BINARY <= 6'b000111;
      12 : PLL_DIVSEL_REF_1_BINARY <= 6'b001101;
      16 : PLL_DIVSEL_REF_1_BINARY <= 6'b001110;
      20 : PLL_DIVSEL_REF_1_BINARY <= 6'b001111;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_DIVSEL_REF_1 on %s instance %m is set to %d.  Legal values for this attribute are 1 to 6, 8, 10, 12, 16 and 20.", MODULE_NAME, PLL_DIVSEL_REF_1);
        $finish;
      end
    endcase

    case (PLL_RXDIVSEL_OUT_0)
      1 : PLL_RXDIVSEL_OUT_0_BINARY <= 2'b00;
      2 : PLL_RXDIVSEL_OUT_0_BINARY <= 2'b01;
      4 : PLL_RXDIVSEL_OUT_0_BINARY <= 2'b10;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_RXDIVSEL_OUT_0 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 and 4.", MODULE_NAME, PLL_RXDIVSEL_OUT_0);
        $finish;
      end
    endcase

    case (PLL_RXDIVSEL_OUT_1)
      1 : PLL_RXDIVSEL_OUT_1_BINARY <= 2'b00;
      2 : PLL_RXDIVSEL_OUT_1_BINARY <= 2'b01;
      4 : PLL_RXDIVSEL_OUT_1_BINARY <= 2'b10;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_RXDIVSEL_OUT_1 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 and 4.", MODULE_NAME, PLL_RXDIVSEL_OUT_1);
        $finish;
      end
    endcase

    case (PLL_SATA_0[31:0])
      "ALSE" : PLL_SATA_0_BINARY <= 1'b0;
      "TRUE" : PLL_SATA_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_SATA_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, PLL_SATA_0);
        $finish;
      end
    endcase

    case (PLL_SATA_1[31:0])
      "ALSE" : PLL_SATA_1_BINARY <= 1'b0;
      "TRUE" : PLL_SATA_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_SATA_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, PLL_SATA_1);
        $finish;
      end
    endcase

    case (PLL_SOURCE_0)
      "PLL0" : PLL_SOURCE_0_BINARY <= 1'b0;
      "PLL1" : PLL_SOURCE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_SOURCE_0 on %s instance %m is set to %s.  Legal values for this attribute are PLL0, or PLL1.", MODULE_NAME, PLL_SOURCE_0);
        $finish;
      end
    endcase

    case (PLL_SOURCE_1)
      "PLL0" : PLL_SOURCE_1_BINARY <= 1'b0;
      "PLL1" : PLL_SOURCE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_SOURCE_1 on %s instance %m is set to %s.  Legal values for this attribute are PLL0, or PLL1.", MODULE_NAME, PLL_SOURCE_1);
        $finish;
      end
    endcase

    case (PLL_TXDIVSEL_OUT_0)
      1 : PLL_TXDIVSEL_OUT_0_BINARY <= 2'b00;
      2 : PLL_TXDIVSEL_OUT_0_BINARY <= 2'b01;
      4 : PLL_TXDIVSEL_OUT_0_BINARY <= 2'b10;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_TXDIVSEL_OUT_0 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 and 4.", MODULE_NAME, PLL_TXDIVSEL_OUT_0);
        $finish;
      end
    endcase

    case (PLL_TXDIVSEL_OUT_1)
      1 : PLL_TXDIVSEL_OUT_1_BINARY <= 2'b00;
      2 : PLL_TXDIVSEL_OUT_1_BINARY <= 2'b01;
      4 : PLL_TXDIVSEL_OUT_1_BINARY <= 2'b10;
      default : begin
        $display("Attribute Syntax Error : The Attribute PLL_TXDIVSEL_OUT_1 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2 and 4.", MODULE_NAME, PLL_TXDIVSEL_OUT_1);
        $finish;
      end
    endcase

    case (RCV_TERM_GND_0[31:0])
      "ALSE" : RCV_TERM_GND_0_BINARY <= 1'b0;
      "TRUE" : RCV_TERM_GND_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RCV_TERM_GND_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RCV_TERM_GND_0);
        $finish;
      end
    endcase

    case (RCV_TERM_GND_1[31:0])
      "ALSE" : RCV_TERM_GND_1_BINARY <= 1'b0;
      "TRUE" : RCV_TERM_GND_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RCV_TERM_GND_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RCV_TERM_GND_1);
        $finish;
      end
    endcase

    case (RCV_TERM_VTTRX_0[31:0])
      "ALSE" : RCV_TERM_VTTRX_0_BINARY <= 1'b0;
      "TRUE" : RCV_TERM_VTTRX_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RCV_TERM_VTTRX_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RCV_TERM_VTTRX_0);
        $finish;
      end
    endcase

    case (RCV_TERM_VTTRX_1[31:0])
      "ALSE" : RCV_TERM_VTTRX_1_BINARY <= 1'b0;
      "TRUE" : RCV_TERM_VTTRX_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RCV_TERM_VTTRX_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RCV_TERM_VTTRX_1);
        $finish;
      end
    endcase

    case (RX_BUFFER_USE_0[31:0])
      "ALSE" : RX_BUFFER_USE_0_BINARY <= 1'b0;
      "TRUE" : RX_BUFFER_USE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_BUFFER_USE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_BUFFER_USE_0);
        $finish;
      end
    endcase

    case (RX_BUFFER_USE_1[31:0])
      "ALSE" : RX_BUFFER_USE_1_BINARY <= 1'b0;
      "TRUE" : RX_BUFFER_USE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_BUFFER_USE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_BUFFER_USE_1);
        $finish;
      end
    endcase

    case (RX_DECODE_SEQ_MATCH_0[31:0])
      "ALSE" : RX_DECODE_SEQ_MATCH_0_BINARY <= 1'b0;
      "TRUE" : RX_DECODE_SEQ_MATCH_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_DECODE_SEQ_MATCH_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_DECODE_SEQ_MATCH_0);
        $finish;
      end
    endcase

    case (RX_DECODE_SEQ_MATCH_1[31:0])
      "ALSE" : RX_DECODE_SEQ_MATCH_1_BINARY <= 1'b0;
      "TRUE" : RX_DECODE_SEQ_MATCH_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_DECODE_SEQ_MATCH_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_DECODE_SEQ_MATCH_1);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_HOLD_CDR_0[31:0])
      "ALSE" : RX_EN_IDLE_HOLD_CDR_0_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_HOLD_CDR_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_HOLD_CDR_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_HOLD_CDR_0);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_HOLD_CDR_1[31:0])
      "ALSE" : RX_EN_IDLE_HOLD_CDR_1_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_HOLD_CDR_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_HOLD_CDR_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_HOLD_CDR_1);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_RESET_BUF_0[31:0])
      "ALSE" : RX_EN_IDLE_RESET_BUF_0_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_RESET_BUF_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_RESET_BUF_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_RESET_BUF_0);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_RESET_BUF_1[31:0])
      "ALSE" : RX_EN_IDLE_RESET_BUF_1_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_RESET_BUF_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_RESET_BUF_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_RESET_BUF_1);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_RESET_FR_0[31:0])
      "ALSE" : RX_EN_IDLE_RESET_FR_0_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_RESET_FR_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_RESET_FR_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_RESET_FR_0);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_RESET_FR_1[31:0])
      "ALSE" : RX_EN_IDLE_RESET_FR_1_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_RESET_FR_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_RESET_FR_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_RESET_FR_1);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_RESET_PH_0[31:0])
      "ALSE" : RX_EN_IDLE_RESET_PH_0_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_RESET_PH_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_RESET_PH_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_RESET_PH_0);
        $finish;
      end
    endcase

    case (RX_EN_IDLE_RESET_PH_1[31:0])
      "ALSE" : RX_EN_IDLE_RESET_PH_1_BINARY <= 1'b0;
      "TRUE" : RX_EN_IDLE_RESET_PH_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_IDLE_RESET_PH_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_IDLE_RESET_PH_1);
        $finish;
      end
    endcase

    case (RX_EN_MODE_RESET_BUF_0[31:0])
      "ALSE" : RX_EN_MODE_RESET_BUF_0_BINARY <= 1'b0;
      "TRUE" : RX_EN_MODE_RESET_BUF_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_MODE_RESET_BUF_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_MODE_RESET_BUF_0);
        $finish;
      end
    endcase

    case (RX_EN_MODE_RESET_BUF_1[31:0])
      "ALSE" : RX_EN_MODE_RESET_BUF_1_BINARY <= 1'b0;
      "TRUE" : RX_EN_MODE_RESET_BUF_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_EN_MODE_RESET_BUF_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_EN_MODE_RESET_BUF_1);
        $finish;
      end
    endcase

    case (RX_LOSS_OF_SYNC_FSM_0[31:0])
      "ALSE" : RX_LOSS_OF_SYNC_FSM_0_BINARY <= 1'b0;
      "TRUE" : RX_LOSS_OF_SYNC_FSM_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_LOSS_OF_SYNC_FSM_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_LOSS_OF_SYNC_FSM_0);
        $finish;
      end
    endcase

    case (RX_LOSS_OF_SYNC_FSM_1[31:0])
      "ALSE" : RX_LOSS_OF_SYNC_FSM_1_BINARY <= 1'b0;
      "TRUE" : RX_LOSS_OF_SYNC_FSM_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_LOSS_OF_SYNC_FSM_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, RX_LOSS_OF_SYNC_FSM_1);
        $finish;
      end
    endcase

    case (RX_LOS_INVALID_INCR_0)
      1 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b000;
      2 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b001;
      4 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b010;
      8 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b011;
      16 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b100;
      32 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b101;
      64 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b110;
      128 : RX_LOS_INVALID_INCR_0_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_LOS_INVALID_INCR_0 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2, 4, 8, 16, 32, 64 and 128.", MODULE_NAME, RX_LOS_INVALID_INCR_0);
        $finish;
      end
    endcase

    case (RX_LOS_INVALID_INCR_1)
      1 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b000;
      2 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b001;
      4 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b010;
      8 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b011;
      16 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b100;
      32 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b101;
      64 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b110;
      128 : RX_LOS_INVALID_INCR_1_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_LOS_INVALID_INCR_1 on %s instance %m is set to %d.  Legal values for this attribute are 1, 2, 4, 8, 16, 32, 64 and 128.", MODULE_NAME, RX_LOS_INVALID_INCR_1);
        $finish;
      end
    endcase

    case (RX_LOS_THRESHOLD_0)
      4 : RX_LOS_THRESHOLD_0_BINARY <= 3'b000;
      8 : RX_LOS_THRESHOLD_0_BINARY <= 3'b001;
      16 : RX_LOS_THRESHOLD_0_BINARY <= 3'b010;
      32 : RX_LOS_THRESHOLD_0_BINARY <= 3'b011;
      64 : RX_LOS_THRESHOLD_0_BINARY <= 3'b100;
      128 : RX_LOS_THRESHOLD_0_BINARY <= 3'b101;
      256 : RX_LOS_THRESHOLD_0_BINARY <= 3'b110;
      512 : RX_LOS_THRESHOLD_0_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_LOS_THRESHOLD_0 on %s instance %m is set to %d.  Legal values for this attribute are 4, 8, 16, 32, 64, 128, 256 and 512.", MODULE_NAME, RX_LOS_THRESHOLD_0);
        $finish;
      end
    endcase

    case (RX_LOS_THRESHOLD_1)
      4 : RX_LOS_THRESHOLD_1_BINARY <= 3'b000;
      8 : RX_LOS_THRESHOLD_1_BINARY <= 3'b001;
      16 : RX_LOS_THRESHOLD_1_BINARY <= 3'b010;
      32 : RX_LOS_THRESHOLD_1_BINARY <= 3'b011;
      64 : RX_LOS_THRESHOLD_1_BINARY <= 3'b100;
      128 : RX_LOS_THRESHOLD_1_BINARY <= 3'b101;
      256 : RX_LOS_THRESHOLD_1_BINARY <= 3'b110;
      512 : RX_LOS_THRESHOLD_1_BINARY <= 3'b111;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_LOS_THRESHOLD_1 on %s instance %m is set to %d.  Legal values for this attribute are 4, 8, 16, 32, 64, 128, 256 and 512.", MODULE_NAME, RX_LOS_THRESHOLD_1);
        $finish;
      end
    endcase

    case (RX_SLIDE_MODE_0)
      "PCS" : RX_SLIDE_MODE_0_BINARY <= 1'b0;
      "PMA" : RX_SLIDE_MODE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_SLIDE_MODE_0 on %s instance %m is set to %s.  Legal values for this attribute are PCS, or PMA.", MODULE_NAME, RX_SLIDE_MODE_0);
        $finish;
      end
    endcase

    case (RX_SLIDE_MODE_1)
      "PCS" : RX_SLIDE_MODE_1_BINARY <= 1'b0;
      "PMA" : RX_SLIDE_MODE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_SLIDE_MODE_1 on %s instance %m is set to %s.  Legal values for this attribute are PCS, or PMA.", MODULE_NAME, RX_SLIDE_MODE_1);
        $finish;
      end
    endcase

    case (RX_STATUS_FMT_0)
      "PCIE" : RX_STATUS_FMT_0_BINARY <= 1'b0;
      "SATA" : RX_STATUS_FMT_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_STATUS_FMT_0 on %s instance %m is set to %s.  Legal values for this attribute are PCIE, or SATA.", MODULE_NAME, RX_STATUS_FMT_0);
        $finish;
      end
    endcase

    case (RX_STATUS_FMT_1)
      "PCIE" : RX_STATUS_FMT_1_BINARY <= 1'b0;
      "SATA" : RX_STATUS_FMT_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_STATUS_FMT_1 on %s instance %m is set to %s.  Legal values for this attribute are PCIE, or SATA.", MODULE_NAME, RX_STATUS_FMT_1);
        $finish;
      end
    endcase

    case (RX_XCLK_SEL_0)
      "RXREC" : RX_XCLK_SEL_0_BINARY <= 1'b0;
      "RXUSR" : RX_XCLK_SEL_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_XCLK_SEL_0 on %s instance %m is set to %s.  Legal values for this attribute are RXREC, or RXUSR.", MODULE_NAME, RX_XCLK_SEL_0);
        $finish;
      end
    endcase

    case (RX_XCLK_SEL_1)
      "RXREC" : RX_XCLK_SEL_1_BINARY <= 1'b0;
      "RXUSR" : RX_XCLK_SEL_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_XCLK_SEL_1 on %s instance %m is set to %s.  Legal values for this attribute are RXREC, or RXUSR.", MODULE_NAME, RX_XCLK_SEL_1);
        $finish;
      end
    endcase

    case (SIM_GTPRESET_SPEEDUP)
      0 : SIM_GTPRESET_SPEEDUP_BINARY <=  1'b0;
      1 : SIM_GTPRESET_SPEEDUP_BINARY <=  1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute SIM_GTPRESET_SPEEDUP on %s instance %m is set to %d.  Legal values for this attribute are 0 to 1.", MODULE_NAME, SIM_GTPRESET_SPEEDUP, 0);
        $finish;
      end
    endcase

    case (SIM_RECEIVER_DETECT_PASS[31:0])
      "ALSE" : SIM_RECEIVER_DETECT_PASS_BINARY <= 1'b0;
      "TRUE" : SIM_RECEIVER_DETECT_PASS_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute SIM_RECEIVER_DETECT_PASS on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, SIM_RECEIVER_DETECT_PASS);
        $finish;
      end
    endcase

    case (SIM_TX_ELEC_IDLE_LEVEL)
      "X" : SIM_TX_ELEC_IDLE_LEVEL_BINARY <= 0;
      "0" : SIM_TX_ELEC_IDLE_LEVEL_BINARY <= 0;
      "1" : SIM_TX_ELEC_IDLE_LEVEL_BINARY <= 0;
      "Z" : SIM_TX_ELEC_IDLE_LEVEL_BINARY <= 0;
      default : begin
        $display("Attribute Syntax Error : The Attribute SIM_TX_ELEC_IDLE_LEVEL on %s instance %m is set to %s.  Legal values for this attribute are X, 0, 1, or Z.", MODULE_NAME, SIM_TX_ELEC_IDLE_LEVEL);
        $finish;
      end
    endcase

    case (SIM_VERSION)
      "2.0" : SIM_VERSION_BINARY <= 0;
      "1.0" : SIM_VERSION_BINARY <= 0;
      default : begin
        $display("Attribute Syntax Error : The Attribute SIM_VERSION on %s instance %m is set to %s.  Legal values for this attribute are 0.0, 1.0 or 2.0.", MODULE_NAME, SIM_VERSION);
        $finish;
      end
    endcase

    case (TERMINATION_OVRD_0[31:0])
      "ALSE" : TERMINATION_OVRD_0_BINARY <= 1'b0;
      "TRUE" : TERMINATION_OVRD_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute TERMINATION_OVRD_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, TERMINATION_OVRD_0);
        $finish;
      end
    endcase

    case (TERMINATION_OVRD_1[31:0])
      "ALSE" : TERMINATION_OVRD_1_BINARY <= 1'b0;
      "TRUE" : TERMINATION_OVRD_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute TERMINATION_OVRD_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, TERMINATION_OVRD_1);
        $finish;
      end
    endcase

    case (TX_BUFFER_USE_0[31:0])
      "ALSE" : TX_BUFFER_USE_0_BINARY <= 1'b0;
      "TRUE" : TX_BUFFER_USE_0_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_BUFFER_USE_0 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, TX_BUFFER_USE_0);
        $finish;
      end
    endcase

    case (TX_BUFFER_USE_1[31:0])
      "ALSE" : TX_BUFFER_USE_1_BINARY <= 1'b0;
      "TRUE" : TX_BUFFER_USE_1_BINARY <= 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_BUFFER_USE_1 on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, TX_BUFFER_USE_1);
        $finish;
      end
    endcase

    case (TX_XCLK_SEL_0)
      "TXUSR" : TX_XCLK_SEL_0_BINARY <= 1'b1;
      "TXOUT" : TX_XCLK_SEL_0_BINARY <= 1'b0;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_XCLK_SEL_0 on %s instance %m is set to %s.  Legal values for this attribute are TXUSR, or TXOUT.", MODULE_NAME, TX_XCLK_SEL_0);
        $finish;
      end
    endcase

    case (TX_XCLK_SEL_1)
      "TXUSR" : TX_XCLK_SEL_1_BINARY <= 1'b1;
      "TXOUT" : TX_XCLK_SEL_1_BINARY <= 1'b0;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_XCLK_SEL_1 on %s instance %m is set to %s.  Legal values for this attribute are TXUSR, or TXOUT.", MODULE_NAME, TX_XCLK_SEL_1);
        $finish;
      end
    endcase

    if ((CB2_INH_CC_PERIOD_0 >= 0) && (CB2_INH_CC_PERIOD_0 <= 15))
      CB2_INH_CC_PERIOD_0_BINARY <= CB2_INH_CC_PERIOD_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CB2_INH_CC_PERIOD_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CB2_INH_CC_PERIOD_0);
      $finish;
    end

    if ((CB2_INH_CC_PERIOD_1 >= 0) && (CB2_INH_CC_PERIOD_1 <= 15))
      CB2_INH_CC_PERIOD_1_BINARY <= CB2_INH_CC_PERIOD_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CB2_INH_CC_PERIOD_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CB2_INH_CC_PERIOD_1);
      $finish;
    end

    if ((CDR_PH_ADJ_TIME_0 >= 0) && (CDR_PH_ADJ_TIME_0 <= 31))
      CDR_PH_ADJ_TIME_0_BINARY <= CDR_PH_ADJ_TIME_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CDR_PH_ADJ_TIME_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 31.", MODULE_NAME, CDR_PH_ADJ_TIME_0);
      $finish;
    end

    if ((CDR_PH_ADJ_TIME_1 >= 0) && (CDR_PH_ADJ_TIME_1 <= 31))
      CDR_PH_ADJ_TIME_1_BINARY <= CDR_PH_ADJ_TIME_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CDR_PH_ADJ_TIME_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 31.", MODULE_NAME, CDR_PH_ADJ_TIME_1);
      $finish;
    end

    if ((CHAN_BOND_1_MAX_SKEW_0 >= 1) && (CHAN_BOND_1_MAX_SKEW_0 <= 14))
      CHAN_BOND_1_MAX_SKEW_0_BINARY <= CHAN_BOND_1_MAX_SKEW_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_1_MAX_SKEW_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 14.", MODULE_NAME, CHAN_BOND_1_MAX_SKEW_0);
      $finish;
    end

    if ((CHAN_BOND_1_MAX_SKEW_1 >= 1) && (CHAN_BOND_1_MAX_SKEW_1 <= 14))
      CHAN_BOND_1_MAX_SKEW_1_BINARY <= CHAN_BOND_1_MAX_SKEW_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_1_MAX_SKEW_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 14.", MODULE_NAME, CHAN_BOND_1_MAX_SKEW_1);
      $finish;
    end

    if ((CHAN_BOND_2_MAX_SKEW_0 >= 1) && (CHAN_BOND_2_MAX_SKEW_0 <= 14))
      CHAN_BOND_2_MAX_SKEW_0_BINARY <= CHAN_BOND_2_MAX_SKEW_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_2_MAX_SKEW_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 14.", MODULE_NAME, CHAN_BOND_2_MAX_SKEW_0);
      $finish;
    end

    if ((CHAN_BOND_2_MAX_SKEW_1 >= 1) && (CHAN_BOND_2_MAX_SKEW_1 <= 14))
      CHAN_BOND_2_MAX_SKEW_1_BINARY <= CHAN_BOND_2_MAX_SKEW_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_2_MAX_SKEW_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 14.", MODULE_NAME, CHAN_BOND_2_MAX_SKEW_1);
      $finish;
    end

    if (CHAN_BOND_2_MAX_SKEW_0 > CHAN_BOND_1_MAX_SKEW_0) begin
       $display("DRC Error : The value of CHAN_BOND_2_MAX_SKEW_0 is set to %d. This value must be less than or equal to the value of CHAN_BOND_1_MAX_SKEW_0 %d for instance %m of %s.", MODULE_NAME,CHAN_BOND_2_MAX_SKEW_0, CHAN_BOND_1_MAX_SKEW_0);
	   $finish;
    end
     
    if (CHAN_BOND_2_MAX_SKEW_1 > CHAN_BOND_1_MAX_SKEW_1) begin
	   $display("DRC Error : The value of CHAN_BOND_2_MAX_SKEW_1 is set to %d. This value must be less than or equal to the value of CHAN_BOND_1_MAX_SKEW_1 %d for instance %m of %s.", MODULE_NAME,CHAN_BOND_2_MAX_SKEW_1, CHAN_BOND_1_MAX_SKEW_1);
	   $finish;
    end

    if ((CHAN_BOND_SEQ_1_1_0 >= 0) && (CHAN_BOND_SEQ_1_1_0 <= 1023))
      CHAN_BOND_SEQ_1_1_0_BINARY <= CHAN_BOND_SEQ_1_1_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_1_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_1_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_1_1 >= 0) && (CHAN_BOND_SEQ_1_1_1 <= 1023))
      CHAN_BOND_SEQ_1_1_1_BINARY <= CHAN_BOND_SEQ_1_1_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_1_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_1_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_2_0 >= 0) && (CHAN_BOND_SEQ_1_2_0 <= 1023))
      CHAN_BOND_SEQ_1_2_0_BINARY <= CHAN_BOND_SEQ_1_2_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_2_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_2_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_2_1 >= 0) && (CHAN_BOND_SEQ_1_2_1 <= 1023))
      CHAN_BOND_SEQ_1_2_1_BINARY <= CHAN_BOND_SEQ_1_2_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_2_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_2_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_3_0 >= 0) && (CHAN_BOND_SEQ_1_3_0 <= 1023))
      CHAN_BOND_SEQ_1_3_0_BINARY <= CHAN_BOND_SEQ_1_3_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_3_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_3_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_3_1 >= 0) && (CHAN_BOND_SEQ_1_3_1 <= 1023))
      CHAN_BOND_SEQ_1_3_1_BINARY <= CHAN_BOND_SEQ_1_3_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_3_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_3_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_4_0 >= 0) && (CHAN_BOND_SEQ_1_4_0 <= 1023))
      CHAN_BOND_SEQ_1_4_0_BINARY <= CHAN_BOND_SEQ_1_4_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_4_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_4_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_4_1 >= 0) && (CHAN_BOND_SEQ_1_4_1 <= 1023))
      CHAN_BOND_SEQ_1_4_1_BINARY <= CHAN_BOND_SEQ_1_4_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_4_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_1_4_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_ENABLE_0 >= 0) && (CHAN_BOND_SEQ_1_ENABLE_0 <= 15))
      CHAN_BOND_SEQ_1_ENABLE_0_BINARY <= CHAN_BOND_SEQ_1_ENABLE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_ENABLE_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CHAN_BOND_SEQ_1_ENABLE_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_1_ENABLE_1 >= 0) && (CHAN_BOND_SEQ_1_ENABLE_1 <= 15))
      CHAN_BOND_SEQ_1_ENABLE_1_BINARY <= CHAN_BOND_SEQ_1_ENABLE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_1_ENABLE_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CHAN_BOND_SEQ_1_ENABLE_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_1_0 >= 0) && (CHAN_BOND_SEQ_2_1_0 <= 1023))
      CHAN_BOND_SEQ_2_1_0_BINARY <= CHAN_BOND_SEQ_2_1_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_1_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_1_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_1_1 >= 0) && (CHAN_BOND_SEQ_2_1_1 <= 1023))
      CHAN_BOND_SEQ_2_1_1_BINARY <= CHAN_BOND_SEQ_2_1_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_1_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_1_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_2_0 >= 0) && (CHAN_BOND_SEQ_2_2_0 <= 1023))
      CHAN_BOND_SEQ_2_2_0_BINARY <= CHAN_BOND_SEQ_2_2_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_2_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_2_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_2_1 >= 0) && (CHAN_BOND_SEQ_2_2_1 <= 1023))
      CHAN_BOND_SEQ_2_2_1_BINARY <= CHAN_BOND_SEQ_2_2_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_2_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_2_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_3_0 >= 0) && (CHAN_BOND_SEQ_2_3_0 <= 1023))
      CHAN_BOND_SEQ_2_3_0_BINARY <= CHAN_BOND_SEQ_2_3_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_3_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_3_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_3_1 >= 0) && (CHAN_BOND_SEQ_2_3_1 <= 1023))
      CHAN_BOND_SEQ_2_3_1_BINARY <= CHAN_BOND_SEQ_2_3_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_3_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_3_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_4_0 >= 0) && (CHAN_BOND_SEQ_2_4_0 <= 1023))
      CHAN_BOND_SEQ_2_4_0_BINARY <= CHAN_BOND_SEQ_2_4_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_4_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_4_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_4_1 >= 0) && (CHAN_BOND_SEQ_2_4_1 <= 1023))
      CHAN_BOND_SEQ_2_4_1_BINARY <= CHAN_BOND_SEQ_2_4_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_4_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CHAN_BOND_SEQ_2_4_1);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_ENABLE_0 >= 0) && (CHAN_BOND_SEQ_2_ENABLE_0 <= 15))
      CHAN_BOND_SEQ_2_ENABLE_0_BINARY <= CHAN_BOND_SEQ_2_ENABLE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_ENABLE_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CHAN_BOND_SEQ_2_ENABLE_0);
      $finish;
    end

    if ((CHAN_BOND_SEQ_2_ENABLE_1 >= 0) && (CHAN_BOND_SEQ_2_ENABLE_1 <= 15))
      CHAN_BOND_SEQ_2_ENABLE_1_BINARY <= CHAN_BOND_SEQ_2_ENABLE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CHAN_BOND_SEQ_2_ENABLE_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CHAN_BOND_SEQ_2_ENABLE_1);
      $finish;
    end

    if ((CLK_COR_MAX_LAT_0 >= 3) && (CLK_COR_MAX_LAT_0 <= 48))
      CLK_COR_MAX_LAT_0_BINARY <= CLK_COR_MAX_LAT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_MAX_LAT_0 on %s instance %m is set to %d.  Legal values for this attribute are  3 to 48.", MODULE_NAME, CLK_COR_MAX_LAT_0);
      $finish;
    end

    if ((CLK_COR_MAX_LAT_1 >= 3) && (CLK_COR_MAX_LAT_1 <= 48))
      CLK_COR_MAX_LAT_1_BINARY <= CLK_COR_MAX_LAT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_MAX_LAT_1 on %s instance %m is set to %d.  Legal values for this attribute are  3 to 48.", MODULE_NAME, CLK_COR_MAX_LAT_1);
      $finish;
    end

    if (CLK_COR_MIN_LAT_0 > CLK_COR_MAX_LAT_0) begin
	   $display("DRC Error :  The value of CLK_COR_MIN_LAT_0 is set to %d. This value must be less than or equal to the value of CLK_COR_MAX_LAT_0 %d for instance %m of %s.", MODULE_NAME,CLK_COR_MIN_LAT_0, CLK_COR_MAX_LAT_0);
	   $finish;
    end

    if (CLK_COR_MIN_LAT_1 > CLK_COR_MAX_LAT_1) begin
	   $display("DRC Error :  The value of CLK_COR_MIN_LAT_1 is set to %d. This value must be less than or equal to the value of CLK_COR_MAX_LAT_1 %d for instance %m of %s.", MODULE_NAME,CLK_COR_MIN_LAT_1, CLK_COR_MAX_LAT_1);
	   $finish;
    end

    if ((CLK_COR_MIN_LAT_0 >= 3) && (CLK_COR_MIN_LAT_0 <= 48))
      CLK_COR_MIN_LAT_0_BINARY <= CLK_COR_MIN_LAT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_MIN_LAT_0 on %s instance %m is set to %d.  Legal values for this attribute are  3 to 48.", MODULE_NAME, CLK_COR_MIN_LAT_0);
      $finish;
    end

    if ((CLK_COR_MIN_LAT_1 >= 3) && (CLK_COR_MIN_LAT_1 <= 48))
      CLK_COR_MIN_LAT_1_BINARY <= CLK_COR_MIN_LAT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_MIN_LAT_1 on %s instance %m is set to %d.  Legal values for this attribute are  3 to 48.", MODULE_NAME, CLK_COR_MIN_LAT_1);
      $finish;
    end

    if ((CLK_COR_REPEAT_WAIT_0 >= 0) && (CLK_COR_REPEAT_WAIT_0 <= 31))
      CLK_COR_REPEAT_WAIT_0_BINARY <= CLK_COR_REPEAT_WAIT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_REPEAT_WAIT_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 31.", MODULE_NAME, CLK_COR_REPEAT_WAIT_0);
      $finish;
    end

    if ((CLK_COR_REPEAT_WAIT_1 >= 0) && (CLK_COR_REPEAT_WAIT_1 <= 31))
      CLK_COR_REPEAT_WAIT_1_BINARY <= CLK_COR_REPEAT_WAIT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_REPEAT_WAIT_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 31.", MODULE_NAME, CLK_COR_REPEAT_WAIT_1);
      $finish;
    end

    if ((CLK_COR_SEQ_1_1_0 >= 0) && (CLK_COR_SEQ_1_1_0 <= 1023))
      CLK_COR_SEQ_1_1_0_BINARY <= CLK_COR_SEQ_1_1_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_1_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_1_0);
      $finish;
    end

    if ((CLK_COR_SEQ_1_1_1 >= 0) && (CLK_COR_SEQ_1_1_1 <= 1023))
      CLK_COR_SEQ_1_1_1_BINARY <= CLK_COR_SEQ_1_1_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_1_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_1_1);
      $finish;
    end

    if ((CLK_COR_SEQ_1_2_0 >= 0) && (CLK_COR_SEQ_1_2_0 <= 1023))
      CLK_COR_SEQ_1_2_0_BINARY <= CLK_COR_SEQ_1_2_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_2_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_2_0);
      $finish;
    end

    if ((CLK_COR_SEQ_1_2_1 >= 0) && (CLK_COR_SEQ_1_2_1 <= 1023))
      CLK_COR_SEQ_1_2_1_BINARY <= CLK_COR_SEQ_1_2_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_2_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_2_1);
      $finish;
    end

    if ((CLK_COR_SEQ_1_3_0 >= 0) && (CLK_COR_SEQ_1_3_0 <= 1023))
      CLK_COR_SEQ_1_3_0_BINARY <= CLK_COR_SEQ_1_3_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_3_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_3_0);
      $finish;
    end

    if ((CLK_COR_SEQ_1_3_1 >= 0) && (CLK_COR_SEQ_1_3_1 <= 1023))
      CLK_COR_SEQ_1_3_1_BINARY <= CLK_COR_SEQ_1_3_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_3_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_3_1);
      $finish;
    end

    if ((CLK_COR_SEQ_1_4_0 >= 0) && (CLK_COR_SEQ_1_4_0 <= 1023))
      CLK_COR_SEQ_1_4_0_BINARY <= CLK_COR_SEQ_1_4_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_4_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_4_0);
      $finish;
    end

    if ((CLK_COR_SEQ_1_4_1 >= 0) && (CLK_COR_SEQ_1_4_1 <= 1023))
      CLK_COR_SEQ_1_4_1_BINARY <= CLK_COR_SEQ_1_4_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_4_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_1_4_1);
      $finish;
    end

    if ((CLK_COR_SEQ_1_ENABLE_0 >= 0) && (CLK_COR_SEQ_1_ENABLE_0 <= 15))
      CLK_COR_SEQ_1_ENABLE_0_BINARY <= CLK_COR_SEQ_1_ENABLE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_ENABLE_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CLK_COR_SEQ_1_ENABLE_0);
      $finish;
    end

    if ((CLK_COR_SEQ_1_ENABLE_1 >= 0) && (CLK_COR_SEQ_1_ENABLE_1 <= 15))
      CLK_COR_SEQ_1_ENABLE_1_BINARY <= CLK_COR_SEQ_1_ENABLE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_1_ENABLE_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CLK_COR_SEQ_1_ENABLE_1);
      $finish;
    end

    if ((CLK_COR_SEQ_2_1_0 >= 0) && (CLK_COR_SEQ_2_1_0 <= 1023))
      CLK_COR_SEQ_2_1_0_BINARY <= CLK_COR_SEQ_2_1_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_1_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_1_0);
      $finish;
    end

    if ((CLK_COR_SEQ_2_1_1 >= 0) && (CLK_COR_SEQ_2_1_1 <= 1023))
      CLK_COR_SEQ_2_1_1_BINARY <= CLK_COR_SEQ_2_1_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_1_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_1_1);
      $finish;
    end

    if ((CLK_COR_SEQ_2_2_0 >= 0) && (CLK_COR_SEQ_2_2_0 <= 1023))
      CLK_COR_SEQ_2_2_0_BINARY <= CLK_COR_SEQ_2_2_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_2_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_2_0);
      $finish;
    end

    if ((CLK_COR_SEQ_2_2_1 >= 0) && (CLK_COR_SEQ_2_2_1 <= 1023))
      CLK_COR_SEQ_2_2_1_BINARY <= CLK_COR_SEQ_2_2_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_2_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_2_1);
      $finish;
    end

    if ((CLK_COR_SEQ_2_3_0 >= 0) && (CLK_COR_SEQ_2_3_0 <= 1023))
      CLK_COR_SEQ_2_3_0_BINARY <= CLK_COR_SEQ_2_3_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_3_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_3_0);
      $finish;
    end

    if ((CLK_COR_SEQ_2_3_1 >= 0) && (CLK_COR_SEQ_2_3_1 <= 1023))
      CLK_COR_SEQ_2_3_1_BINARY <= CLK_COR_SEQ_2_3_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_3_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_3_1);
      $finish;
    end

    if ((CLK_COR_SEQ_2_4_0 >= 0) && (CLK_COR_SEQ_2_4_0 <= 1023))
      CLK_COR_SEQ_2_4_0_BINARY <= CLK_COR_SEQ_2_4_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_4_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_4_0);
      $finish;
    end

    if ((CLK_COR_SEQ_2_4_1 >= 0) && (CLK_COR_SEQ_2_4_1 <= 1023))
      CLK_COR_SEQ_2_4_1_BINARY <= CLK_COR_SEQ_2_4_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_4_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, CLK_COR_SEQ_2_4_1);
      $finish;
    end

    if ((CLK_COR_SEQ_2_ENABLE_0 >= 0) && (CLK_COR_SEQ_2_ENABLE_0 <= 15))
      CLK_COR_SEQ_2_ENABLE_0_BINARY <= CLK_COR_SEQ_2_ENABLE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_ENABLE_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CLK_COR_SEQ_2_ENABLE_0);
      $finish;
    end

    if ((CLK_COR_SEQ_2_ENABLE_1 >= 0) && (CLK_COR_SEQ_2_ENABLE_1 <= 15))
      CLK_COR_SEQ_2_ENABLE_1_BINARY <= CLK_COR_SEQ_2_ENABLE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CLK_COR_SEQ_2_ENABLE_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, CLK_COR_SEQ_2_ENABLE_1);
      $finish;
    end

    if ((CM_TRIM_0 >= 0) && (CM_TRIM_0 <= 3))
      CM_TRIM_0_BINARY <= CM_TRIM_0;
    else begin
      $display("Attribute Syntax Error : The Attribute CM_TRIM_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 3.", MODULE_NAME, CM_TRIM_0);
      $finish;
    end

    if ((CM_TRIM_1 >= 0) && (CM_TRIM_1 <= 3))
      CM_TRIM_1_BINARY <= CM_TRIM_1;
    else begin
      $display("Attribute Syntax Error : The Attribute CM_TRIM_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 3.", MODULE_NAME, CM_TRIM_1);
      $finish;
    end

    if ((COMMA_10B_ENABLE_0 >= 0) && (COMMA_10B_ENABLE_0 <= 1023))
      COMMA_10B_ENABLE_0_BINARY <= COMMA_10B_ENABLE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute COMMA_10B_ENABLE_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, COMMA_10B_ENABLE_0);
      $finish;
    end

    if ((COMMA_10B_ENABLE_1 >= 0) && (COMMA_10B_ENABLE_1 <= 1023))
      COMMA_10B_ENABLE_1_BINARY <= COMMA_10B_ENABLE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute COMMA_10B_ENABLE_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, COMMA_10B_ENABLE_1);
      $finish;
    end

    if ((COM_BURST_VAL_0 >= 0) && (COM_BURST_VAL_0 <= 15))
      COM_BURST_VAL_0_BINARY <= COM_BURST_VAL_0;
    else begin
      $display("Attribute Syntax Error : The Attribute COM_BURST_VAL_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, COM_BURST_VAL_0);
      $finish;
    end

    if ((COM_BURST_VAL_1 >= 0) && (COM_BURST_VAL_1 <= 15))
      COM_BURST_VAL_1_BINARY <= COM_BURST_VAL_1;
    else begin
      $display("Attribute Syntax Error : The Attribute COM_BURST_VAL_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, COM_BURST_VAL_1);
      $finish;
    end

    if ((MCOMMA_10B_VALUE_0 >= 0) && (MCOMMA_10B_VALUE_0 <= 1023))
      MCOMMA_10B_VALUE_0_BINARY <= MCOMMA_10B_VALUE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute MCOMMA_10B_VALUE_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, MCOMMA_10B_VALUE_0);
      $finish;
    end

    if ((MCOMMA_10B_VALUE_1 >= 0) && (MCOMMA_10B_VALUE_1 <= 1023))
      MCOMMA_10B_VALUE_1_BINARY <= MCOMMA_10B_VALUE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute MCOMMA_10B_VALUE_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, MCOMMA_10B_VALUE_1);
      $finish;
    end

    if ((OOBDETECT_THRESHOLD_0 >= 0) && (OOBDETECT_THRESHOLD_0 <= 7))
      OOBDETECT_THRESHOLD_0_BINARY <= OOBDETECT_THRESHOLD_0;
    else begin
      $display("Attribute Syntax Error : The Attribute OOBDETECT_THRESHOLD_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, OOBDETECT_THRESHOLD_0);
      $finish;
    end

    if ((OOBDETECT_THRESHOLD_1 >= 0) && (OOBDETECT_THRESHOLD_1 <= 7))
      OOBDETECT_THRESHOLD_1_BINARY <= OOBDETECT_THRESHOLD_1;
    else begin
      $display("Attribute Syntax Error : The Attribute OOBDETECT_THRESHOLD_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, OOBDETECT_THRESHOLD_1);
      $finish;
    end

    if ((PCOMMA_10B_VALUE_0 >= 0) && (PCOMMA_10B_VALUE_0 <= 1023))
      PCOMMA_10B_VALUE_0_BINARY <= PCOMMA_10B_VALUE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute PCOMMA_10B_VALUE_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, PCOMMA_10B_VALUE_0);
      $finish;
    end

    if ((PCOMMA_10B_VALUE_1 >= 0) && (PCOMMA_10B_VALUE_1 <= 1023))
      PCOMMA_10B_VALUE_1_BINARY <= PCOMMA_10B_VALUE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute PCOMMA_10B_VALUE_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1023.", MODULE_NAME, PCOMMA_10B_VALUE_1);
      $finish;
    end

    if ((PLLLKDET_CFG_0 >= 0) && (PLLLKDET_CFG_0 <= 7))
      PLLLKDET_CFG_0_BINARY <= PLLLKDET_CFG_0;
    else begin
      $display("Attribute Syntax Error : The Attribute PLLLKDET_CFG_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, PLLLKDET_CFG_0);
      $finish;
    end

    if ((PLLLKDET_CFG_1 >= 0) && (PLLLKDET_CFG_1 <= 7))
      PLLLKDET_CFG_1_BINARY <= PLLLKDET_CFG_1;
    else begin
      $display("Attribute Syntax Error : The Attribute PLLLKDET_CFG_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, PLLLKDET_CFG_1);
      $finish;
    end

    if ((RXEQ_CFG_0 >= 0) && (RXEQ_CFG_0 <= 255))
      RXEQ_CFG_0_BINARY <= RXEQ_CFG_0;
    else begin
      $display("Attribute Syntax Error : The Attribute RXEQ_CFG_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 255.", MODULE_NAME, RXEQ_CFG_0);
      $finish;
    end

    if ((RXEQ_CFG_1 >= 0) && (RXEQ_CFG_1 <= 255))
      RXEQ_CFG_1_BINARY <= RXEQ_CFG_1;
    else begin
      $display("Attribute Syntax Error : The Attribute RXEQ_CFG_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 255.", MODULE_NAME, RXEQ_CFG_1);
      $finish;
    end

    if ((RXPRBSERR_LOOPBACK_0 >= 0) && (RXPRBSERR_LOOPBACK_0 <= 1))
      RXPRBSERR_LOOPBACK_0_BINARY <= RXPRBSERR_LOOPBACK_0;
    else begin
      $display("Attribute Syntax Error : The Attribute RXPRBSERR_LOOPBACK_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1.", MODULE_NAME, RXPRBSERR_LOOPBACK_0);
      $finish;
    end

    if ((RXPRBSERR_LOOPBACK_1 >= 0) && (RXPRBSERR_LOOPBACK_1 <= 1))
      RXPRBSERR_LOOPBACK_1_BINARY <= RXPRBSERR_LOOPBACK_1;
    else begin
      $display("Attribute Syntax Error : The Attribute RXPRBSERR_LOOPBACK_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 1.", MODULE_NAME, RXPRBSERR_LOOPBACK_1);
      $finish;
    end

    if ((RX_IDLE_HI_CNT_0 >= 0) && (RX_IDLE_HI_CNT_0 <= 15))
      RX_IDLE_HI_CNT_0_BINARY <= RX_IDLE_HI_CNT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute RX_IDLE_HI_CNT_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, RX_IDLE_HI_CNT_0);
      $finish;
    end

    if ((RX_IDLE_HI_CNT_1 >= 0) && (RX_IDLE_HI_CNT_1 <= 15))
      RX_IDLE_HI_CNT_1_BINARY <= RX_IDLE_HI_CNT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute RX_IDLE_HI_CNT_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, RX_IDLE_HI_CNT_1);
      $finish;
    end

    if ((RX_IDLE_LO_CNT_0 >= 0) && (RX_IDLE_LO_CNT_0 <= 15))
      RX_IDLE_LO_CNT_0_BINARY <= RX_IDLE_LO_CNT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute RX_IDLE_LO_CNT_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, RX_IDLE_LO_CNT_0);
      $finish;
    end

    if ((RX_IDLE_LO_CNT_1 >= 0) && (RX_IDLE_LO_CNT_1 <= 15))
      RX_IDLE_LO_CNT_1_BINARY <= RX_IDLE_LO_CNT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute RX_IDLE_LO_CNT_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 15.", MODULE_NAME, RX_IDLE_LO_CNT_1);
      $finish;
    end

    if ((SATA_BURST_VAL_0 >= 0) && (SATA_BURST_VAL_0 <= 7))
      SATA_BURST_VAL_0_BINARY <= SATA_BURST_VAL_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_BURST_VAL_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, SATA_BURST_VAL_0);
      $finish;
    end

    if ((SATA_BURST_VAL_1 >= 0) && (SATA_BURST_VAL_1 <= 7))
      SATA_BURST_VAL_1_BINARY <= SATA_BURST_VAL_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_BURST_VAL_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, SATA_BURST_VAL_1);
      $finish;
    end

    if ((SATA_IDLE_VAL_0 >= 0) && (SATA_IDLE_VAL_0 <= 7))
      SATA_IDLE_VAL_0_BINARY <= SATA_IDLE_VAL_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_IDLE_VAL_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, SATA_IDLE_VAL_0);
      $finish;
    end

    if ((SATA_IDLE_VAL_1 >= 0) && (SATA_IDLE_VAL_1 <= 7))
      SATA_IDLE_VAL_1_BINARY <= SATA_IDLE_VAL_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_IDLE_VAL_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, SATA_IDLE_VAL_1);
      $finish;
    end

    if ((SATA_MAX_BURST_0 >= 1) && (SATA_MAX_BURST_0 <= 61))
      SATA_MAX_BURST_0_BINARY <= SATA_MAX_BURST_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MAX_BURST_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MAX_BURST_0);
      $finish;
    end

    if ((SATA_MAX_BURST_1 >= 1) && (SATA_MAX_BURST_1 <= 61))
      SATA_MAX_BURST_1_BINARY <= SATA_MAX_BURST_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MAX_BURST_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MAX_BURST_1);
      $finish;
    end

    if ((SATA_MAX_INIT_0 >= 1) && (SATA_MAX_INIT_0 <= 61))
      SATA_MAX_INIT_0_BINARY <= SATA_MAX_INIT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MAX_INIT_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MAX_INIT_0);
      $finish;
    end

    if ((SATA_MAX_INIT_1 >= 1) && (SATA_MAX_INIT_1 <= 61))
      SATA_MAX_INIT_1_BINARY <= SATA_MAX_INIT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MAX_INIT_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MAX_INIT_1);
      $finish;
    end

    if ((SATA_MAX_WAKE_0 >= 1) && (SATA_MAX_WAKE_0 <= 61))
      SATA_MAX_WAKE_0_BINARY <= SATA_MAX_WAKE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MAX_WAKE_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MAX_WAKE_0);
      $finish;
    end

    if ((SATA_MAX_WAKE_1 >= 1) && (SATA_MAX_WAKE_1 <= 61))
      SATA_MAX_WAKE_1_BINARY <= SATA_MAX_WAKE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MAX_WAKE_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MAX_WAKE_1);
      $finish;
    end

    if ((SATA_MIN_BURST_0 >= 1) && (SATA_MIN_BURST_0 <= 61))
      SATA_MIN_BURST_0_BINARY <= SATA_MIN_BURST_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MIN_BURST_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MIN_BURST_0);
      $finish;
    end

    if ((SATA_MIN_BURST_1 >= 1) && (SATA_MIN_BURST_1 <= 61))
      SATA_MIN_BURST_1_BINARY <= SATA_MIN_BURST_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MIN_BURST_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MIN_BURST_1);
      $finish;
    end

    if ((SATA_MIN_INIT_0 >= 1) && (SATA_MIN_INIT_0 <= 61))
      SATA_MIN_INIT_0_BINARY <= SATA_MIN_INIT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MIN_INIT_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MIN_INIT_0);
      $finish;
    end

    if ((SATA_MIN_INIT_1 >= 1) && (SATA_MIN_INIT_1 <= 61))
      SATA_MIN_INIT_1_BINARY <= SATA_MIN_INIT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MIN_INIT_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MIN_INIT_1);
      $finish;
    end

    if ((SATA_MIN_WAKE_0 >= 1) && (SATA_MIN_WAKE_0 <= 61))
      SATA_MIN_WAKE_0_BINARY <= SATA_MIN_WAKE_0;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MIN_WAKE_0 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MIN_WAKE_0);
      $finish;
    end

    if ((SATA_MIN_WAKE_1 >= 1) && (SATA_MIN_WAKE_1 <= 61))
      SATA_MIN_WAKE_1_BINARY <= SATA_MIN_WAKE_1;
    else begin
      $display("Attribute Syntax Error : The Attribute SATA_MIN_WAKE_1 on %s instance %m is set to %d.  Legal values for this attribute are  1 to 61.", MODULE_NAME, SATA_MIN_WAKE_1);
      $finish;
    end

    if (SATA_MIN_BURST_0 > SATA_MAX_BURST_0) begin
      $display("DRC Error : The value of SATA_MIN_BURST_0 is set to %d. This value must be less than or equal to the value of SATA_MAX_BURST_0 %d for instance %m of %s.", MODULE_NAME,SATA_MIN_BURST_0, SATA_MAX_BURST_0);
      $finish;
    end

    if (SATA_MIN_BURST_1 > SATA_MAX_BURST_1) begin
      $display("DRC Error : The value of SATA_MIN_BURST_1 is set to %d. This value must be less than or equal to the value of SATA_MAX_BURST_1 %d for instance %m of %s.", MODULE_NAME,SATA_MIN_BURST_1, SATA_MAX_BURST_1);
      $finish;
    end

    if (SATA_MIN_INIT_0 > SATA_MAX_INIT_0) begin
      $display("DRC Error : The value of SATA_MIN_INIT_0 is set to %d. This value must be less than or equal to the value of SATA_MAX_INIT_0 %d for instance %m of %s.", MODULE_NAME,SATA_MIN_INIT_0, SATA_MAX_INIT_0);
      $finish;
    end

    if (SATA_MIN_INIT_1 > SATA_MAX_INIT_1) begin
      $display("DRC Error : The value of SATA_MIN_INIT_1 is set to %d. This value must be less than or equal to the value of SATA_MAX_INIT_1 %d for instance %m of %s.", MODULE_NAME,SATA_MIN_INIT_1, SATA_MAX_INIT_1);
      $finish;
    end

    if (SATA_MIN_WAKE_0 > SATA_MAX_WAKE_0) begin
      $display("DRC Error : The value of SATA_MIN_WAKE_0 is set to %d. This value must be less than or equal to the value of SATA_MAX_WAKE_0 %d for instance %m of %s.", MODULE_NAME,SATA_MIN_WAKE_0, SATA_MAX_WAKE_0);
      $finish;
    end

    if (SATA_MIN_WAKE_1 > SATA_MAX_WAKE_1) begin
      $display("DRC Error : The value of SATA_MIN_WAKE_1 is set to %d. This value must be less than or equal to the value of SATA_MAX_WAKE_1 %d for instance %m of %s.", MODULE_NAME,SATA_MIN_WAKE_1, SATA_MAX_WAKE_1);
      $finish;
    end

    if ((SIM_REFCLK0_SOURCE >= 0) && (SIM_REFCLK0_SOURCE <= 7))
      SIM_REFCLK0_SOURCE_BINARY <= SIM_REFCLK0_SOURCE;
    else begin
      $display("Attribute Syntax Error : The Attribute SIM_REFCLK0_SOURCE on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, SIM_REFCLK0_SOURCE);
      $finish;
    end

    if ((SIM_REFCLK1_SOURCE >= 0) && (SIM_REFCLK1_SOURCE <= 7))
      SIM_REFCLK1_SOURCE_BINARY <= SIM_REFCLK1_SOURCE;
    else begin
      $display("Attribute Syntax Error : The Attribute SIM_REFCLK1_SOURCE on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, SIM_REFCLK1_SOURCE);
      $finish;
    end

    if ((TERMINATION_CTRL_0 >= 0) && (TERMINATION_CTRL_0 <= 31))
      TERMINATION_CTRL_0_BINARY <= TERMINATION_CTRL_0;
    else begin
      $display("Attribute Syntax Error : The Attribute TERMINATION_CTRL_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 31.", MODULE_NAME, TERMINATION_CTRL_0);
      $finish;
    end

    if ((TERMINATION_CTRL_1 >= 0) && (TERMINATION_CTRL_1 <= 31))
      TERMINATION_CTRL_1_BINARY <= TERMINATION_CTRL_1;
    else begin
      $display("Attribute Syntax Error : The Attribute TERMINATION_CTRL_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 31.", MODULE_NAME, TERMINATION_CTRL_1);
      $finish;
    end

    if ((TXRX_INVERT_0 >= 0) && (TXRX_INVERT_0 <= 7))
      TXRX_INVERT_0_BINARY <= TXRX_INVERT_0;
    else begin
      $display("Attribute Syntax Error : The Attribute TXRX_INVERT_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, TXRX_INVERT_0);
      $finish;
    end

    if ((TXRX_INVERT_1 >= 0) && (TXRX_INVERT_1 <= 7))
      TXRX_INVERT_1_BINARY <= TXRX_INVERT_1;
    else begin
      $display("Attribute Syntax Error : The Attribute TXRX_INVERT_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, TXRX_INVERT_1);
      $finish;
    end

    if ((TX_IDLE_DELAY_0 >= 0) && (TX_IDLE_DELAY_0 <= 7))
      TX_IDLE_DELAY_0_BINARY <= TX_IDLE_DELAY_0;
    else begin
      $display("Attribute Syntax Error : The Attribute TX_IDLE_DELAY_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, TX_IDLE_DELAY_0);
      $finish;
    end

    if ((TX_IDLE_DELAY_1 >= 0) && (TX_IDLE_DELAY_1 <= 7))
      TX_IDLE_DELAY_1_BINARY <= TX_IDLE_DELAY_1;
    else begin
      $display("Attribute Syntax Error : The Attribute TX_IDLE_DELAY_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 7.", MODULE_NAME, TX_IDLE_DELAY_1);
      $finish;
    end

    if ((TX_TDCC_CFG_0 >= 0) && (TX_TDCC_CFG_0 <= 3))
      TX_TDCC_CFG_0_BINARY <= TX_TDCC_CFG_0;
    else begin
      $display("Attribute Syntax Error : The Attribute TX_TDCC_CFG_0 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 3.", MODULE_NAME, TX_TDCC_CFG_0);
      $finish;
    end

    if ((TX_TDCC_CFG_1 >= 0) && (TX_TDCC_CFG_1 <= 3))
      TX_TDCC_CFG_1_BINARY <= TX_TDCC_CFG_1;
    else begin
      $display("Attribute Syntax Error : The Attribute TX_TDCC_CFG_1 on %s instance %m is set to %d.  Legal values for this attribute are  0 to 3.", MODULE_NAME, TX_TDCC_CFG_1);
      $finish;
    end

  end

//----------------------------------------------------------------------
//------------------------  Output Ports  ------------------------------
//----------------------------------------------------------------------
  buf B_DRDY (DRDY, DRDY_OUT);
  buf B_DRPDO0 (DRPDO[0], DRPDO_OUT[0]);
  buf B_DRPDO1 (DRPDO[1], DRPDO_OUT[1]);
  buf B_DRPDO10 (DRPDO[10], DRPDO_OUT[10]);
  buf B_DRPDO11 (DRPDO[11], DRPDO_OUT[11]);
  buf B_DRPDO12 (DRPDO[12], DRPDO_OUT[12]);
  buf B_DRPDO13 (DRPDO[13], DRPDO_OUT[13]);
  buf B_DRPDO14 (DRPDO[14], DRPDO_OUT[14]);
  buf B_DRPDO15 (DRPDO[15], DRPDO_OUT[15]);
  buf B_DRPDO2 (DRPDO[2], DRPDO_OUT[2]);
  buf B_DRPDO3 (DRPDO[3], DRPDO_OUT[3]);
  buf B_DRPDO4 (DRPDO[4], DRPDO_OUT[4]);
  buf B_DRPDO5 (DRPDO[5], DRPDO_OUT[5]);
  buf B_DRPDO6 (DRPDO[6], DRPDO_OUT[6]);
  buf B_DRPDO7 (DRPDO[7], DRPDO_OUT[7]);
  buf B_DRPDO8 (DRPDO[8], DRPDO_OUT[8]);
  buf B_DRPDO9 (DRPDO[9], DRPDO_OUT[9]);
  buf B_GTPCLKFBEAST0 (GTPCLKFBEAST[0], GTPCLKFBEAST_OUT[0]);
  buf B_GTPCLKFBEAST1 (GTPCLKFBEAST[1], GTPCLKFBEAST_OUT[1]);
  buf B_GTPCLKFBWEST0 (GTPCLKFBWEST[0], GTPCLKFBWEST_OUT[0]);
  buf B_GTPCLKFBWEST1 (GTPCLKFBWEST[1], GTPCLKFBWEST_OUT[1]);
  buf B_GTPCLKOUT00 (GTPCLKOUT0[0], GTPCLKOUT0_OUT[0]);
  buf B_GTPCLKOUT01 (GTPCLKOUT0[1], GTPCLKOUT0_OUT[1]);
  buf B_GTPCLKOUT10 (GTPCLKOUT1[0], GTPCLKOUT1_OUT[0]);
  buf B_GTPCLKOUT11 (GTPCLKOUT1[1], GTPCLKOUT1_OUT[1]);
  buf B_PHYSTATUS0 (PHYSTATUS0, PHYSTATUS0_OUT);
  buf B_PHYSTATUS1 (PHYSTATUS1, PHYSTATUS1_OUT);
  buf B_PLLLKDET0 (PLLLKDET0, PLLLKDET0_OUT);
  buf B_PLLLKDET1 (PLLLKDET1, PLLLKDET1_OUT);
  buf B_RCALOUTEAST0 (RCALOUTEAST[0], RCALOUTEAST_OUT[0]);
  buf B_RCALOUTEAST1 (RCALOUTEAST[1], RCALOUTEAST_OUT[1]);
  buf B_RCALOUTEAST2 (RCALOUTEAST[2], RCALOUTEAST_OUT[2]);
  buf B_RCALOUTEAST3 (RCALOUTEAST[3], RCALOUTEAST_OUT[3]);
  buf B_RCALOUTEAST4 (RCALOUTEAST[4], RCALOUTEAST_OUT[4]);
  buf B_RCALOUTWEST0 (RCALOUTWEST[0], RCALOUTWEST_OUT[0]);
  buf B_RCALOUTWEST1 (RCALOUTWEST[1], RCALOUTWEST_OUT[1]);
  buf B_RCALOUTWEST2 (RCALOUTWEST[2], RCALOUTWEST_OUT[2]);
  buf B_RCALOUTWEST3 (RCALOUTWEST[3], RCALOUTWEST_OUT[3]);
  buf B_RCALOUTWEST4 (RCALOUTWEST[4], RCALOUTWEST_OUT[4]);
  buf B_REFCLKOUT0 (REFCLKOUT0, REFCLKOUT0_OUT);
  buf B_REFCLKOUT1 (REFCLKOUT1, REFCLKOUT1_OUT);
  buf B_REFCLKPLL0 (REFCLKPLL0, REFCLKPLL0_OUT);
  buf B_REFCLKPLL1 (REFCLKPLL1, REFCLKPLL1_OUT);
  buf B_RESETDONE0 (RESETDONE0, RESETDONE0_OUT);
  buf B_RESETDONE1 (RESETDONE1, RESETDONE1_OUT);
  buf B_RXBUFSTATUS00 (RXBUFSTATUS0[0], RXBUFSTATUS0_OUT[0]);
  buf B_RXBUFSTATUS01 (RXBUFSTATUS0[1], RXBUFSTATUS0_OUT[1]);
  buf B_RXBUFSTATUS02 (RXBUFSTATUS0[2], RXBUFSTATUS0_OUT[2]);
  buf B_RXBUFSTATUS10 (RXBUFSTATUS1[0], RXBUFSTATUS1_OUT[0]);
  buf B_RXBUFSTATUS11 (RXBUFSTATUS1[1], RXBUFSTATUS1_OUT[1]);
  buf B_RXBUFSTATUS12 (RXBUFSTATUS1[2], RXBUFSTATUS1_OUT[2]);
  buf B_RXBYTEISALIGNED0 (RXBYTEISALIGNED0, RXBYTEISALIGNED0_OUT);
  buf B_RXBYTEISALIGNED1 (RXBYTEISALIGNED1, RXBYTEISALIGNED1_OUT);
  buf B_RXBYTEREALIGN0 (RXBYTEREALIGN0, RXBYTEREALIGN0_OUT);
  buf B_RXBYTEREALIGN1 (RXBYTEREALIGN1, RXBYTEREALIGN1_OUT);
  buf B_RXCHANBONDSEQ0 (RXCHANBONDSEQ0, RXCHANBONDSEQ0_OUT);
  buf B_RXCHANBONDSEQ1 (RXCHANBONDSEQ1, RXCHANBONDSEQ1_OUT);
  buf B_RXCHANISALIGNED0 (RXCHANISALIGNED0, RXCHANISALIGNED0_OUT);
  buf B_RXCHANISALIGNED1 (RXCHANISALIGNED1, RXCHANISALIGNED1_OUT);
  buf B_RXCHANREALIGN0 (RXCHANREALIGN0, RXCHANREALIGN0_OUT);
  buf B_RXCHANREALIGN1 (RXCHANREALIGN1, RXCHANREALIGN1_OUT);
  buf B_RXCHARISCOMMA00 (RXCHARISCOMMA0[0], RXCHARISCOMMA0_OUT[0]);
  buf B_RXCHARISCOMMA01 (RXCHARISCOMMA0[1], RXCHARISCOMMA0_OUT[1]);
  buf B_RXCHARISCOMMA02 (RXCHARISCOMMA0[2], RXCHARISCOMMA0_OUT[2]);
  buf B_RXCHARISCOMMA03 (RXCHARISCOMMA0[3], RXCHARISCOMMA0_OUT[3]);
  buf B_RXCHARISCOMMA10 (RXCHARISCOMMA1[0], RXCHARISCOMMA1_OUT[0]);
  buf B_RXCHARISCOMMA11 (RXCHARISCOMMA1[1], RXCHARISCOMMA1_OUT[1]);
  buf B_RXCHARISCOMMA12 (RXCHARISCOMMA1[2], RXCHARISCOMMA1_OUT[2]);
  buf B_RXCHARISCOMMA13 (RXCHARISCOMMA1[3], RXCHARISCOMMA1_OUT[3]);
  buf B_RXCHARISK00 (RXCHARISK0[0], RXCHARISK0_OUT[0]);
  buf B_RXCHARISK01 (RXCHARISK0[1], RXCHARISK0_OUT[1]);
  buf B_RXCHARISK02 (RXCHARISK0[2], RXCHARISK0_OUT[2]);
  buf B_RXCHARISK03 (RXCHARISK0[3], RXCHARISK0_OUT[3]);
  buf B_RXCHARISK10 (RXCHARISK1[0], RXCHARISK1_OUT[0]);
  buf B_RXCHARISK11 (RXCHARISK1[1], RXCHARISK1_OUT[1]);
  buf B_RXCHARISK12 (RXCHARISK1[2], RXCHARISK1_OUT[2]);
  buf B_RXCHARISK13 (RXCHARISK1[3], RXCHARISK1_OUT[3]);
  buf B_RXCHBONDO0 (RXCHBONDO[0], RXCHBONDO_OUT[0]);
  buf B_RXCHBONDO1 (RXCHBONDO[1], RXCHBONDO_OUT[1]);
  buf B_RXCHBONDO2 (RXCHBONDO[2], RXCHBONDO_OUT[2]);
  buf B_RXCLKCORCNT00 (RXCLKCORCNT0[0], RXCLKCORCNT0_OUT[0]);
  buf B_RXCLKCORCNT01 (RXCLKCORCNT0[1], RXCLKCORCNT0_OUT[1]);
  buf B_RXCLKCORCNT02 (RXCLKCORCNT0[2], RXCLKCORCNT0_OUT[2]);
  buf B_RXCLKCORCNT10 (RXCLKCORCNT1[0], RXCLKCORCNT1_OUT[0]);
  buf B_RXCLKCORCNT11 (RXCLKCORCNT1[1], RXCLKCORCNT1_OUT[1]);
  buf B_RXCLKCORCNT12 (RXCLKCORCNT1[2], RXCLKCORCNT1_OUT[2]);
  buf B_RXCOMMADET0 (RXCOMMADET0, RXCOMMADET0_OUT);
  buf B_RXCOMMADET1 (RXCOMMADET1, RXCOMMADET1_OUT);
  buf B_RXDATA00 (RXDATA0[0], RXDATA0_OUT[0]);
  buf B_RXDATA01 (RXDATA0[1], RXDATA0_OUT[1]);
  buf B_RXDATA010 (RXDATA0[10], RXDATA0_OUT[10]);
  buf B_RXDATA011 (RXDATA0[11], RXDATA0_OUT[11]);
  buf B_RXDATA012 (RXDATA0[12], RXDATA0_OUT[12]);
  buf B_RXDATA013 (RXDATA0[13], RXDATA0_OUT[13]);
  buf B_RXDATA014 (RXDATA0[14], RXDATA0_OUT[14]);
  buf B_RXDATA015 (RXDATA0[15], RXDATA0_OUT[15]);
  buf B_RXDATA016 (RXDATA0[16], RXDATA0_OUT[16]);
  buf B_RXDATA017 (RXDATA0[17], RXDATA0_OUT[17]);
  buf B_RXDATA018 (RXDATA0[18], RXDATA0_OUT[18]);
  buf B_RXDATA019 (RXDATA0[19], RXDATA0_OUT[19]);
  buf B_RXDATA02 (RXDATA0[2], RXDATA0_OUT[2]);
  buf B_RXDATA020 (RXDATA0[20], RXDATA0_OUT[20]);
  buf B_RXDATA021 (RXDATA0[21], RXDATA0_OUT[21]);
  buf B_RXDATA022 (RXDATA0[22], RXDATA0_OUT[22]);
  buf B_RXDATA023 (RXDATA0[23], RXDATA0_OUT[23]);
  buf B_RXDATA024 (RXDATA0[24], RXDATA0_OUT[24]);
  buf B_RXDATA025 (RXDATA0[25], RXDATA0_OUT[25]);
  buf B_RXDATA026 (RXDATA0[26], RXDATA0_OUT[26]);
  buf B_RXDATA027 (RXDATA0[27], RXDATA0_OUT[27]);
  buf B_RXDATA028 (RXDATA0[28], RXDATA0_OUT[28]);
  buf B_RXDATA029 (RXDATA0[29], RXDATA0_OUT[29]);
  buf B_RXDATA03 (RXDATA0[3], RXDATA0_OUT[3]);
  buf B_RXDATA030 (RXDATA0[30], RXDATA0_OUT[30]);
  buf B_RXDATA031 (RXDATA0[31], RXDATA0_OUT[31]);
  buf B_RXDATA04 (RXDATA0[4], RXDATA0_OUT[4]);
  buf B_RXDATA05 (RXDATA0[5], RXDATA0_OUT[5]);
  buf B_RXDATA06 (RXDATA0[6], RXDATA0_OUT[6]);
  buf B_RXDATA07 (RXDATA0[7], RXDATA0_OUT[7]);
  buf B_RXDATA08 (RXDATA0[8], RXDATA0_OUT[8]);
  buf B_RXDATA09 (RXDATA0[9], RXDATA0_OUT[9]);
  buf B_RXDATA10 (RXDATA1[0], RXDATA1_OUT[0]);
  buf B_RXDATA11 (RXDATA1[1], RXDATA1_OUT[1]);
  buf B_RXDATA110 (RXDATA1[10], RXDATA1_OUT[10]);
  buf B_RXDATA111 (RXDATA1[11], RXDATA1_OUT[11]);
  buf B_RXDATA112 (RXDATA1[12], RXDATA1_OUT[12]);
  buf B_RXDATA113 (RXDATA1[13], RXDATA1_OUT[13]);
  buf B_RXDATA114 (RXDATA1[14], RXDATA1_OUT[14]);
  buf B_RXDATA115 (RXDATA1[15], RXDATA1_OUT[15]);
  buf B_RXDATA116 (RXDATA1[16], RXDATA1_OUT[16]);
  buf B_RXDATA117 (RXDATA1[17], RXDATA1_OUT[17]);
  buf B_RXDATA118 (RXDATA1[18], RXDATA1_OUT[18]);
  buf B_RXDATA119 (RXDATA1[19], RXDATA1_OUT[19]);
  buf B_RXDATA12 (RXDATA1[2], RXDATA1_OUT[2]);
  buf B_RXDATA120 (RXDATA1[20], RXDATA1_OUT[20]);
  buf B_RXDATA121 (RXDATA1[21], RXDATA1_OUT[21]);
  buf B_RXDATA122 (RXDATA1[22], RXDATA1_OUT[22]);
  buf B_RXDATA123 (RXDATA1[23], RXDATA1_OUT[23]);
  buf B_RXDATA124 (RXDATA1[24], RXDATA1_OUT[24]);
  buf B_RXDATA125 (RXDATA1[25], RXDATA1_OUT[25]);
  buf B_RXDATA126 (RXDATA1[26], RXDATA1_OUT[26]);
  buf B_RXDATA127 (RXDATA1[27], RXDATA1_OUT[27]);
  buf B_RXDATA128 (RXDATA1[28], RXDATA1_OUT[28]);
  buf B_RXDATA129 (RXDATA1[29], RXDATA1_OUT[29]);
  buf B_RXDATA13 (RXDATA1[3], RXDATA1_OUT[3]);
  buf B_RXDATA130 (RXDATA1[30], RXDATA1_OUT[30]);
  buf B_RXDATA131 (RXDATA1[31], RXDATA1_OUT[31]);
  buf B_RXDATA14 (RXDATA1[4], RXDATA1_OUT[4]);
  buf B_RXDATA15 (RXDATA1[5], RXDATA1_OUT[5]);
  buf B_RXDATA16 (RXDATA1[6], RXDATA1_OUT[6]);
  buf B_RXDATA17 (RXDATA1[7], RXDATA1_OUT[7]);
  buf B_RXDATA18 (RXDATA1[8], RXDATA1_OUT[8]);
  buf B_RXDATA19 (RXDATA1[9], RXDATA1_OUT[9]);
  buf B_RXDISPERR00 (RXDISPERR0[0], RXDISPERR0_OUT[0]);
  buf B_RXDISPERR01 (RXDISPERR0[1], RXDISPERR0_OUT[1]);
  buf B_RXDISPERR02 (RXDISPERR0[2], RXDISPERR0_OUT[2]);
  buf B_RXDISPERR03 (RXDISPERR0[3], RXDISPERR0_OUT[3]);
  buf B_RXDISPERR10 (RXDISPERR1[0], RXDISPERR1_OUT[0]);
  buf B_RXDISPERR11 (RXDISPERR1[1], RXDISPERR1_OUT[1]);
  buf B_RXDISPERR12 (RXDISPERR1[2], RXDISPERR1_OUT[2]);
  buf B_RXDISPERR13 (RXDISPERR1[3], RXDISPERR1_OUT[3]);
  buf B_RXELECIDLE0 (RXELECIDLE0, RXELECIDLE0_OUT);
  buf B_RXELECIDLE1 (RXELECIDLE1, RXELECIDLE1_OUT);
  buf B_RXLOSSOFSYNC00 (RXLOSSOFSYNC0[0], RXLOSSOFSYNC0_OUT[0]);
  buf B_RXLOSSOFSYNC01 (RXLOSSOFSYNC0[1], RXLOSSOFSYNC0_OUT[1]);
  buf B_RXLOSSOFSYNC10 (RXLOSSOFSYNC1[0], RXLOSSOFSYNC1_OUT[0]);
  buf B_RXLOSSOFSYNC11 (RXLOSSOFSYNC1[1], RXLOSSOFSYNC1_OUT[1]);
  buf B_RXNOTINTABLE00 (RXNOTINTABLE0[0], RXNOTINTABLE0_OUT[0]);
  buf B_RXNOTINTABLE01 (RXNOTINTABLE0[1], RXNOTINTABLE0_OUT[1]);
  buf B_RXNOTINTABLE02 (RXNOTINTABLE0[2], RXNOTINTABLE0_OUT[2]);
  buf B_RXNOTINTABLE03 (RXNOTINTABLE0[3], RXNOTINTABLE0_OUT[3]);
  buf B_RXNOTINTABLE10 (RXNOTINTABLE1[0], RXNOTINTABLE1_OUT[0]);
  buf B_RXNOTINTABLE11 (RXNOTINTABLE1[1], RXNOTINTABLE1_OUT[1]);
  buf B_RXNOTINTABLE12 (RXNOTINTABLE1[2], RXNOTINTABLE1_OUT[2]);
  buf B_RXNOTINTABLE13 (RXNOTINTABLE1[3], RXNOTINTABLE1_OUT[3]);
  buf B_RXPRBSERR0 (RXPRBSERR0, RXPRBSERR0_OUT);
  buf B_RXPRBSERR1 (RXPRBSERR1, RXPRBSERR1_OUT);
  buf B_RXRECCLK0 (RXRECCLK0, RXRECCLK0_OUT);
  buf B_RXRECCLK1 (RXRECCLK1, RXRECCLK1_OUT);
  buf B_RXRUNDISP00 (RXRUNDISP0[0], RXRUNDISP0_OUT[0]);
  buf B_RXRUNDISP01 (RXRUNDISP0[1], RXRUNDISP0_OUT[1]);
  buf B_RXRUNDISP02 (RXRUNDISP0[2], RXRUNDISP0_OUT[2]);
  buf B_RXRUNDISP03 (RXRUNDISP0[3], RXRUNDISP0_OUT[3]);
  buf B_RXRUNDISP10 (RXRUNDISP1[0], RXRUNDISP1_OUT[0]);
  buf B_RXRUNDISP11 (RXRUNDISP1[1], RXRUNDISP1_OUT[1]);
  buf B_RXRUNDISP12 (RXRUNDISP1[2], RXRUNDISP1_OUT[2]);
  buf B_RXRUNDISP13 (RXRUNDISP1[3], RXRUNDISP1_OUT[3]);
  buf B_RXSTATUS00 (RXSTATUS0[0], RXSTATUS0_OUT[0]);
  buf B_RXSTATUS01 (RXSTATUS0[1], RXSTATUS0_OUT[1]);
  buf B_RXSTATUS02 (RXSTATUS0[2], RXSTATUS0_OUT[2]);
  buf B_RXSTATUS10 (RXSTATUS1[0], RXSTATUS1_OUT[0]);
  buf B_RXSTATUS11 (RXSTATUS1[1], RXSTATUS1_OUT[1]);
  buf B_RXSTATUS12 (RXSTATUS1[2], RXSTATUS1_OUT[2]);
  buf B_RXVALID0 (RXVALID0, RXVALID0_OUT);
  buf B_RXVALID1 (RXVALID1, RXVALID1_OUT);
  buf B_TSTOUT00 (TSTOUT0[0], TSTOUT0_OUT[0]);
  buf B_TSTOUT01 (TSTOUT0[1], TSTOUT0_OUT[1]);
  buf B_TSTOUT02 (TSTOUT0[2], TSTOUT0_OUT[2]);
  buf B_TSTOUT03 (TSTOUT0[3], TSTOUT0_OUT[3]);
  buf B_TSTOUT04 (TSTOUT0[4], TSTOUT0_OUT[4]);
  buf B_TSTOUT10 (TSTOUT1[0], TSTOUT1_OUT[0]);
  buf B_TSTOUT11 (TSTOUT1[1], TSTOUT1_OUT[1]);
  buf B_TSTOUT12 (TSTOUT1[2], TSTOUT1_OUT[2]);
  buf B_TSTOUT13 (TSTOUT1[3], TSTOUT1_OUT[3]);
  buf B_TSTOUT14 (TSTOUT1[4], TSTOUT1_OUT[4]);
  buf B_TXBUFSTATUS00 (TXBUFSTATUS0[0], TXBUFSTATUS0_OUT[0]);
  buf B_TXBUFSTATUS01 (TXBUFSTATUS0[1], TXBUFSTATUS0_OUT[1]);
  buf B_TXBUFSTATUS10 (TXBUFSTATUS1[0], TXBUFSTATUS1_OUT[0]);
  buf B_TXBUFSTATUS11 (TXBUFSTATUS1[1], TXBUFSTATUS1_OUT[1]);
  buf B_TXKERR00 (TXKERR0[0], TXKERR0_OUT[0]);
  buf B_TXKERR01 (TXKERR0[1], TXKERR0_OUT[1]);
  buf B_TXKERR02 (TXKERR0[2], TXKERR0_OUT[2]);
  buf B_TXKERR03 (TXKERR0[3], TXKERR0_OUT[3]);
  buf B_TXKERR10 (TXKERR1[0], TXKERR1_OUT[0]);
  buf B_TXKERR11 (TXKERR1[1], TXKERR1_OUT[1]);
  buf B_TXKERR12 (TXKERR1[2], TXKERR1_OUT[2]);
  buf B_TXKERR13 (TXKERR1[3], TXKERR1_OUT[3]);
  buf B_TXN0 (TXN0, TXN0_OUT);
  buf B_TXN1 (TXN1, TXN1_OUT);
  buf B_TXOUTCLK0 (TXOUTCLK0, TXOUTCLK0_OUT);
  buf B_TXOUTCLK1 (TXOUTCLK1, TXOUTCLK1_OUT);
  buf B_TXP0 (TXP0, TXP0_OUT);
  buf B_TXP1 (TXP1, TXP1_OUT);
  buf B_TXRUNDISP00 (TXRUNDISP0[0], TXRUNDISP0_OUT[0]);
  buf B_TXRUNDISP01 (TXRUNDISP0[1], TXRUNDISP0_OUT[1]);
  buf B_TXRUNDISP02 (TXRUNDISP0[2], TXRUNDISP0_OUT[2]);
  buf B_TXRUNDISP03 (TXRUNDISP0[3], TXRUNDISP0_OUT[3]);
  buf B_TXRUNDISP10 (TXRUNDISP1[0], TXRUNDISP1_OUT[0]);
  buf B_TXRUNDISP11 (TXRUNDISP1[1], TXRUNDISP1_OUT[1]);
  buf B_TXRUNDISP12 (TXRUNDISP1[2], TXRUNDISP1_OUT[2]);
  buf B_TXRUNDISP13 (TXRUNDISP1[3], TXRUNDISP1_OUT[3]);

  buf B_CLK00 (CLK00_IN, CLK00);
  buf B_CLK01 (CLK01_IN, CLK01);
  buf B_CLK10 (CLK10_IN, CLK10);
  buf B_CLK11 (CLK11_IN, CLK11);
  buf B_CLKINEAST0 (CLKINEAST0_IN, CLKINEAST0);
  buf B_CLKINEAST1 (CLKINEAST1_IN, CLKINEAST1);
  buf B_CLKINWEST0 (CLKINWEST0_IN, CLKINWEST0);
  buf B_CLKINWEST1 (CLKINWEST1_IN, CLKINWEST1);
  buf B_DADDR0 (DADDR_IN[0], DADDR[0]);
  buf B_DADDR1 (DADDR_IN[1], DADDR[1]);
  buf B_DADDR2 (DADDR_IN[2], DADDR[2]);
  buf B_DADDR3 (DADDR_IN[3], DADDR[3]);
  buf B_DADDR4 (DADDR_IN[4], DADDR[4]);
  buf B_DADDR5 (DADDR_IN[5], DADDR[5]);
  buf B_DADDR6 (DADDR_IN[6], DADDR[6]);
  buf B_DADDR7 (DADDR_IN[7], DADDR[7]);
//  buf B_DCLK (DCLK_IN, DCLK);
  buf B_DEN (DEN_IN, DEN);
  buf B_DI0 (DI_IN[0], DI[0]);
  buf B_DI1 (DI_IN[1], DI[1]);
  buf B_DI10 (DI_IN[10], DI[10]);
  buf B_DI11 (DI_IN[11], DI[11]);
  buf B_DI12 (DI_IN[12], DI[12]);
  buf B_DI13 (DI_IN[13], DI[13]);
  buf B_DI14 (DI_IN[14], DI[14]);
  buf B_DI15 (DI_IN[15], DI[15]);
  buf B_DI2 (DI_IN[2], DI[2]);
  buf B_DI3 (DI_IN[3], DI[3]);
  buf B_DI4 (DI_IN[4], DI[4]);
  buf B_DI5 (DI_IN[5], DI[5]);
  buf B_DI6 (DI_IN[6], DI[6]);
  buf B_DI7 (DI_IN[7], DI[7]);
  buf B_DI8 (DI_IN[8], DI[8]);
  buf B_DI9 (DI_IN[9], DI[9]);
  buf B_DWE (DWE_IN, DWE);
  buf B_GATERXELECIDLE0 (GATERXELECIDLE0_IN, GATERXELECIDLE0);
  buf B_GATERXELECIDLE1 (GATERXELECIDLE1_IN, GATERXELECIDLE1);
  buf B_GCLK00 (GCLK00_IN, GCLK00);
  buf B_GCLK01 (GCLK01_IN, GCLK01);
  buf B_GCLK10 (GCLK10_IN, GCLK10);
  buf B_GCLK11 (GCLK11_IN, GCLK11);
  buf B_GTPCLKFBSEL0EAST0 (GTPCLKFBSEL0EAST_IN[0], GTPCLKFBSEL0EAST[0]);
  buf B_GTPCLKFBSEL0EAST1 (GTPCLKFBSEL0EAST_IN[1], GTPCLKFBSEL0EAST[1]);
  buf B_GTPCLKFBSEL0WEST0 (GTPCLKFBSEL0WEST_IN[0], GTPCLKFBSEL0WEST[0]);
  buf B_GTPCLKFBSEL0WEST1 (GTPCLKFBSEL0WEST_IN[1], GTPCLKFBSEL0WEST[1]);
  buf B_GTPCLKFBSEL1EAST0 (GTPCLKFBSEL1EAST_IN[0], GTPCLKFBSEL1EAST[0]);
  buf B_GTPCLKFBSEL1EAST1 (GTPCLKFBSEL1EAST_IN[1], GTPCLKFBSEL1EAST[1]);
  buf B_GTPCLKFBSEL1WEST0 (GTPCLKFBSEL1WEST_IN[0], GTPCLKFBSEL1WEST[0]);
  buf B_GTPCLKFBSEL1WEST1 (GTPCLKFBSEL1WEST_IN[1], GTPCLKFBSEL1WEST[1]);
  buf B_GTPRESET0 (GTPRESET0_IN, GTPRESET0);
  buf B_GTPRESET1 (GTPRESET1_IN, GTPRESET1);
  buf B_GTPTEST00 (GTPTEST0_IN[0], GTPTEST0[0]);
  buf B_GTPTEST01 (GTPTEST0_IN[1], GTPTEST0[1]);
  buf B_GTPTEST02 (GTPTEST0_IN[2], GTPTEST0[2]);
  buf B_GTPTEST03 (GTPTEST0_IN[3], GTPTEST0[3]);
  buf B_GTPTEST04 (GTPTEST0_IN[4], GTPTEST0[4]);
  buf B_GTPTEST05 (GTPTEST0_IN[5], GTPTEST0[5]);
  buf B_GTPTEST06 (GTPTEST0_IN[6], GTPTEST0[6]);
  buf B_GTPTEST07 (GTPTEST0_IN[7], GTPTEST0[7]);
  buf B_GTPTEST10 (GTPTEST1_IN[0], GTPTEST1[0]);
  buf B_GTPTEST11 (GTPTEST1_IN[1], GTPTEST1[1]);
  buf B_GTPTEST12 (GTPTEST1_IN[2], GTPTEST1[2]);
  buf B_GTPTEST13 (GTPTEST1_IN[3], GTPTEST1[3]);
  buf B_GTPTEST14 (GTPTEST1_IN[4], GTPTEST1[4]);
  buf B_GTPTEST15 (GTPTEST1_IN[5], GTPTEST1[5]);
  buf B_GTPTEST16 (GTPTEST1_IN[6], GTPTEST1[6]);
  buf B_GTPTEST17 (GTPTEST1_IN[7], GTPTEST1[7]);
  buf B_IGNORESIGDET0 (IGNORESIGDET0_IN, IGNORESIGDET0);
  buf B_IGNORESIGDET1 (IGNORESIGDET1_IN, IGNORESIGDET1);
  buf B_INTDATAWIDTH0 (INTDATAWIDTH0_IN, INTDATAWIDTH0);
  buf B_INTDATAWIDTH1 (INTDATAWIDTH1_IN, INTDATAWIDTH1);
  buf B_LOOPBACK00 (LOOPBACK0_IN[0], LOOPBACK0[0]);
  buf B_LOOPBACK01 (LOOPBACK0_IN[1], LOOPBACK0[1]);
  buf B_LOOPBACK02 (LOOPBACK0_IN[2], LOOPBACK0[2]);
  buf B_LOOPBACK10 (LOOPBACK1_IN[0], LOOPBACK1[0]);
  buf B_LOOPBACK11 (LOOPBACK1_IN[1], LOOPBACK1[1]);
  buf B_LOOPBACK12 (LOOPBACK1_IN[2], LOOPBACK1[2]);
  buf B_PLLCLK00 (PLLCLK00_IN, PLLCLK00);
  buf B_PLLCLK01 (PLLCLK01_IN, PLLCLK01);
  buf B_PLLCLK10 (PLLCLK10_IN, PLLCLK10);
  buf B_PLLCLK11 (PLLCLK11_IN, PLLCLK11);
  buf B_PLLLKDETEN0 (PLLLKDETEN0_IN, PLLLKDETEN0);
  buf B_PLLLKDETEN1 (PLLLKDETEN1_IN, PLLLKDETEN1);
  buf B_PLLPOWERDOWN0 (PLLPOWERDOWN0_IN, PLLPOWERDOWN0);
  buf B_PLLPOWERDOWN1 (PLLPOWERDOWN1_IN, PLLPOWERDOWN1);
  buf B_PRBSCNTRESET0 (PRBSCNTRESET0_IN, PRBSCNTRESET0);
  buf B_PRBSCNTRESET1 (PRBSCNTRESET1_IN, PRBSCNTRESET1);
  buf B_RCALINEAST0 (RCALINEAST_IN[0], RCALINEAST[0]);
  buf B_RCALINEAST1 (RCALINEAST_IN[1], RCALINEAST[1]);
  buf B_RCALINEAST2 (RCALINEAST_IN[2], RCALINEAST[2]);
  buf B_RCALINEAST3 (RCALINEAST_IN[3], RCALINEAST[3]);
  buf B_RCALINEAST4 (RCALINEAST_IN[4], RCALINEAST[4]);
  buf B_RCALINWEST0 (RCALINWEST_IN[0], RCALINWEST[0]);
  buf B_RCALINWEST1 (RCALINWEST_IN[1], RCALINWEST[1]);
  buf B_RCALINWEST2 (RCALINWEST_IN[2], RCALINWEST[2]);
  buf B_RCALINWEST3 (RCALINWEST_IN[3], RCALINWEST[3]);
  buf B_RCALINWEST4 (RCALINWEST_IN[4], RCALINWEST[4]);
  buf B_REFCLKPWRDNB0 (REFCLKPWRDNB0_IN, REFCLKPWRDNB0);
  buf B_REFCLKPWRDNB1 (REFCLKPWRDNB1_IN, REFCLKPWRDNB1);
  buf B_REFSELDYPLL00 (REFSELDYPLL0_IN[0], REFSELDYPLL0[0]);
  buf B_REFSELDYPLL01 (REFSELDYPLL0_IN[1], REFSELDYPLL0[1]);
  buf B_REFSELDYPLL02 (REFSELDYPLL0_IN[2], REFSELDYPLL0[2]);
  buf B_REFSELDYPLL10 (REFSELDYPLL1_IN[0], REFSELDYPLL1[0]);
  buf B_REFSELDYPLL11 (REFSELDYPLL1_IN[1], REFSELDYPLL1[1]);
  buf B_REFSELDYPLL12 (REFSELDYPLL1_IN[2], REFSELDYPLL1[2]);
  buf B_RXBUFRESET0 (RXBUFRESET0_IN, RXBUFRESET0);
  buf B_RXBUFRESET1 (RXBUFRESET1_IN, RXBUFRESET1);
  buf B_RXCDRRESET0 (RXCDRRESET0_IN, RXCDRRESET0);
  buf B_RXCDRRESET1 (RXCDRRESET1_IN, RXCDRRESET1);
  buf B_RXCHBONDI0 (RXCHBONDI_IN[0], RXCHBONDI[0]);
  buf B_RXCHBONDI1 (RXCHBONDI_IN[1], RXCHBONDI[1]);
  buf B_RXCHBONDI2 (RXCHBONDI_IN[2], RXCHBONDI[2]);
  buf B_RXCHBONDMASTER0 (RXCHBONDMASTER0_IN, RXCHBONDMASTER0);
  buf B_RXCHBONDMASTER1 (RXCHBONDMASTER1_IN, RXCHBONDMASTER1);
  buf B_RXCHBONDSLAVE0 (RXCHBONDSLAVE0_IN, RXCHBONDSLAVE0);
  buf B_RXCHBONDSLAVE1 (RXCHBONDSLAVE1_IN, RXCHBONDSLAVE1);
  buf B_RXCOMMADETUSE0 (RXCOMMADETUSE0_IN, RXCOMMADETUSE0);
  buf B_RXCOMMADETUSE1 (RXCOMMADETUSE1_IN, RXCOMMADETUSE1);
  buf B_RXDATAWIDTH00 (RXDATAWIDTH0_IN[0], RXDATAWIDTH0[0]);
  buf B_RXDATAWIDTH01 (RXDATAWIDTH0_IN[1], RXDATAWIDTH0[1]);
  buf B_RXDATAWIDTH10 (RXDATAWIDTH1_IN[0], RXDATAWIDTH1[0]);
  buf B_RXDATAWIDTH11 (RXDATAWIDTH1_IN[1], RXDATAWIDTH1[1]);
  buf B_RXDEC8B10BUSE0 (RXDEC8B10BUSE0_IN, RXDEC8B10BUSE0);
  buf B_RXDEC8B10BUSE1 (RXDEC8B10BUSE1_IN, RXDEC8B10BUSE1);
  buf B_RXENCHANSYNC0 (RXENCHANSYNC0_IN, RXENCHANSYNC0);
  buf B_RXENCHANSYNC1 (RXENCHANSYNC1_IN, RXENCHANSYNC1);
  buf B_RXENMCOMMAALIGN0 (RXENMCOMMAALIGN0_IN, RXENMCOMMAALIGN0);
  buf B_RXENMCOMMAALIGN1 (RXENMCOMMAALIGN1_IN, RXENMCOMMAALIGN1);
  buf B_RXENPCOMMAALIGN0 (RXENPCOMMAALIGN0_IN, RXENPCOMMAALIGN0);
  buf B_RXENPCOMMAALIGN1 (RXENPCOMMAALIGN1_IN, RXENPCOMMAALIGN1);
  buf B_RXENPMAPHASEALIGN0 (RXENPMAPHASEALIGN0_IN, RXENPMAPHASEALIGN0);
  buf B_RXENPMAPHASEALIGN1 (RXENPMAPHASEALIGN1_IN, RXENPMAPHASEALIGN1);
  buf B_RXENPRBSTST00 (RXENPRBSTST0_IN[0], RXENPRBSTST0[0]);
  buf B_RXENPRBSTST01 (RXENPRBSTST0_IN[1], RXENPRBSTST0[1]);
  buf B_RXENPRBSTST02 (RXENPRBSTST0_IN[2], RXENPRBSTST0[2]);
  buf B_RXENPRBSTST10 (RXENPRBSTST1_IN[0], RXENPRBSTST1[0]);
  buf B_RXENPRBSTST11 (RXENPRBSTST1_IN[1], RXENPRBSTST1[1]);
  buf B_RXENPRBSTST12 (RXENPRBSTST1_IN[2], RXENPRBSTST1[2]);
  buf B_RXEQMIX00 (RXEQMIX0_IN[0], RXEQMIX0[0]);
  buf B_RXEQMIX01 (RXEQMIX0_IN[1], RXEQMIX0[1]);
  buf B_RXEQMIX10 (RXEQMIX1_IN[0], RXEQMIX1[0]);
  buf B_RXEQMIX11 (RXEQMIX1_IN[1], RXEQMIX1[1]);
  buf B_RXN0 (RXN0_IN, RXN0);
  buf B_RXN1 (RXN1_IN, RXN1);
  buf B_RXP0 (RXP0_IN, RXP0);
  buf B_RXP1 (RXP1_IN, RXP1);
  buf B_RXPMASETPHASE0 (RXPMASETPHASE0_IN, RXPMASETPHASE0);
  buf B_RXPMASETPHASE1 (RXPMASETPHASE1_IN, RXPMASETPHASE1);
  buf B_RXPOLARITY0 (RXPOLARITY0_IN, RXPOLARITY0);
  buf B_RXPOLARITY1 (RXPOLARITY1_IN, RXPOLARITY1);
  buf B_RXPOWERDOWN00 (RXPOWERDOWN0_IN[0], RXPOWERDOWN0[0]);
  buf B_RXPOWERDOWN01 (RXPOWERDOWN0_IN[1], RXPOWERDOWN0[1]);
  buf B_RXPOWERDOWN10 (RXPOWERDOWN1_IN[0], RXPOWERDOWN1[0]);
  buf B_RXPOWERDOWN11 (RXPOWERDOWN1_IN[1], RXPOWERDOWN1[1]);
  buf B_RXRESET0 (RXRESET0_IN, RXRESET0);
  buf B_RXRESET1 (RXRESET1_IN, RXRESET1);
  buf B_RXSLIDE0 (RXSLIDE0_IN, RXSLIDE0);
  buf B_RXSLIDE1 (RXSLIDE1_IN, RXSLIDE1);
//  buf B_RXUSRCLK0 (RXUSRCLK0_IN, RXUSRCLK0);
//  buf B_RXUSRCLK1 (RXUSRCLK1_IN, RXUSRCLK1);
//  buf B_RXUSRCLK20 (RXUSRCLK20_IN, RXUSRCLK20);
//  buf B_RXUSRCLK21 (RXUSRCLK21_IN, RXUSRCLK21);
  buf B_TSTCLK0 (TSTCLK0_IN, TSTCLK0);
  buf B_TSTCLK1 (TSTCLK1_IN, TSTCLK1);
  buf B_TSTIN00 (TSTIN0_IN[0], TSTIN0[0]);
  buf B_TSTIN01 (TSTIN0_IN[1], TSTIN0[1]);
  buf B_TSTIN010 (TSTIN0_IN[10], TSTIN0[10]);
  buf B_TSTIN011 (TSTIN0_IN[11], TSTIN0[11]);
  buf B_TSTIN02 (TSTIN0_IN[2], TSTIN0[2]);
  buf B_TSTIN03 (TSTIN0_IN[3], TSTIN0[3]);
  buf B_TSTIN04 (TSTIN0_IN[4], TSTIN0[4]);
  buf B_TSTIN05 (TSTIN0_IN[5], TSTIN0[5]);
  buf B_TSTIN06 (TSTIN0_IN[6], TSTIN0[6]);
  buf B_TSTIN07 (TSTIN0_IN[7], TSTIN0[7]);
  buf B_TSTIN08 (TSTIN0_IN[8], TSTIN0[8]);
  buf B_TSTIN09 (TSTIN0_IN[9], TSTIN0[9]);
  buf B_TSTIN10 (TSTIN1_IN[0], TSTIN1[0]);
  buf B_TSTIN11 (TSTIN1_IN[1], TSTIN1[1]);
  buf B_TSTIN110 (TSTIN1_IN[10], TSTIN1[10]);
  buf B_TSTIN111 (TSTIN1_IN[11], TSTIN1[11]);
  buf B_TSTIN12 (TSTIN1_IN[2], TSTIN1[2]);
  buf B_TSTIN13 (TSTIN1_IN[3], TSTIN1[3]);
  buf B_TSTIN14 (TSTIN1_IN[4], TSTIN1[4]);
  buf B_TSTIN15 (TSTIN1_IN[5], TSTIN1[5]);
  buf B_TSTIN16 (TSTIN1_IN[6], TSTIN1[6]);
  buf B_TSTIN17 (TSTIN1_IN[7], TSTIN1[7]);
  buf B_TSTIN18 (TSTIN1_IN[8], TSTIN1[8]);
  buf B_TSTIN19 (TSTIN1_IN[9], TSTIN1[9]);
  buf B_TXBUFDIFFCTRL00 (TXBUFDIFFCTRL0_IN[0], TXBUFDIFFCTRL0[0]);
  buf B_TXBUFDIFFCTRL01 (TXBUFDIFFCTRL0_IN[1], TXBUFDIFFCTRL0[1]);
  buf B_TXBUFDIFFCTRL02 (TXBUFDIFFCTRL0_IN[2], TXBUFDIFFCTRL0[2]);
  buf B_TXBUFDIFFCTRL10 (TXBUFDIFFCTRL1_IN[0], TXBUFDIFFCTRL1[0]);
  buf B_TXBUFDIFFCTRL11 (TXBUFDIFFCTRL1_IN[1], TXBUFDIFFCTRL1[1]);
  buf B_TXBUFDIFFCTRL12 (TXBUFDIFFCTRL1_IN[2], TXBUFDIFFCTRL1[2]);
  buf B_TXBYPASS8B10B00 (TXBYPASS8B10B0_IN[0], TXBYPASS8B10B0[0]);
  buf B_TXBYPASS8B10B01 (TXBYPASS8B10B0_IN[1], TXBYPASS8B10B0[1]);
  buf B_TXBYPASS8B10B02 (TXBYPASS8B10B0_IN[2], TXBYPASS8B10B0[2]);
  buf B_TXBYPASS8B10B03 (TXBYPASS8B10B0_IN[3], TXBYPASS8B10B0[3]);
  buf B_TXBYPASS8B10B10 (TXBYPASS8B10B1_IN[0], TXBYPASS8B10B1[0]);
  buf B_TXBYPASS8B10B11 (TXBYPASS8B10B1_IN[1], TXBYPASS8B10B1[1]);
  buf B_TXBYPASS8B10B12 (TXBYPASS8B10B1_IN[2], TXBYPASS8B10B1[2]);
  buf B_TXBYPASS8B10B13 (TXBYPASS8B10B1_IN[3], TXBYPASS8B10B1[3]);
  buf B_TXCHARDISPMODE00 (TXCHARDISPMODE0_IN[0], TXCHARDISPMODE0[0]);
  buf B_TXCHARDISPMODE01 (TXCHARDISPMODE0_IN[1], TXCHARDISPMODE0[1]);
  buf B_TXCHARDISPMODE02 (TXCHARDISPMODE0_IN[2], TXCHARDISPMODE0[2]);
  buf B_TXCHARDISPMODE03 (TXCHARDISPMODE0_IN[3], TXCHARDISPMODE0[3]);
  buf B_TXCHARDISPMODE10 (TXCHARDISPMODE1_IN[0], TXCHARDISPMODE1[0]);
  buf B_TXCHARDISPMODE11 (TXCHARDISPMODE1_IN[1], TXCHARDISPMODE1[1]);
  buf B_TXCHARDISPMODE12 (TXCHARDISPMODE1_IN[2], TXCHARDISPMODE1[2]);
  buf B_TXCHARDISPMODE13 (TXCHARDISPMODE1_IN[3], TXCHARDISPMODE1[3]);
  buf B_TXCHARDISPVAL00 (TXCHARDISPVAL0_IN[0], TXCHARDISPVAL0[0]);
  buf B_TXCHARDISPVAL01 (TXCHARDISPVAL0_IN[1], TXCHARDISPVAL0[1]);
  buf B_TXCHARDISPVAL02 (TXCHARDISPVAL0_IN[2], TXCHARDISPVAL0[2]);
  buf B_TXCHARDISPVAL03 (TXCHARDISPVAL0_IN[3], TXCHARDISPVAL0[3]);
  buf B_TXCHARDISPVAL10 (TXCHARDISPVAL1_IN[0], TXCHARDISPVAL1[0]);
  buf B_TXCHARDISPVAL11 (TXCHARDISPVAL1_IN[1], TXCHARDISPVAL1[1]);
  buf B_TXCHARDISPVAL12 (TXCHARDISPVAL1_IN[2], TXCHARDISPVAL1[2]);
  buf B_TXCHARDISPVAL13 (TXCHARDISPVAL1_IN[3], TXCHARDISPVAL1[3]);
  buf B_TXCHARISK00 (TXCHARISK0_IN[0], TXCHARISK0[0]);
  buf B_TXCHARISK01 (TXCHARISK0_IN[1], TXCHARISK0[1]);
  buf B_TXCHARISK02 (TXCHARISK0_IN[2], TXCHARISK0[2]);
  buf B_TXCHARISK03 (TXCHARISK0_IN[3], TXCHARISK0[3]);
  buf B_TXCHARISK10 (TXCHARISK1_IN[0], TXCHARISK1[0]);
  buf B_TXCHARISK11 (TXCHARISK1_IN[1], TXCHARISK1[1]);
  buf B_TXCHARISK12 (TXCHARISK1_IN[2], TXCHARISK1[2]);
  buf B_TXCHARISK13 (TXCHARISK1_IN[3], TXCHARISK1[3]);
  buf B_TXCOMSTART0 (TXCOMSTART0_IN, TXCOMSTART0);
  buf B_TXCOMSTART1 (TXCOMSTART1_IN, TXCOMSTART1);
  buf B_TXCOMTYPE0 (TXCOMTYPE0_IN, TXCOMTYPE0);
  buf B_TXCOMTYPE1 (TXCOMTYPE1_IN, TXCOMTYPE1);
  buf B_TXDATA00 (TXDATA0_IN[0], TXDATA0[0]);
  buf B_TXDATA01 (TXDATA0_IN[1], TXDATA0[1]);
  buf B_TXDATA010 (TXDATA0_IN[10], TXDATA0[10]);
  buf B_TXDATA011 (TXDATA0_IN[11], TXDATA0[11]);
  buf B_TXDATA012 (TXDATA0_IN[12], TXDATA0[12]);
  buf B_TXDATA013 (TXDATA0_IN[13], TXDATA0[13]);
  buf B_TXDATA014 (TXDATA0_IN[14], TXDATA0[14]);
  buf B_TXDATA015 (TXDATA0_IN[15], TXDATA0[15]);
  buf B_TXDATA016 (TXDATA0_IN[16], TXDATA0[16]);
  buf B_TXDATA017 (TXDATA0_IN[17], TXDATA0[17]);
  buf B_TXDATA018 (TXDATA0_IN[18], TXDATA0[18]);
  buf B_TXDATA019 (TXDATA0_IN[19], TXDATA0[19]);
  buf B_TXDATA02 (TXDATA0_IN[2], TXDATA0[2]);
  buf B_TXDATA020 (TXDATA0_IN[20], TXDATA0[20]);
  buf B_TXDATA021 (TXDATA0_IN[21], TXDATA0[21]);
  buf B_TXDATA022 (TXDATA0_IN[22], TXDATA0[22]);
  buf B_TXDATA023 (TXDATA0_IN[23], TXDATA0[23]);
  buf B_TXDATA024 (TXDATA0_IN[24], TXDATA0[24]);
  buf B_TXDATA025 (TXDATA0_IN[25], TXDATA0[25]);
  buf B_TXDATA026 (TXDATA0_IN[26], TXDATA0[26]);
  buf B_TXDATA027 (TXDATA0_IN[27], TXDATA0[27]);
  buf B_TXDATA028 (TXDATA0_IN[28], TXDATA0[28]);
  buf B_TXDATA029 (TXDATA0_IN[29], TXDATA0[29]);
  buf B_TXDATA03 (TXDATA0_IN[3], TXDATA0[3]);
  buf B_TXDATA030 (TXDATA0_IN[30], TXDATA0[30]);
  buf B_TXDATA031 (TXDATA0_IN[31], TXDATA0[31]);
  buf B_TXDATA04 (TXDATA0_IN[4], TXDATA0[4]);
  buf B_TXDATA05 (TXDATA0_IN[5], TXDATA0[5]);
  buf B_TXDATA06 (TXDATA0_IN[6], TXDATA0[6]);
  buf B_TXDATA07 (TXDATA0_IN[7], TXDATA0[7]);
  buf B_TXDATA08 (TXDATA0_IN[8], TXDATA0[8]);
  buf B_TXDATA09 (TXDATA0_IN[9], TXDATA0[9]);
  buf B_TXDATA10 (TXDATA1_IN[0], TXDATA1[0]);
  buf B_TXDATA11 (TXDATA1_IN[1], TXDATA1[1]);
  buf B_TXDATA110 (TXDATA1_IN[10], TXDATA1[10]);
  buf B_TXDATA111 (TXDATA1_IN[11], TXDATA1[11]);
  buf B_TXDATA112 (TXDATA1_IN[12], TXDATA1[12]);
  buf B_TXDATA113 (TXDATA1_IN[13], TXDATA1[13]);
  buf B_TXDATA114 (TXDATA1_IN[14], TXDATA1[14]);
  buf B_TXDATA115 (TXDATA1_IN[15], TXDATA1[15]);
  buf B_TXDATA116 (TXDATA1_IN[16], TXDATA1[16]);
  buf B_TXDATA117 (TXDATA1_IN[17], TXDATA1[17]);
  buf B_TXDATA118 (TXDATA1_IN[18], TXDATA1[18]);
  buf B_TXDATA119 (TXDATA1_IN[19], TXDATA1[19]);
  buf B_TXDATA12 (TXDATA1_IN[2], TXDATA1[2]);
  buf B_TXDATA120 (TXDATA1_IN[20], TXDATA1[20]);
  buf B_TXDATA121 (TXDATA1_IN[21], TXDATA1[21]);
  buf B_TXDATA122 (TXDATA1_IN[22], TXDATA1[22]);
  buf B_TXDATA123 (TXDATA1_IN[23], TXDATA1[23]);
  buf B_TXDATA124 (TXDATA1_IN[24], TXDATA1[24]);
  buf B_TXDATA125 (TXDATA1_IN[25], TXDATA1[25]);
  buf B_TXDATA126 (TXDATA1_IN[26], TXDATA1[26]);
  buf B_TXDATA127 (TXDATA1_IN[27], TXDATA1[27]);
  buf B_TXDATA128 (TXDATA1_IN[28], TXDATA1[28]);
  buf B_TXDATA129 (TXDATA1_IN[29], TXDATA1[29]);
  buf B_TXDATA13 (TXDATA1_IN[3], TXDATA1[3]);
  buf B_TXDATA130 (TXDATA1_IN[30], TXDATA1[30]);
  buf B_TXDATA131 (TXDATA1_IN[31], TXDATA1[31]);
  buf B_TXDATA14 (TXDATA1_IN[4], TXDATA1[4]);
  buf B_TXDATA15 (TXDATA1_IN[5], TXDATA1[5]);
  buf B_TXDATA16 (TXDATA1_IN[6], TXDATA1[6]);
  buf B_TXDATA17 (TXDATA1_IN[7], TXDATA1[7]);
  buf B_TXDATA18 (TXDATA1_IN[8], TXDATA1[8]);
  buf B_TXDATA19 (TXDATA1_IN[9], TXDATA1[9]);
  buf B_TXDATAWIDTH00 (TXDATAWIDTH0_IN[0], TXDATAWIDTH0[0]);
  buf B_TXDATAWIDTH01 (TXDATAWIDTH0_IN[1], TXDATAWIDTH0[1]);
  buf B_TXDATAWIDTH10 (TXDATAWIDTH1_IN[0], TXDATAWIDTH1[0]);
  buf B_TXDATAWIDTH11 (TXDATAWIDTH1_IN[1], TXDATAWIDTH1[1]);
  buf B_TXDETECTRX0 (TXDETECTRX0_IN, TXDETECTRX0);
  buf B_TXDETECTRX1 (TXDETECTRX1_IN, TXDETECTRX1);
  buf B_TXDIFFCTRL00 (TXDIFFCTRL0_IN[0], TXDIFFCTRL0[0]);
  buf B_TXDIFFCTRL01 (TXDIFFCTRL0_IN[1], TXDIFFCTRL0[1]);
  buf B_TXDIFFCTRL02 (TXDIFFCTRL0_IN[2], TXDIFFCTRL0[2]);
  buf B_TXDIFFCTRL03 (TXDIFFCTRL0_IN[3], TXDIFFCTRL0[3]);
  buf B_TXDIFFCTRL10 (TXDIFFCTRL1_IN[0], TXDIFFCTRL1[0]);
  buf B_TXDIFFCTRL11 (TXDIFFCTRL1_IN[1], TXDIFFCTRL1[1]);
  buf B_TXDIFFCTRL12 (TXDIFFCTRL1_IN[2], TXDIFFCTRL1[2]);
  buf B_TXDIFFCTRL13 (TXDIFFCTRL1_IN[3], TXDIFFCTRL1[3]);
  buf B_TXELECIDLE0 (TXELECIDLE0_IN, TXELECIDLE0);
  buf B_TXELECIDLE1 (TXELECIDLE1_IN, TXELECIDLE1);
  buf B_TXENC8B10BUSE0 (TXENC8B10BUSE0_IN, TXENC8B10BUSE0);
  buf B_TXENC8B10BUSE1 (TXENC8B10BUSE1_IN, TXENC8B10BUSE1);
  buf B_TXENPMAPHASEALIGN0 (TXENPMAPHASEALIGN0_IN, TXENPMAPHASEALIGN0);
  buf B_TXENPMAPHASEALIGN1 (TXENPMAPHASEALIGN1_IN, TXENPMAPHASEALIGN1);
  buf B_TXENPRBSTST00 (TXENPRBSTST0_IN[0], TXENPRBSTST0[0]);
  buf B_TXENPRBSTST01 (TXENPRBSTST0_IN[1], TXENPRBSTST0[1]);
  buf B_TXENPRBSTST02 (TXENPRBSTST0_IN[2], TXENPRBSTST0[2]);
  buf B_TXENPRBSTST10 (TXENPRBSTST1_IN[0], TXENPRBSTST1[0]);
  buf B_TXENPRBSTST11 (TXENPRBSTST1_IN[1], TXENPRBSTST1[1]);
  buf B_TXENPRBSTST12 (TXENPRBSTST1_IN[2], TXENPRBSTST1[2]);
  buf B_TXINHIBIT0 (TXINHIBIT0_IN, TXINHIBIT0);
  buf B_TXINHIBIT1 (TXINHIBIT1_IN, TXINHIBIT1);
  buf B_TXPDOWNASYNCH0 (TXPDOWNASYNCH0_IN, TXPDOWNASYNCH0);
  buf B_TXPDOWNASYNCH1 (TXPDOWNASYNCH1_IN, TXPDOWNASYNCH1);
  buf B_TXPMASETPHASE0 (TXPMASETPHASE0_IN, TXPMASETPHASE0);
  buf B_TXPMASETPHASE1 (TXPMASETPHASE1_IN, TXPMASETPHASE1);
  buf B_TXPOLARITY0 (TXPOLARITY0_IN, TXPOLARITY0);
  buf B_TXPOLARITY1 (TXPOLARITY1_IN, TXPOLARITY1);
  buf B_TXPOWERDOWN00 (TXPOWERDOWN0_IN[0], TXPOWERDOWN0[0]);
  buf B_TXPOWERDOWN01 (TXPOWERDOWN0_IN[1], TXPOWERDOWN0[1]);
  buf B_TXPOWERDOWN10 (TXPOWERDOWN1_IN[0], TXPOWERDOWN1[0]);
  buf B_TXPOWERDOWN11 (TXPOWERDOWN1_IN[1], TXPOWERDOWN1[1]);
  buf B_TXPRBSFORCEERR0 (TXPRBSFORCEERR0_IN, TXPRBSFORCEERR0);
  buf B_TXPRBSFORCEERR1 (TXPRBSFORCEERR1_IN, TXPRBSFORCEERR1);
  buf B_TXPREEMPHASIS00 (TXPREEMPHASIS0_IN[0], TXPREEMPHASIS0[0]);
  buf B_TXPREEMPHASIS01 (TXPREEMPHASIS0_IN[1], TXPREEMPHASIS0[1]);
  buf B_TXPREEMPHASIS02 (TXPREEMPHASIS0_IN[2], TXPREEMPHASIS0[2]);
  buf B_TXPREEMPHASIS10 (TXPREEMPHASIS1_IN[0], TXPREEMPHASIS1[0]);
  buf B_TXPREEMPHASIS11 (TXPREEMPHASIS1_IN[1], TXPREEMPHASIS1[1]);
  buf B_TXPREEMPHASIS12 (TXPREEMPHASIS1_IN[2], TXPREEMPHASIS1[2]);
  buf B_TXRESET0 (TXRESET0_IN, TXRESET0);
  buf B_TXRESET1 (TXRESET1_IN, TXRESET1);
  buf B_TXUSRCLK0 (TXUSRCLK0_IN, TXUSRCLK0);
  buf B_TXUSRCLK1 (TXUSRCLK1_IN, TXUSRCLK1);
//  buf B_TXUSRCLK20 (TXUSRCLK20_IN, TXUSRCLK20);
//  buf B_TXUSRCLK21 (TXUSRCLK21_IN, TXUSRCLK21);
  buf B_USRCODEERR0 (USRCODEERR0_IN, USRCODEERR0);
  buf B_USRCODEERR1 (USRCODEERR1_IN, USRCODEERR1);

  assign GTPCLKOUT0_OUT = delay_GTPCLKOUT0;
  assign GTPCLKOUT1_OUT = delay_GTPCLKOUT1;
  assign REFCLKPLL0_OUT = delay_REFCLKPLL0;
  assign REFCLKPLL1_OUT = delay_REFCLKPLL1;

  assign DRDY_OUT = delay_DRDY;
  assign DRPDO_OUT = delay_DRPDO;
  assign GTPCLKFBEAST_OUT = delay_GTPCLKFBEAST;
  assign GTPCLKFBWEST_OUT = delay_GTPCLKFBWEST;
  assign PHYSTATUS0_OUT = delay_PHYSTATUS0;
  assign PHYSTATUS1_OUT = delay_PHYSTATUS1;
  assign PLLLKDET0_OUT = delay_PLLLKDET0;
  assign PLLLKDET1_OUT = delay_PLLLKDET1;
  assign RCALOUTEAST_OUT = delay_RCALOUTEAST;
  assign RCALOUTWEST_OUT = delay_RCALOUTWEST;
  assign REFCLKOUT0_OUT = delay_REFCLKOUT0;
  assign REFCLKOUT1_OUT = delay_REFCLKOUT1;
  assign RESETDONE0_OUT = delay_RESETDONE0;
  assign RESETDONE1_OUT = delay_RESETDONE1;
  assign RXBUFSTATUS0_OUT = delay_RXBUFSTATUS0;
  assign RXBUFSTATUS1_OUT = delay_RXBUFSTATUS1;
  assign RXBYTEISALIGNED0_OUT = delay_RXBYTEISALIGNED0;
  assign RXBYTEISALIGNED1_OUT = delay_RXBYTEISALIGNED1;
  assign RXBYTEREALIGN0_OUT = delay_RXBYTEREALIGN0;
  assign RXBYTEREALIGN1_OUT = delay_RXBYTEREALIGN1;
  assign RXCHANBONDSEQ0_OUT = delay_RXCHANBONDSEQ0;
  assign RXCHANBONDSEQ1_OUT = delay_RXCHANBONDSEQ1;
  assign RXCHANISALIGNED0_OUT = delay_RXCHANISALIGNED0;
  assign RXCHANISALIGNED1_OUT = delay_RXCHANISALIGNED1;
  assign RXCHANREALIGN0_OUT = delay_RXCHANREALIGN0;
  assign RXCHANREALIGN1_OUT = delay_RXCHANREALIGN1;
  assign RXCHARISCOMMA0_OUT = delay_RXCHARISCOMMA0;
  assign RXCHARISCOMMA1_OUT = delay_RXCHARISCOMMA1;
  assign RXCHARISK0_OUT = delay_RXCHARISK0;
  assign RXCHARISK1_OUT = delay_RXCHARISK1;
  assign RXCHBONDO_OUT = delay_RXCHBONDO;
  assign RXCLKCORCNT0_OUT = delay_RXCLKCORCNT0;
  assign RXCLKCORCNT1_OUT = delay_RXCLKCORCNT1;
  assign RXCOMMADET0_OUT = delay_RXCOMMADET0;
  assign RXCOMMADET1_OUT = delay_RXCOMMADET1;
  assign RXDATA0_OUT = delay_RXDATA0;
  assign RXDATA1_OUT = delay_RXDATA1;
  assign RXDISPERR0_OUT = delay_RXDISPERR0;
  assign RXDISPERR1_OUT = delay_RXDISPERR1;
  assign RXELECIDLE0_OUT = delay_RXELECIDLE0;
  assign RXELECIDLE1_OUT = delay_RXELECIDLE1;
  assign RXLOSSOFSYNC0_OUT = delay_RXLOSSOFSYNC0;
  assign RXLOSSOFSYNC1_OUT = delay_RXLOSSOFSYNC1;
  assign RXNOTINTABLE0_OUT = delay_RXNOTINTABLE0;
  assign RXNOTINTABLE1_OUT = delay_RXNOTINTABLE1;
  assign RXPRBSERR0_OUT = delay_RXPRBSERR0;
  assign RXPRBSERR1_OUT = delay_RXPRBSERR1;
  assign RXRECCLK0_OUT = delay_RXRECCLK0;
  assign RXRECCLK1_OUT = delay_RXRECCLK1;
  assign RXRUNDISP0_OUT = delay_RXRUNDISP0;
  assign RXRUNDISP1_OUT = delay_RXRUNDISP1;
  assign RXSTATUS0_OUT = delay_RXSTATUS0;
  assign RXSTATUS1_OUT = delay_RXSTATUS1;
  assign RXVALID0_OUT = delay_RXVALID0;
  assign RXVALID1_OUT = delay_RXVALID1;
  assign TSTOUT0_OUT = delay_TSTOUT0;
  assign TSTOUT1_OUT = delay_TSTOUT1;
  assign TXBUFSTATUS0_OUT = delay_TXBUFSTATUS0;
  assign TXBUFSTATUS1_OUT = delay_TXBUFSTATUS1;
  assign TXKERR0_OUT = delay_TXKERR0;
  assign TXKERR1_OUT = delay_TXKERR1;
  assign TXN0_OUT = delay_TXN0;
  assign TXN1_OUT = delay_TXN1;
  assign TXOUTCLK0_OUT = delay_TXOUTCLK0;
  assign TXOUTCLK1_OUT = delay_TXOUTCLK1;
  assign TXP0_OUT = delay_TXP0;
  assign TXP1_OUT = delay_TXP1;
  assign TXRUNDISP0_OUT = delay_TXRUNDISP0;
  assign TXRUNDISP1_OUT = delay_TXRUNDISP1;

  assign delay_CLK00 = CLK00_IN;
  assign delay_CLK01 = CLK01_IN;
  assign delay_CLK10 = CLK10_IN;
  assign delay_CLK11 = CLK11_IN;
  assign delay_CLKINEAST0 = CLKINEAST0_IN;
  assign delay_CLKINEAST1 = CLKINEAST1_IN;
  assign delay_CLKINWEST0 = CLKINWEST0_IN;
  assign delay_CLKINWEST1 = CLKINWEST1_IN;
  assign delay_DCLK = DCLK_IN;
  assign delay_GCLK00 = GCLK00_IN;
  assign delay_GCLK01 = GCLK01_IN;
  assign delay_GCLK10 = GCLK10_IN;
  assign delay_GCLK11 = GCLK11_IN;
  assign delay_PLLCLK00 = PLLCLK00_IN;
  assign delay_PLLCLK01 = PLLCLK01_IN;
  assign delay_PLLCLK10 = PLLCLK10_IN;
  assign delay_PLLCLK11 = PLLCLK11_IN;
  assign delay_RXUSRCLK0 = RXUSRCLK0_IN;
  assign delay_RXUSRCLK1 = RXUSRCLK1_IN;
  assign delay_RXUSRCLK20 = RXUSRCLK20_IN;
  assign delay_RXUSRCLK21 = RXUSRCLK21_IN;
  assign delay_TSTCLK0 = TSTCLK0_IN;
  assign delay_TSTCLK1 = TSTCLK1_IN;
  assign delay_TXUSRCLK0 = TXUSRCLK0_IN;
  assign delay_TXUSRCLK1 = TXUSRCLK1_IN;
  assign delay_TXUSRCLK20 = TXUSRCLK20_IN;
  assign delay_TXUSRCLK21 = TXUSRCLK21_IN;

  assign delay_DADDR = DADDR_IN;
  assign delay_DEN = DEN_IN;
  assign delay_DI = DI_IN;
  assign delay_DWE = DWE_IN;
  assign delay_GATERXELECIDLE0 = GATERXELECIDLE0_IN;
  assign delay_GATERXELECIDLE1 = GATERXELECIDLE1_IN;
  assign delay_GTPCLKFBSEL0EAST = GTPCLKFBSEL0EAST_IN;
  assign delay_GTPCLKFBSEL0WEST = GTPCLKFBSEL0WEST_IN;
  assign delay_GTPCLKFBSEL1EAST = GTPCLKFBSEL1EAST_IN;
  assign delay_GTPCLKFBSEL1WEST = GTPCLKFBSEL1WEST_IN;
  assign delay_GTPRESET0 = GTPRESET0_IN;
  assign delay_GTPRESET1 = GTPRESET1_IN;
  assign delay_GTPTEST0 = GTPTEST0_IN;
  assign delay_GTPTEST1 = GTPTEST1_IN;
  assign delay_IGNORESIGDET0 = IGNORESIGDET0_IN;
  assign delay_IGNORESIGDET1 = IGNORESIGDET1_IN;
  assign delay_INTDATAWIDTH0 = INTDATAWIDTH0_IN;
  assign delay_INTDATAWIDTH1 = INTDATAWIDTH1_IN;
  assign delay_LOOPBACK0 = LOOPBACK0_IN;
  assign delay_LOOPBACK1 = LOOPBACK1_IN;
  assign delay_PLLLKDETEN0 = PLLLKDETEN0_IN;
  assign delay_PLLLKDETEN1 = PLLLKDETEN1_IN;
  assign delay_PLLPOWERDOWN0 = PLLPOWERDOWN0_IN;
  assign delay_PLLPOWERDOWN1 = PLLPOWERDOWN1_IN;
  assign delay_PRBSCNTRESET0 = PRBSCNTRESET0_IN;
  assign delay_PRBSCNTRESET1 = PRBSCNTRESET1_IN;
  assign delay_RCALINEAST = RCALINEAST_IN;
  assign delay_RCALINWEST = RCALINWEST_IN;
  assign delay_REFCLKPWRDNB0 = REFCLKPWRDNB0_IN;
  assign delay_REFCLKPWRDNB1 = REFCLKPWRDNB1_IN;
  assign delay_REFSELDYPLL0 = REFSELDYPLL0_IN;
  assign delay_REFSELDYPLL1 = REFSELDYPLL1_IN;
  assign delay_RXBUFRESET0 = RXBUFRESET0_IN;
  assign delay_RXBUFRESET1 = RXBUFRESET1_IN;
  assign delay_RXCDRRESET0 = RXCDRRESET0_IN;
  assign delay_RXCDRRESET1 = RXCDRRESET1_IN;
  assign delay_RXCHBONDI = RXCHBONDI_IN;
  assign delay_RXCHBONDMASTER0 = RXCHBONDMASTER0_IN;
  assign delay_RXCHBONDMASTER1 = RXCHBONDMASTER1_IN;
  assign delay_RXCHBONDSLAVE0 = RXCHBONDSLAVE0_IN;
  assign delay_RXCHBONDSLAVE1 = RXCHBONDSLAVE1_IN;
  assign delay_RXCOMMADETUSE0 = RXCOMMADETUSE0_IN;
  assign delay_RXCOMMADETUSE1 = RXCOMMADETUSE1_IN;
  assign delay_RXDATAWIDTH0 = RXDATAWIDTH0_IN;
  assign delay_RXDATAWIDTH1 = RXDATAWIDTH1_IN;
  assign delay_RXDEC8B10BUSE0 = RXDEC8B10BUSE0_IN;
  assign delay_RXDEC8B10BUSE1 = RXDEC8B10BUSE1_IN;
  assign delay_RXENCHANSYNC0 = RXENCHANSYNC0_IN;
  assign delay_RXENCHANSYNC1 = RXENCHANSYNC1_IN;
  assign delay_RXENMCOMMAALIGN0 = RXENMCOMMAALIGN0_IN;
  assign delay_RXENMCOMMAALIGN1 = RXENMCOMMAALIGN1_IN;
  assign delay_RXENPCOMMAALIGN0 = RXENPCOMMAALIGN0_IN;
  assign delay_RXENPCOMMAALIGN1 = RXENPCOMMAALIGN1_IN;
  assign delay_RXENPMAPHASEALIGN0 = RXENPMAPHASEALIGN0_IN;
  assign delay_RXENPMAPHASEALIGN1 = RXENPMAPHASEALIGN1_IN;
  assign delay_RXENPRBSTST0 = RXENPRBSTST0_IN;
  assign delay_RXENPRBSTST1 = RXENPRBSTST1_IN;
  assign delay_RXEQMIX0 = RXEQMIX0_IN;
  assign delay_RXEQMIX1 = RXEQMIX1_IN;
  assign delay_RXN0 = RXN0_IN;
  assign delay_RXN1 = RXN1_IN;
  assign delay_RXP0 = RXP0_IN;
  assign delay_RXP1 = RXP1_IN;
  assign delay_RXPMASETPHASE0 = RXPMASETPHASE0_IN;
  assign delay_RXPMASETPHASE1 = RXPMASETPHASE1_IN;
  assign delay_RXPOLARITY0 = RXPOLARITY0_IN;
  assign delay_RXPOLARITY1 = RXPOLARITY1_IN;
  assign delay_RXPOWERDOWN0 = RXPOWERDOWN0_IN;
  assign delay_RXPOWERDOWN1 = RXPOWERDOWN1_IN;
  assign delay_RXRESET0 = RXRESET0_IN;
  assign delay_RXRESET1 = RXRESET1_IN;
  assign delay_RXSLIDE0 = RXSLIDE0_IN;
  assign delay_RXSLIDE1 = RXSLIDE1_IN;
  assign delay_TSTIN0 = TSTIN0_IN;
  assign delay_TSTIN1 = TSTIN1_IN;
  assign delay_TXBUFDIFFCTRL0 = TXBUFDIFFCTRL0_IN;
  assign delay_TXBUFDIFFCTRL1 = TXBUFDIFFCTRL1_IN;
  assign delay_TXBYPASS8B10B0 = TXBYPASS8B10B0_IN;
  assign delay_TXBYPASS8B10B1 = TXBYPASS8B10B1_IN;
  assign delay_TXCHARDISPMODE0 = TXCHARDISPMODE0_IN;
  assign delay_TXCHARDISPMODE1 = TXCHARDISPMODE1_IN;
  assign delay_TXCHARDISPVAL0 = TXCHARDISPVAL0_IN;
  assign delay_TXCHARDISPVAL1 = TXCHARDISPVAL1_IN;
  assign delay_TXCHARISK0 = TXCHARISK0_IN;
  assign delay_TXCHARISK1 = TXCHARISK1_IN;
  assign delay_TXCOMSTART0 = TXCOMSTART0_IN;
  assign delay_TXCOMSTART1 = TXCOMSTART1_IN;
  assign delay_TXCOMTYPE0 = TXCOMTYPE0_IN;
  assign delay_TXCOMTYPE1 = TXCOMTYPE1_IN;
  assign delay_TXDATA0 = TXDATA0_IN;
  assign delay_TXDATA1 = TXDATA1_IN;
  assign delay_TXDATAWIDTH0 = TXDATAWIDTH0_IN;
  assign delay_TXDATAWIDTH1 = TXDATAWIDTH1_IN;
  assign delay_TXDETECTRX0 = TXDETECTRX0_IN;
  assign delay_TXDETECTRX1 = TXDETECTRX1_IN;
  assign delay_TXDIFFCTRL0 = TXDIFFCTRL0_IN;
  assign delay_TXDIFFCTRL1 = TXDIFFCTRL1_IN;
  assign delay_TXELECIDLE0 = TXELECIDLE0_IN;
  assign delay_TXELECIDLE1 = TXELECIDLE1_IN;
  assign delay_TXENC8B10BUSE0 = TXENC8B10BUSE0_IN;
  assign delay_TXENC8B10BUSE1 = TXENC8B10BUSE1_IN;
  assign delay_TXENPMAPHASEALIGN0 = TXENPMAPHASEALIGN0_IN;
  assign delay_TXENPMAPHASEALIGN1 = TXENPMAPHASEALIGN1_IN;
  assign delay_TXENPRBSTST0 = TXENPRBSTST0_IN;
  assign delay_TXENPRBSTST1 = TXENPRBSTST1_IN;
  assign delay_TXINHIBIT0 = TXINHIBIT0_IN;
  assign delay_TXINHIBIT1 = TXINHIBIT1_IN;
  assign delay_TXPDOWNASYNCH0 = TXPDOWNASYNCH0_IN;
  assign delay_TXPDOWNASYNCH1 = TXPDOWNASYNCH1_IN;
  assign delay_TXPMASETPHASE0 = TXPMASETPHASE0_IN;
  assign delay_TXPMASETPHASE1 = TXPMASETPHASE1_IN;
  assign delay_TXPOLARITY0 = TXPOLARITY0_IN;
  assign delay_TXPOLARITY1 = TXPOLARITY1_IN;
  assign delay_TXPOWERDOWN0 = TXPOWERDOWN0_IN;
  assign delay_TXPOWERDOWN1 = TXPOWERDOWN1_IN;
  assign delay_TXPRBSFORCEERR0 = TXPRBSFORCEERR0_IN;
  assign delay_TXPRBSFORCEERR1 = TXPRBSFORCEERR1_IN;
  assign delay_TXPREEMPHASIS0 = TXPREEMPHASIS0_IN;
  assign delay_TXPREEMPHASIS1 = TXPREEMPHASIS1_IN;
  assign delay_TXRESET0 = TXRESET0_IN;
  assign delay_TXRESET1 = TXRESET1_IN;
  assign delay_USRCODEERR0 = USRCODEERR0_IN;
  assign delay_USRCODEERR1 = USRCODEERR1_IN;


  B_GTPA1_DUAL #(
    .AC_CAP_DIS_0 (AC_CAP_DIS_0),
    .AC_CAP_DIS_1 (AC_CAP_DIS_1),
    .ALIGN_COMMA_WORD_0 (ALIGN_COMMA_WORD_0),
    .ALIGN_COMMA_WORD_1 (ALIGN_COMMA_WORD_1),
    .CB2_INH_CC_PERIOD_0 (CB2_INH_CC_PERIOD_0),
    .CB2_INH_CC_PERIOD_1 (CB2_INH_CC_PERIOD_1),
    .CDR_PH_ADJ_TIME_0 (CDR_PH_ADJ_TIME_0),
    .CDR_PH_ADJ_TIME_1 (CDR_PH_ADJ_TIME_1),
    .CHAN_BOND_1_MAX_SKEW_0 (CHAN_BOND_1_MAX_SKEW_0),
    .CHAN_BOND_1_MAX_SKEW_1 (CHAN_BOND_1_MAX_SKEW_1),
    .CHAN_BOND_2_MAX_SKEW_0 (CHAN_BOND_2_MAX_SKEW_0),
    .CHAN_BOND_2_MAX_SKEW_1 (CHAN_BOND_2_MAX_SKEW_1),
    .CHAN_BOND_KEEP_ALIGN_0 (CHAN_BOND_KEEP_ALIGN_0),
    .CHAN_BOND_KEEP_ALIGN_1 (CHAN_BOND_KEEP_ALIGN_1),
    .CHAN_BOND_SEQ_1_1_0 (CHAN_BOND_SEQ_1_1_0),
    .CHAN_BOND_SEQ_1_1_1 (CHAN_BOND_SEQ_1_1_1),
    .CHAN_BOND_SEQ_1_2_0 (CHAN_BOND_SEQ_1_2_0),
    .CHAN_BOND_SEQ_1_2_1 (CHAN_BOND_SEQ_1_2_1),
    .CHAN_BOND_SEQ_1_3_0 (CHAN_BOND_SEQ_1_3_0),
    .CHAN_BOND_SEQ_1_3_1 (CHAN_BOND_SEQ_1_3_1),
    .CHAN_BOND_SEQ_1_4_0 (CHAN_BOND_SEQ_1_4_0),
    .CHAN_BOND_SEQ_1_4_1 (CHAN_BOND_SEQ_1_4_1),
    .CHAN_BOND_SEQ_1_ENABLE_0 (CHAN_BOND_SEQ_1_ENABLE_0),
    .CHAN_BOND_SEQ_1_ENABLE_1 (CHAN_BOND_SEQ_1_ENABLE_1),
    .CHAN_BOND_SEQ_2_1_0 (CHAN_BOND_SEQ_2_1_0),
    .CHAN_BOND_SEQ_2_1_1 (CHAN_BOND_SEQ_2_1_1),
    .CHAN_BOND_SEQ_2_2_0 (CHAN_BOND_SEQ_2_2_0),
    .CHAN_BOND_SEQ_2_2_1 (CHAN_BOND_SEQ_2_2_1),
    .CHAN_BOND_SEQ_2_3_0 (CHAN_BOND_SEQ_2_3_0),
    .CHAN_BOND_SEQ_2_3_1 (CHAN_BOND_SEQ_2_3_1),
    .CHAN_BOND_SEQ_2_4_0 (CHAN_BOND_SEQ_2_4_0),
    .CHAN_BOND_SEQ_2_4_1 (CHAN_BOND_SEQ_2_4_1),
    .CHAN_BOND_SEQ_2_ENABLE_0 (CHAN_BOND_SEQ_2_ENABLE_0),
    .CHAN_BOND_SEQ_2_ENABLE_1 (CHAN_BOND_SEQ_2_ENABLE_1),
    .CHAN_BOND_SEQ_2_USE_0 (CHAN_BOND_SEQ_2_USE_0),
    .CHAN_BOND_SEQ_2_USE_1 (CHAN_BOND_SEQ_2_USE_1),
    .CHAN_BOND_SEQ_LEN_0 (CHAN_BOND_SEQ_LEN_0),
    .CHAN_BOND_SEQ_LEN_1 (CHAN_BOND_SEQ_LEN_1),
    .CLK25_DIVIDER_0 (CLK25_DIVIDER_0),
    .CLK25_DIVIDER_1 (CLK25_DIVIDER_1),
    .CLKINDC_B_0 (CLKINDC_B_0),
    .CLKINDC_B_1 (CLKINDC_B_1),
    .CLKRCV_TRST_0 (CLKRCV_TRST_0),
    .CLKRCV_TRST_1 (CLKRCV_TRST_1),
    .CLK_CORRECT_USE_0 (CLK_CORRECT_USE_0),
    .CLK_CORRECT_USE_1 (CLK_CORRECT_USE_1),
    .CLK_COR_ADJ_LEN_0 (CLK_COR_ADJ_LEN_0),
    .CLK_COR_ADJ_LEN_1 (CLK_COR_ADJ_LEN_1),
    .CLK_COR_DET_LEN_0 (CLK_COR_DET_LEN_0),
    .CLK_COR_DET_LEN_1 (CLK_COR_DET_LEN_1),
    .CLK_COR_INSERT_IDLE_FLAG_0 (CLK_COR_INSERT_IDLE_FLAG_0),
    .CLK_COR_INSERT_IDLE_FLAG_1 (CLK_COR_INSERT_IDLE_FLAG_1),
    .CLK_COR_KEEP_IDLE_0 (CLK_COR_KEEP_IDLE_0),
    .CLK_COR_KEEP_IDLE_1 (CLK_COR_KEEP_IDLE_1),
    .CLK_COR_MAX_LAT_0 (CLK_COR_MAX_LAT_0),
    .CLK_COR_MAX_LAT_1 (CLK_COR_MAX_LAT_1),
    .CLK_COR_MIN_LAT_0 (CLK_COR_MIN_LAT_0),
    .CLK_COR_MIN_LAT_1 (CLK_COR_MIN_LAT_1),
    .CLK_COR_PRECEDENCE_0 (CLK_COR_PRECEDENCE_0),
    .CLK_COR_PRECEDENCE_1 (CLK_COR_PRECEDENCE_1),
    .CLK_COR_REPEAT_WAIT_0 (CLK_COR_REPEAT_WAIT_0),
    .CLK_COR_REPEAT_WAIT_1 (CLK_COR_REPEAT_WAIT_1),
    .CLK_COR_SEQ_1_1_0 (CLK_COR_SEQ_1_1_0),
    .CLK_COR_SEQ_1_1_1 (CLK_COR_SEQ_1_1_1),
    .CLK_COR_SEQ_1_2_0 (CLK_COR_SEQ_1_2_0),
    .CLK_COR_SEQ_1_2_1 (CLK_COR_SEQ_1_2_1),
    .CLK_COR_SEQ_1_3_0 (CLK_COR_SEQ_1_3_0),
    .CLK_COR_SEQ_1_3_1 (CLK_COR_SEQ_1_3_1),
    .CLK_COR_SEQ_1_4_0 (CLK_COR_SEQ_1_4_0),
    .CLK_COR_SEQ_1_4_1 (CLK_COR_SEQ_1_4_1),
    .CLK_COR_SEQ_1_ENABLE_0 (CLK_COR_SEQ_1_ENABLE_0),
    .CLK_COR_SEQ_1_ENABLE_1 (CLK_COR_SEQ_1_ENABLE_1),
    .CLK_COR_SEQ_2_1_0 (CLK_COR_SEQ_2_1_0),
    .CLK_COR_SEQ_2_1_1 (CLK_COR_SEQ_2_1_1),
    .CLK_COR_SEQ_2_2_0 (CLK_COR_SEQ_2_2_0),
    .CLK_COR_SEQ_2_2_1 (CLK_COR_SEQ_2_2_1),
    .CLK_COR_SEQ_2_3_0 (CLK_COR_SEQ_2_3_0),
    .CLK_COR_SEQ_2_3_1 (CLK_COR_SEQ_2_3_1),
    .CLK_COR_SEQ_2_4_0 (CLK_COR_SEQ_2_4_0),
    .CLK_COR_SEQ_2_4_1 (CLK_COR_SEQ_2_4_1),
    .CLK_COR_SEQ_2_ENABLE_0 (CLK_COR_SEQ_2_ENABLE_0),
    .CLK_COR_SEQ_2_ENABLE_1 (CLK_COR_SEQ_2_ENABLE_1),
    .CLK_COR_SEQ_2_USE_0 (CLK_COR_SEQ_2_USE_0),
    .CLK_COR_SEQ_2_USE_1 (CLK_COR_SEQ_2_USE_1),
    .CLK_OUT_GTP_SEL_0 (CLK_OUT_GTP_SEL_0),
    .CLK_OUT_GTP_SEL_1 (CLK_OUT_GTP_SEL_1),
    .CM_TRIM_0 (CM_TRIM_0),
    .CM_TRIM_1 (CM_TRIM_1),
    .COMMA_10B_ENABLE_0 (COMMA_10B_ENABLE_0),
    .COMMA_10B_ENABLE_1 (COMMA_10B_ENABLE_1),
    .COM_BURST_VAL_0 (COM_BURST_VAL_0),
    .COM_BURST_VAL_1 (COM_BURST_VAL_1),
    .DEC_MCOMMA_DETECT_0 (DEC_MCOMMA_DETECT_0),
    .DEC_MCOMMA_DETECT_1 (DEC_MCOMMA_DETECT_1),
    .DEC_PCOMMA_DETECT_0 (DEC_PCOMMA_DETECT_0),
    .DEC_PCOMMA_DETECT_1 (DEC_PCOMMA_DETECT_1),
    .DEC_VALID_COMMA_ONLY_0 (DEC_VALID_COMMA_ONLY_0),
    .DEC_VALID_COMMA_ONLY_1 (DEC_VALID_COMMA_ONLY_1),
    .GTP_CFG_PWRUP_0 (GTP_CFG_PWRUP_0),
    .GTP_CFG_PWRUP_1 (GTP_CFG_PWRUP_1),
    .MCOMMA_10B_VALUE_0 (MCOMMA_10B_VALUE_0),
    .MCOMMA_10B_VALUE_1 (MCOMMA_10B_VALUE_1),
    .MCOMMA_DETECT_0 (MCOMMA_DETECT_0),
    .MCOMMA_DETECT_1 (MCOMMA_DETECT_1),
    .OOBDETECT_THRESHOLD_0 (OOBDETECT_THRESHOLD_0),
    .OOBDETECT_THRESHOLD_1 (OOBDETECT_THRESHOLD_1),
    .OOB_CLK_DIVIDER_0 (OOB_CLK_DIVIDER_0),
    .OOB_CLK_DIVIDER_1 (OOB_CLK_DIVIDER_1),
    .PCI_EXPRESS_MODE_0 (PCI_EXPRESS_MODE_0),
    .PCI_EXPRESS_MODE_1 (PCI_EXPRESS_MODE_1),
    .PCOMMA_10B_VALUE_0 (PCOMMA_10B_VALUE_0),
    .PCOMMA_10B_VALUE_1 (PCOMMA_10B_VALUE_1),
    .PCOMMA_DETECT_0 (PCOMMA_DETECT_0),
    .PCOMMA_DETECT_1 (PCOMMA_DETECT_1),
    .PLLLKDET_CFG_0 (PLLLKDET_CFG_0),
    .PLLLKDET_CFG_1 (PLLLKDET_CFG_1),
    .PLL_COM_CFG_0 (PLL_COM_CFG_0),
    .PLL_COM_CFG_1 (PLL_COM_CFG_1),
    .PLL_CP_CFG_0 (PLL_CP_CFG_0),
    .PLL_CP_CFG_1 (PLL_CP_CFG_1),
    .PLL_DIVSEL_FB_0 (PLL_DIVSEL_FB_0),
    .PLL_DIVSEL_FB_1 (PLL_DIVSEL_FB_1),
    .PLL_DIVSEL_REF_0 (PLL_DIVSEL_REF_0),
    .PLL_DIVSEL_REF_1 (PLL_DIVSEL_REF_1),
    .PLL_RXDIVSEL_OUT_0 (PLL_RXDIVSEL_OUT_0),
    .PLL_RXDIVSEL_OUT_1 (PLL_RXDIVSEL_OUT_1),
    .PLL_SATA_0 (PLL_SATA_0),
    .PLL_SATA_1 (PLL_SATA_1),
    .PLL_SOURCE_0 (PLL_SOURCE_0),
    .PLL_SOURCE_1 (PLL_SOURCE_1),
    .PLL_TXDIVSEL_OUT_0 (PLL_TXDIVSEL_OUT_0),
    .PLL_TXDIVSEL_OUT_1 (PLL_TXDIVSEL_OUT_1),
    .PMA_CDR_SCAN_0 (PMA_CDR_SCAN_0),
    .PMA_CDR_SCAN_1 (PMA_CDR_SCAN_1),
    .PMA_COM_CFG_EAST (PMA_COM_CFG_EAST),
    .PMA_COM_CFG_WEST (PMA_COM_CFG_WEST),
    .PMA_RXSYNC_CFG_0 (PMA_RXSYNC_CFG_0),
    .PMA_RXSYNC_CFG_1 (PMA_RXSYNC_CFG_1),
    .PMA_RX_CFG_0 (PMA_RX_CFG_0),
    .PMA_RX_CFG_1 (PMA_RX_CFG_1),
    .PMA_TX_CFG_0 (PMA_TX_CFG_0),
    .PMA_TX_CFG_1 (PMA_TX_CFG_1),
    .RCV_TERM_GND_0 (RCV_TERM_GND_0),
    .RCV_TERM_GND_1 (RCV_TERM_GND_1),
    .RCV_TERM_VTTRX_0 (RCV_TERM_VTTRX_0),
    .RCV_TERM_VTTRX_1 (RCV_TERM_VTTRX_1),
    .RXEQ_CFG_0 (RXEQ_CFG_0),
    .RXEQ_CFG_1 (RXEQ_CFG_1),
    .RXPRBSERR_LOOPBACK_0 (RXPRBSERR_LOOPBACK_0),
    .RXPRBSERR_LOOPBACK_1 (RXPRBSERR_LOOPBACK_1),
    .RX_BUFFER_USE_0 (RX_BUFFER_USE_0),
    .RX_BUFFER_USE_1 (RX_BUFFER_USE_1),
    .RX_DECODE_SEQ_MATCH_0 (RX_DECODE_SEQ_MATCH_0),
    .RX_DECODE_SEQ_MATCH_1 (RX_DECODE_SEQ_MATCH_1),
    .RX_EN_IDLE_HOLD_CDR_0 (RX_EN_IDLE_HOLD_CDR_0),
    .RX_EN_IDLE_HOLD_CDR_1 (RX_EN_IDLE_HOLD_CDR_1),
    .RX_EN_IDLE_RESET_BUF_0 (RX_EN_IDLE_RESET_BUF_0),
    .RX_EN_IDLE_RESET_BUF_1 (RX_EN_IDLE_RESET_BUF_1),
    .RX_EN_IDLE_RESET_FR_0 (RX_EN_IDLE_RESET_FR_0),
    .RX_EN_IDLE_RESET_FR_1 (RX_EN_IDLE_RESET_FR_1),
    .RX_EN_IDLE_RESET_PH_0 (RX_EN_IDLE_RESET_PH_0),
    .RX_EN_IDLE_RESET_PH_1 (RX_EN_IDLE_RESET_PH_1),
    .RX_EN_MODE_RESET_BUF_0 (RX_EN_MODE_RESET_BUF_0),
    .RX_EN_MODE_RESET_BUF_1 (RX_EN_MODE_RESET_BUF_1),
    .RX_IDLE_HI_CNT_0 (RX_IDLE_HI_CNT_0),
    .RX_IDLE_HI_CNT_1 (RX_IDLE_HI_CNT_1),
    .RX_IDLE_LO_CNT_0 (RX_IDLE_LO_CNT_0),
    .RX_IDLE_LO_CNT_1 (RX_IDLE_LO_CNT_1),
    .RX_LOSS_OF_SYNC_FSM_0 (RX_LOSS_OF_SYNC_FSM_0),
    .RX_LOSS_OF_SYNC_FSM_1 (RX_LOSS_OF_SYNC_FSM_1),
    .RX_LOS_INVALID_INCR_0 (RX_LOS_INVALID_INCR_0),
    .RX_LOS_INVALID_INCR_1 (RX_LOS_INVALID_INCR_1),
    .RX_LOS_THRESHOLD_0 (RX_LOS_THRESHOLD_0),
    .RX_LOS_THRESHOLD_1 (RX_LOS_THRESHOLD_1),
    .RX_SLIDE_MODE_0 (RX_SLIDE_MODE_0),
    .RX_SLIDE_MODE_1 (RX_SLIDE_MODE_1),
    .RX_STATUS_FMT_0 (RX_STATUS_FMT_0),
    .RX_STATUS_FMT_1 (RX_STATUS_FMT_1),
    .RX_XCLK_SEL_0 (RX_XCLK_SEL_0),
    .RX_XCLK_SEL_1 (RX_XCLK_SEL_1),
    .SATA_BURST_VAL_0 (SATA_BURST_VAL_0),
    .SATA_BURST_VAL_1 (SATA_BURST_VAL_1),
    .SATA_IDLE_VAL_0 (SATA_IDLE_VAL_0),
    .SATA_IDLE_VAL_1 (SATA_IDLE_VAL_1),
    .SATA_MAX_BURST_0 (SATA_MAX_BURST_0),
    .SATA_MAX_BURST_1 (SATA_MAX_BURST_1),
    .SATA_MAX_INIT_0 (SATA_MAX_INIT_0),
    .SATA_MAX_INIT_1 (SATA_MAX_INIT_1),
    .SATA_MAX_WAKE_0 (SATA_MAX_WAKE_0),
    .SATA_MAX_WAKE_1 (SATA_MAX_WAKE_1),
    .SATA_MIN_BURST_0 (SATA_MIN_BURST_0),
    .SATA_MIN_BURST_1 (SATA_MIN_BURST_1),
    .SATA_MIN_INIT_0 (SATA_MIN_INIT_0),
    .SATA_MIN_INIT_1 (SATA_MIN_INIT_1),
    .SATA_MIN_WAKE_0 (SATA_MIN_WAKE_0),
    .SATA_MIN_WAKE_1 (SATA_MIN_WAKE_1),
    .SIM_GTPRESET_SPEEDUP (SIM_GTPRESET_SPEEDUP),
    .SIM_RECEIVER_DETECT_PASS (SIM_RECEIVER_DETECT_PASS),
    .SIM_REFCLK0_SOURCE (SIM_REFCLK0_SOURCE),
    .SIM_REFCLK1_SOURCE (SIM_REFCLK1_SOURCE),
    .SIM_TX_ELEC_IDLE_LEVEL (SIM_TX_ELEC_IDLE_LEVEL),
    .SIM_VERSION (SIM_VERSION),
    .TERMINATION_CTRL_0 (TERMINATION_CTRL_0),
    .TERMINATION_CTRL_1 (TERMINATION_CTRL_1),
    .TERMINATION_OVRD_0 (TERMINATION_OVRD_0),
    .TERMINATION_OVRD_1 (TERMINATION_OVRD_1),
    .TRANS_TIME_FROM_P2_0 (TRANS_TIME_FROM_P2_0),
    .TRANS_TIME_FROM_P2_1 (TRANS_TIME_FROM_P2_1),
    .TRANS_TIME_NON_P2_0 (TRANS_TIME_NON_P2_0),
    .TRANS_TIME_NON_P2_1 (TRANS_TIME_NON_P2_1),
    .TRANS_TIME_TO_P2_0 (TRANS_TIME_TO_P2_0),
    .TRANS_TIME_TO_P2_1 (TRANS_TIME_TO_P2_1),
    .TST_ATTR_0 (TST_ATTR_0),
    .TST_ATTR_1 (TST_ATTR_1),
    .TXRX_INVERT_0 (TXRX_INVERT_0),
    .TXRX_INVERT_1 (TXRX_INVERT_1),
    .TX_BUFFER_USE_0 (TX_BUFFER_USE_0),
    .TX_BUFFER_USE_1 (TX_BUFFER_USE_1),
    .TX_DETECT_RX_CFG_0 (TX_DETECT_RX_CFG_0),
    .TX_DETECT_RX_CFG_1 (TX_DETECT_RX_CFG_1),
    .TX_IDLE_DELAY_0 (TX_IDLE_DELAY_0),
    .TX_IDLE_DELAY_1 (TX_IDLE_DELAY_1),
    .TX_TDCC_CFG_0 (TX_TDCC_CFG_0),
    .TX_TDCC_CFG_1 (TX_TDCC_CFG_1),
    .TX_XCLK_SEL_0 (TX_XCLK_SEL_0),
    .TX_XCLK_SEL_1 (TX_XCLK_SEL_1))

    B_GTPA1_DUAL_INST (
    .DRDY (delay_DRDY),
    .DRPDO (delay_DRPDO),
    .GTPCLKFBEAST (delay_GTPCLKFBEAST),
    .GTPCLKFBWEST (delay_GTPCLKFBWEST),
    .GTPCLKOUT0 (delay_GTPCLKOUT0),
    .GTPCLKOUT1 (delay_GTPCLKOUT1),
    .PHYSTATUS0 (delay_PHYSTATUS0),
    .PHYSTATUS1 (delay_PHYSTATUS1),
    .PLLLKDET0 (delay_PLLLKDET0),
    .PLLLKDET1 (delay_PLLLKDET1),
    .RCALOUTEAST (delay_RCALOUTEAST),
    .RCALOUTWEST (delay_RCALOUTWEST),
    .REFCLKOUT0 (delay_REFCLKOUT0),
    .REFCLKOUT1 (delay_REFCLKOUT1),
    .REFCLKPLL0 (delay_REFCLKPLL0),
    .REFCLKPLL1 (delay_REFCLKPLL1),
    .RESETDONE0 (delay_RESETDONE0),
    .RESETDONE1 (delay_RESETDONE1),
    .RXBUFSTATUS0 (delay_RXBUFSTATUS0),
    .RXBUFSTATUS1 (delay_RXBUFSTATUS1),
    .RXBYTEISALIGNED0 (delay_RXBYTEISALIGNED0),
    .RXBYTEISALIGNED1 (delay_RXBYTEISALIGNED1),
    .RXBYTEREALIGN0 (delay_RXBYTEREALIGN0),
    .RXBYTEREALIGN1 (delay_RXBYTEREALIGN1),
    .RXCHANBONDSEQ0 (delay_RXCHANBONDSEQ0),
    .RXCHANBONDSEQ1 (delay_RXCHANBONDSEQ1),
    .RXCHANISALIGNED0 (delay_RXCHANISALIGNED0),
    .RXCHANISALIGNED1 (delay_RXCHANISALIGNED1),
    .RXCHANREALIGN0 (delay_RXCHANREALIGN0),
    .RXCHANREALIGN1 (delay_RXCHANREALIGN1),
    .RXCHARISCOMMA0 (delay_RXCHARISCOMMA0),
    .RXCHARISCOMMA1 (delay_RXCHARISCOMMA1),
    .RXCHARISK0 (delay_RXCHARISK0),
    .RXCHARISK1 (delay_RXCHARISK1),
    .RXCHBONDO (delay_RXCHBONDO),
    .RXCLKCORCNT0 (delay_RXCLKCORCNT0),
    .RXCLKCORCNT1 (delay_RXCLKCORCNT1),
    .RXCOMMADET0 (delay_RXCOMMADET0),
    .RXCOMMADET1 (delay_RXCOMMADET1),
    .RXDATA0 (delay_RXDATA0),
    .RXDATA1 (delay_RXDATA1),
    .RXDISPERR0 (delay_RXDISPERR0),
    .RXDISPERR1 (delay_RXDISPERR1),
    .RXELECIDLE0 (delay_RXELECIDLE0),
    .RXELECIDLE1 (delay_RXELECIDLE1),
    .RXLOSSOFSYNC0 (delay_RXLOSSOFSYNC0),
    .RXLOSSOFSYNC1 (delay_RXLOSSOFSYNC1),
    .RXNOTINTABLE0 (delay_RXNOTINTABLE0),
    .RXNOTINTABLE1 (delay_RXNOTINTABLE1),
    .RXPRBSERR0 (delay_RXPRBSERR0),
    .RXPRBSERR1 (delay_RXPRBSERR1),
    .RXRECCLK0 (delay_RXRECCLK0),
    .RXRECCLK1 (delay_RXRECCLK1),
    .RXRUNDISP0 (delay_RXRUNDISP0),
    .RXRUNDISP1 (delay_RXRUNDISP1),
    .RXSTATUS0 (delay_RXSTATUS0),
    .RXSTATUS1 (delay_RXSTATUS1),
    .RXVALID0 (delay_RXVALID0),
    .RXVALID1 (delay_RXVALID1),
    .TSTOUT0 (delay_TSTOUT0),
    .TSTOUT1 (delay_TSTOUT1),
    .TXBUFSTATUS0 (delay_TXBUFSTATUS0),
    .TXBUFSTATUS1 (delay_TXBUFSTATUS1),
    .TXKERR0 (delay_TXKERR0),
    .TXKERR1 (delay_TXKERR1),
    .TXN0 (delay_TXN0),
    .TXN1 (delay_TXN1),
    .TXOUTCLK0 (delay_TXOUTCLK0),
    .TXOUTCLK1 (delay_TXOUTCLK1),
    .TXP0 (delay_TXP0),
    .TXP1 (delay_TXP1),
    .TXRUNDISP0 (delay_TXRUNDISP0),
    .TXRUNDISP1 (delay_TXRUNDISP1),
    .CLK00 (delay_CLK00),
    .CLK01 (delay_CLK01),
    .CLK10 (delay_CLK10),
    .CLK11 (delay_CLK11),
    .CLKINEAST0 (delay_CLKINEAST0),
    .CLKINEAST1 (delay_CLKINEAST1),
    .CLKINWEST0 (delay_CLKINWEST0),
    .CLKINWEST1 (delay_CLKINWEST1),
    .DADDR (delay_DADDR),
    .DCLK (delay_DCLK),
    .DEN (delay_DEN),
    .DI (delay_DI),
    .DWE (delay_DWE),
    .GATERXELECIDLE0 (delay_GATERXELECIDLE0),
    .GATERXELECIDLE1 (delay_GATERXELECIDLE1),
    .GCLK00 (delay_GCLK00),
    .GCLK01 (delay_GCLK01),
    .GCLK10 (delay_GCLK10),
    .GCLK11 (delay_GCLK11),
    .GTPCLKFBSEL0EAST (delay_GTPCLKFBSEL0EAST),
    .GTPCLKFBSEL0WEST (delay_GTPCLKFBSEL0WEST),
    .GTPCLKFBSEL1EAST (delay_GTPCLKFBSEL1EAST),
    .GTPCLKFBSEL1WEST (delay_GTPCLKFBSEL1WEST),
    .GTPRESET0 (delay_GTPRESET0),
    .GTPRESET1 (delay_GTPRESET1),
    .GTPTEST0 (delay_GTPTEST0),
    .GTPTEST1 (delay_GTPTEST1),
    .IGNORESIGDET0 (delay_IGNORESIGDET0),
    .IGNORESIGDET1 (delay_IGNORESIGDET1),
    .INTDATAWIDTH0 (delay_INTDATAWIDTH0),
    .INTDATAWIDTH1 (delay_INTDATAWIDTH1),
    .LOOPBACK0 (delay_LOOPBACK0),
    .LOOPBACK1 (delay_LOOPBACK1),
    .PLLCLK00 (delay_PLLCLK00),
    .PLLCLK01 (delay_PLLCLK01),
    .PLLCLK10 (delay_PLLCLK10),
    .PLLCLK11 (delay_PLLCLK11),
    .PLLLKDETEN0 (delay_PLLLKDETEN0),
    .PLLLKDETEN1 (delay_PLLLKDETEN1),
    .PLLPOWERDOWN0 (delay_PLLPOWERDOWN0),
    .PLLPOWERDOWN1 (delay_PLLPOWERDOWN1),
    .PRBSCNTRESET0 (delay_PRBSCNTRESET0),
    .PRBSCNTRESET1 (delay_PRBSCNTRESET1),
    .RCALINEAST (delay_RCALINEAST),
    .RCALINWEST (delay_RCALINWEST),
    .REFCLKPWRDNB0 (delay_REFCLKPWRDNB0),
    .REFCLKPWRDNB1 (delay_REFCLKPWRDNB1),
    .REFSELDYPLL0 (delay_REFSELDYPLL0),
    .REFSELDYPLL1 (delay_REFSELDYPLL1),
    .RXBUFRESET0 (delay_RXBUFRESET0),
    .RXBUFRESET1 (delay_RXBUFRESET1),
    .RXCDRRESET0 (delay_RXCDRRESET0),
    .RXCDRRESET1 (delay_RXCDRRESET1),
    .RXCHBONDI (delay_RXCHBONDI),
    .RXCHBONDMASTER0 (delay_RXCHBONDMASTER0),
    .RXCHBONDMASTER1 (delay_RXCHBONDMASTER1),
    .RXCHBONDSLAVE0 (delay_RXCHBONDSLAVE0),
    .RXCHBONDSLAVE1 (delay_RXCHBONDSLAVE1),
    .RXCOMMADETUSE0 (delay_RXCOMMADETUSE0),
    .RXCOMMADETUSE1 (delay_RXCOMMADETUSE1),
    .RXDATAWIDTH0 (delay_RXDATAWIDTH0),
    .RXDATAWIDTH1 (delay_RXDATAWIDTH1),
    .RXDEC8B10BUSE0 (delay_RXDEC8B10BUSE0),
    .RXDEC8B10BUSE1 (delay_RXDEC8B10BUSE1),
    .RXENCHANSYNC0 (delay_RXENCHANSYNC0),
    .RXENCHANSYNC1 (delay_RXENCHANSYNC1),
    .RXENMCOMMAALIGN0 (delay_RXENMCOMMAALIGN0),
    .RXENMCOMMAALIGN1 (delay_RXENMCOMMAALIGN1),
    .RXENPCOMMAALIGN0 (delay_RXENPCOMMAALIGN0),
    .RXENPCOMMAALIGN1 (delay_RXENPCOMMAALIGN1),
    .RXENPMAPHASEALIGN0 (delay_RXENPMAPHASEALIGN0),
    .RXENPMAPHASEALIGN1 (delay_RXENPMAPHASEALIGN1),
    .RXENPRBSTST0 (delay_RXENPRBSTST0),
    .RXENPRBSTST1 (delay_RXENPRBSTST1),
    .RXEQMIX0 (delay_RXEQMIX0),
    .RXEQMIX1 (delay_RXEQMIX1),
    .RXN0 (delay_RXN0),
    .RXN1 (delay_RXN1),
    .RXP0 (delay_RXP0),
    .RXP1 (delay_RXP1),
    .RXPMASETPHASE0 (delay_RXPMASETPHASE0),
    .RXPMASETPHASE1 (delay_RXPMASETPHASE1),
    .RXPOLARITY0 (delay_RXPOLARITY0),
    .RXPOLARITY1 (delay_RXPOLARITY1),
    .RXPOWERDOWN0 (delay_RXPOWERDOWN0),
    .RXPOWERDOWN1 (delay_RXPOWERDOWN1),
    .RXRESET0 (delay_RXRESET0),
    .RXRESET1 (delay_RXRESET1),
    .RXSLIDE0 (delay_RXSLIDE0),
    .RXSLIDE1 (delay_RXSLIDE1),
    .RXUSRCLK0 (delay_RXUSRCLK0),
    .RXUSRCLK1 (delay_RXUSRCLK1),
    .RXUSRCLK20 (delay_RXUSRCLK20),
    .RXUSRCLK21 (delay_RXUSRCLK21),
    .TSTCLK0 (delay_TSTCLK0),
    .TSTCLK1 (delay_TSTCLK1),
    .TSTIN0 (delay_TSTIN0),
    .TSTIN1 (delay_TSTIN1),
    .TXBUFDIFFCTRL0 (delay_TXBUFDIFFCTRL0),
    .TXBUFDIFFCTRL1 (delay_TXBUFDIFFCTRL1),
    .TXBYPASS8B10B0 (delay_TXBYPASS8B10B0),
    .TXBYPASS8B10B1 (delay_TXBYPASS8B10B1),
    .TXCHARDISPMODE0 (delay_TXCHARDISPMODE0),
    .TXCHARDISPMODE1 (delay_TXCHARDISPMODE1),
    .TXCHARDISPVAL0 (delay_TXCHARDISPVAL0),
    .TXCHARDISPVAL1 (delay_TXCHARDISPVAL1),
    .TXCHARISK0 (delay_TXCHARISK0),
    .TXCHARISK1 (delay_TXCHARISK1),
    .TXCOMSTART0 (delay_TXCOMSTART0),
    .TXCOMSTART1 (delay_TXCOMSTART1),
    .TXCOMTYPE0 (delay_TXCOMTYPE0),
    .TXCOMTYPE1 (delay_TXCOMTYPE1),
    .TXDATA0 (delay_TXDATA0),
    .TXDATA1 (delay_TXDATA1),
    .TXDATAWIDTH0 (delay_TXDATAWIDTH0),
    .TXDATAWIDTH1 (delay_TXDATAWIDTH1),
    .TXDETECTRX0 (delay_TXDETECTRX0),
    .TXDETECTRX1 (delay_TXDETECTRX1),
    .TXDIFFCTRL0 (delay_TXDIFFCTRL0),
    .TXDIFFCTRL1 (delay_TXDIFFCTRL1),
    .TXELECIDLE0 (delay_TXELECIDLE0),
    .TXELECIDLE1 (delay_TXELECIDLE1),
    .TXENC8B10BUSE0 (delay_TXENC8B10BUSE0),
    .TXENC8B10BUSE1 (delay_TXENC8B10BUSE1),
    .TXENPMAPHASEALIGN0 (delay_TXENPMAPHASEALIGN0),
    .TXENPMAPHASEALIGN1 (delay_TXENPMAPHASEALIGN1),
    .TXENPRBSTST0 (delay_TXENPRBSTST0),
    .TXENPRBSTST1 (delay_TXENPRBSTST1),
    .TXINHIBIT0 (delay_TXINHIBIT0),
    .TXINHIBIT1 (delay_TXINHIBIT1),
    .TXPDOWNASYNCH0 (delay_TXPDOWNASYNCH0),
    .TXPDOWNASYNCH1 (delay_TXPDOWNASYNCH1),
    .TXPMASETPHASE0 (delay_TXPMASETPHASE0),
    .TXPMASETPHASE1 (delay_TXPMASETPHASE1),
    .TXPOLARITY0 (delay_TXPOLARITY0),
    .TXPOLARITY1 (delay_TXPOLARITY1),
    .TXPOWERDOWN0 (delay_TXPOWERDOWN0),
    .TXPOWERDOWN1 (delay_TXPOWERDOWN1),
    .TXPRBSFORCEERR0 (delay_TXPRBSFORCEERR0),
    .TXPRBSFORCEERR1 (delay_TXPRBSFORCEERR1),
    .TXPREEMPHASIS0 (delay_TXPREEMPHASIS0),
    .TXPREEMPHASIS1 (delay_TXPREEMPHASIS1),
    .TXRESET0 (delay_TXRESET0),
    .TXRESET1 (delay_TXRESET1),
    .TXUSRCLK0 (delay_TXUSRCLK0),
    .TXUSRCLK1 (delay_TXUSRCLK1),
    .TXUSRCLK20 (delay_TXUSRCLK20),
    .TXUSRCLK21 (delay_TXUSRCLK21),
    .USRCODEERR0 (delay_USRCODEERR0),
    .USRCODEERR1 (delay_USRCODEERR1),
    .GSR(GSR)
  );

  specify
    $period (posedge CLK00, 0:0:0, notifier);
    $period (posedge CLK01, 0:0:0, notifier);
    $period (posedge CLK10, 0:0:0, notifier);
    $period (posedge CLK11, 0:0:0, notifier);
    $period (posedge CLKINEAST0, 0:0:0, notifier);
    $period (posedge CLKINEAST1, 0:0:0, notifier);
    $period (posedge CLKINWEST0, 0:0:0, notifier);
    $period (posedge CLKINWEST1, 0:0:0, notifier);
    $period (posedge DCLK, 0:0:0, notifier);
    $period (posedge GCLK00, 0:0:0, notifier);
    $period (posedge GCLK01, 0:0:0, notifier);
    $period (posedge GCLK10, 0:0:0, notifier);
    $period (posedge GCLK11, 0:0:0, notifier);
    $period (posedge PLLCLK00, 0:0:0, notifier);
    $period (posedge PLLCLK01, 0:0:0, notifier);
    $period (posedge PLLCLK10, 0:0:0, notifier);
    $period (posedge PLLCLK11, 0:0:0, notifier);
    $period (posedge RXUSRCLK0, 0:0:0, notifier);
    $period (posedge RXUSRCLK1, 0:0:0, notifier);
    $period (posedge RXUSRCLK20, 0:0:0, notifier);
    $period (posedge RXUSRCLK21, 0:0:0, notifier);
    $period (posedge TSTCLK0, 0:0:0, notifier);
    $period (posedge TSTCLK1, 0:0:0, notifier);
    $period (posedge TXUSRCLK0, 0:0:0, notifier);
    $period (posedge TXUSRCLK1, 0:0:0, notifier);
    $period (posedge TXUSRCLK20, 0:0:0, notifier);
    $period (posedge TXUSRCLK21, 0:0:0, notifier);
    $setuphold (posedge DCLK, negedge DADDR[0], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[0]);
    $setuphold (posedge DCLK, negedge DADDR[1], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[1]);
    $setuphold (posedge DCLK, negedge DADDR[2], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[2]);
    $setuphold (posedge DCLK, negedge DADDR[3], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[3]);
    $setuphold (posedge DCLK, negedge DADDR[4], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[4]);
    $setuphold (posedge DCLK, negedge DADDR[5], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[5]);
    $setuphold (posedge DCLK, negedge DADDR[6], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[6]);
    $setuphold (posedge DCLK, negedge DADDR[7], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[7]);
    $setuphold (posedge DCLK, negedge DEN, 0:0:0, 0:0:0, notifier,,, DCLK_IN, DEN_IN);
    $setuphold (posedge DCLK, negedge DI[0], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[0]);
    $setuphold (posedge DCLK, negedge DI[10], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[10]);
    $setuphold (posedge DCLK, negedge DI[11], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[11]);
    $setuphold (posedge DCLK, negedge DI[12], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[12]);
    $setuphold (posedge DCLK, negedge DI[13], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[13]);
    $setuphold (posedge DCLK, negedge DI[14], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[14]);
    $setuphold (posedge DCLK, negedge DI[15], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[15]);
    $setuphold (posedge DCLK, negedge DI[1], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[1]);
    $setuphold (posedge DCLK, negedge DI[2], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[2]);
    $setuphold (posedge DCLK, negedge DI[3], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[3]);
    $setuphold (posedge DCLK, negedge DI[4], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[4]);
    $setuphold (posedge DCLK, negedge DI[5], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[5]);
    $setuphold (posedge DCLK, negedge DI[6], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[6]);
    $setuphold (posedge DCLK, negedge DI[7], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[7]);
    $setuphold (posedge DCLK, negedge DI[8], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[8]);
    $setuphold (posedge DCLK, negedge DI[9], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[9]);
    $setuphold (posedge DCLK, negedge DWE, 0:0:0, 0:0:0, notifier,,, DCLK_IN, DWE_IN);
    $setuphold (posedge DCLK, posedge DADDR[0], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[0]);
    $setuphold (posedge DCLK, posedge DADDR[1], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[1]);
    $setuphold (posedge DCLK, posedge DADDR[2], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[2]);
    $setuphold (posedge DCLK, posedge DADDR[3], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[3]);
    $setuphold (posedge DCLK, posedge DADDR[4], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[4]);
    $setuphold (posedge DCLK, posedge DADDR[5], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[5]);
    $setuphold (posedge DCLK, posedge DADDR[6], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[6]);
    $setuphold (posedge DCLK, posedge DADDR[7], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DADDR_IN[7]);
    $setuphold (posedge DCLK, posedge DEN, 0:0:0, 0:0:0, notifier,,, DCLK_IN, DEN_IN);
    $setuphold (posedge DCLK, posedge DI[0], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[0]);
    $setuphold (posedge DCLK, posedge DI[10], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[10]);
    $setuphold (posedge DCLK, posedge DI[11], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[11]);
    $setuphold (posedge DCLK, posedge DI[12], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[12]);
    $setuphold (posedge DCLK, posedge DI[13], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[13]);
    $setuphold (posedge DCLK, posedge DI[14], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[14]);
    $setuphold (posedge DCLK, posedge DI[15], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[15]);
    $setuphold (posedge DCLK, posedge DI[1], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[1]);
    $setuphold (posedge DCLK, posedge DI[2], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[2]);
    $setuphold (posedge DCLK, posedge DI[3], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[3]);
    $setuphold (posedge DCLK, posedge DI[4], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[4]);
    $setuphold (posedge DCLK, posedge DI[5], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[5]);
    $setuphold (posedge DCLK, posedge DI[6], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[6]);
    $setuphold (posedge DCLK, posedge DI[7], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[7]);
    $setuphold (posedge DCLK, posedge DI[8], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[8]);
    $setuphold (posedge DCLK, posedge DI[9], 0:0:0, 0:0:0, notifier,,, DCLK_IN, DI_IN[9]);
    $setuphold (posedge DCLK, posedge DWE, 0:0:0, 0:0:0, notifier,,, DCLK_IN, DWE_IN);
    $setuphold (posedge RXUSRCLK0, negedge RXCHBONDI[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK0_IN, RXCHBONDI_IN[0]);
    $setuphold (posedge RXUSRCLK0, negedge RXCHBONDI[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK0_IN, RXCHBONDI_IN[1]);
    $setuphold (posedge RXUSRCLK0, negedge RXCHBONDI[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK0_IN, RXCHBONDI_IN[2]);
    $setuphold (posedge RXUSRCLK0, posedge RXCHBONDI[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK0_IN, RXCHBONDI_IN[0]);
    $setuphold (posedge RXUSRCLK0, posedge RXCHBONDI[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK0_IN, RXCHBONDI_IN[1]);
    $setuphold (posedge RXUSRCLK0, posedge RXCHBONDI[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK0_IN, RXCHBONDI_IN[2]);
    $setuphold (posedge RXUSRCLK1, negedge RXCHBONDI[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK1_IN, RXCHBONDI_IN[0]);
    $setuphold (posedge RXUSRCLK1, negedge RXCHBONDI[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK1_IN, RXCHBONDI_IN[1]);
    $setuphold (posedge RXUSRCLK1, negedge RXCHBONDI[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK1_IN, RXCHBONDI_IN[2]);
    $setuphold (posedge RXUSRCLK1, posedge RXCHBONDI[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK1_IN, RXCHBONDI_IN[0]);
    $setuphold (posedge RXUSRCLK1, posedge RXCHBONDI[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK1_IN, RXCHBONDI_IN[1]);
    $setuphold (posedge RXUSRCLK1, posedge RXCHBONDI[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK1_IN, RXCHBONDI_IN[2]);
    $setuphold (posedge RXUSRCLK20, negedge PRBSCNTRESET0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, PRBSCNTRESET0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXCHBONDMASTER0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXCHBONDMASTER0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXCHBONDSLAVE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXCHBONDSLAVE0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXCOMMADETUSE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXCOMMADETUSE0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXDEC8B10BUSE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXDEC8B10BUSE0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXENCHANSYNC0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENCHANSYNC0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXENMCOMMAALIGN0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENMCOMMAALIGN0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXENPCOMMAALIGN0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPCOMMAALIGN0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXENPRBSTST0[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPRBSTST0_IN[0]);
    $setuphold (posedge RXUSRCLK20, negedge RXENPRBSTST0[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPRBSTST0_IN[1]);
    $setuphold (posedge RXUSRCLK20, negedge RXENPRBSTST0[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPRBSTST0_IN[2]);
    $setuphold (posedge RXUSRCLK20, negedge RXPOLARITY0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXPOLARITY0_IN);
    $setuphold (posedge RXUSRCLK20, negedge RXSLIDE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXSLIDE0_IN);
    $setuphold (posedge RXUSRCLK20, negedge USRCODEERR0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, USRCODEERR0_IN);
    $setuphold (posedge RXUSRCLK20, posedge PRBSCNTRESET0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, PRBSCNTRESET0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXCHBONDMASTER0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXCHBONDMASTER0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXCHBONDSLAVE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXCHBONDSLAVE0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXCOMMADETUSE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXCOMMADETUSE0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXDEC8B10BUSE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXDEC8B10BUSE0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXENCHANSYNC0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENCHANSYNC0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXENMCOMMAALIGN0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENMCOMMAALIGN0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXENPCOMMAALIGN0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPCOMMAALIGN0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXENPRBSTST0[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPRBSTST0_IN[0]);
    $setuphold (posedge RXUSRCLK20, posedge RXENPRBSTST0[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPRBSTST0_IN[1]);
    $setuphold (posedge RXUSRCLK20, posedge RXENPRBSTST0[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXENPRBSTST0_IN[2]);
    $setuphold (posedge RXUSRCLK20, posedge RXPOLARITY0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXPOLARITY0_IN);
    $setuphold (posedge RXUSRCLK20, posedge RXSLIDE0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, RXSLIDE0_IN);
    $setuphold (posedge RXUSRCLK20, posedge USRCODEERR0, 0:0:0, 0:0:0, notifier,,, RXUSRCLK20_IN, USRCODEERR0_IN);
    $setuphold (posedge RXUSRCLK21, negedge PRBSCNTRESET1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, PRBSCNTRESET1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXCHBONDMASTER1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXCHBONDMASTER1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXCHBONDSLAVE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXCHBONDSLAVE1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXCOMMADETUSE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXCOMMADETUSE1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXDEC8B10BUSE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXDEC8B10BUSE1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXENCHANSYNC1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENCHANSYNC1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXENMCOMMAALIGN1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENMCOMMAALIGN1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXENPCOMMAALIGN1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPCOMMAALIGN1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXENPRBSTST1[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPRBSTST1_IN[0]);
    $setuphold (posedge RXUSRCLK21, negedge RXENPRBSTST1[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPRBSTST1_IN[1]);
    $setuphold (posedge RXUSRCLK21, negedge RXENPRBSTST1[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPRBSTST1_IN[2]);
    $setuphold (posedge RXUSRCLK21, negedge RXPOLARITY1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXPOLARITY1_IN);
    $setuphold (posedge RXUSRCLK21, negedge RXSLIDE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXSLIDE1_IN);
    $setuphold (posedge RXUSRCLK21, negedge USRCODEERR1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, USRCODEERR1_IN);
    $setuphold (posedge RXUSRCLK21, posedge PRBSCNTRESET1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, PRBSCNTRESET1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXCHBONDMASTER1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXCHBONDMASTER1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXCHBONDSLAVE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXCHBONDSLAVE1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXCOMMADETUSE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXCOMMADETUSE1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXDEC8B10BUSE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXDEC8B10BUSE1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXENCHANSYNC1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENCHANSYNC1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXENMCOMMAALIGN1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENMCOMMAALIGN1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXENPCOMMAALIGN1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPCOMMAALIGN1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXENPRBSTST1[0], 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPRBSTST1_IN[0]);
    $setuphold (posedge RXUSRCLK21, posedge RXENPRBSTST1[1], 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPRBSTST1_IN[1]);
    $setuphold (posedge RXUSRCLK21, posedge RXENPRBSTST1[2], 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXENPRBSTST1_IN[2]);
    $setuphold (posedge RXUSRCLK21, posedge RXPOLARITY1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXPOLARITY1_IN);
    $setuphold (posedge RXUSRCLK21, posedge RXSLIDE1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, RXSLIDE1_IN);
    $setuphold (posedge RXUSRCLK21, posedge USRCODEERR1, 0:0:0, 0:0:0, notifier,,, RXUSRCLK21_IN, USRCODEERR1_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXBYPASS8B10B0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[0]);
    $setuphold (posedge TXUSRCLK20, negedge TXBYPASS8B10B0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[1]);
    $setuphold (posedge TXUSRCLK20, negedge TXBYPASS8B10B0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[2]);
    $setuphold (posedge TXUSRCLK20, negedge TXBYPASS8B10B0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[3]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPMODE0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[0]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPMODE0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[1]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPMODE0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[2]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPMODE0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[3]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPVAL0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[0]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPVAL0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[1]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPVAL0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[2]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARDISPVAL0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[3]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARISK0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[0]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARISK0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[1]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARISK0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[2]);
    $setuphold (posedge TXUSRCLK20, negedge TXCHARISK0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[3]);
    $setuphold (posedge TXUSRCLK20, negedge TXCOMSTART0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCOMSTART0_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXCOMTYPE0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCOMTYPE0_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[0]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[10], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[10]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[11], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[11]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[12], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[12]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[13], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[13]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[14], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[14]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[15], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[15]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[16], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[16]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[17], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[17]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[18], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[18]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[19], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[19]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[1]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[20], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[20]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[21], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[21]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[22], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[22]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[23], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[23]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[24], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[24]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[25], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[25]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[26], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[26]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[27], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[27]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[28], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[28]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[29], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[29]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[2]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[30], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[30]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[31], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[31]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[3]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[4], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[4]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[5], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[5]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[6], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[6]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[7], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[7]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[8], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[8]);
    $setuphold (posedge TXUSRCLK20, negedge TXDATA0[9], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[9]);
    $setuphold (posedge TXUSRCLK20, negedge TXDETECTRX0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDETECTRX0_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXELECIDLE0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXELECIDLE0_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXENC8B10BUSE0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENC8B10BUSE0_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXENPRBSTST0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENPRBSTST0_IN[0]);
    $setuphold (posedge TXUSRCLK20, negedge TXENPRBSTST0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENPRBSTST0_IN[1]);
    $setuphold (posedge TXUSRCLK20, negedge TXENPRBSTST0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENPRBSTST0_IN[2]);
    $setuphold (posedge TXUSRCLK20, negedge TXINHIBIT0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXINHIBIT0_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXPOLARITY0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPOLARITY0_IN);
    $setuphold (posedge TXUSRCLK20, negedge TXPOWERDOWN0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPOWERDOWN0_IN[0]);
    $setuphold (posedge TXUSRCLK20, negedge TXPOWERDOWN0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPOWERDOWN0_IN[1]);
    $setuphold (posedge TXUSRCLK20, negedge TXPRBSFORCEERR0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPRBSFORCEERR0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXBYPASS8B10B0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[0]);
    $setuphold (posedge TXUSRCLK20, posedge TXBYPASS8B10B0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[1]);
    $setuphold (posedge TXUSRCLK20, posedge TXBYPASS8B10B0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[2]);
    $setuphold (posedge TXUSRCLK20, posedge TXBYPASS8B10B0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXBYPASS8B10B0_IN[3]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPMODE0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[0]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPMODE0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[1]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPMODE0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[2]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPMODE0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPMODE0_IN[3]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPVAL0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[0]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPVAL0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[1]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPVAL0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[2]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARDISPVAL0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARDISPVAL0_IN[3]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARISK0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[0]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARISK0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[1]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARISK0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[2]);
    $setuphold (posedge TXUSRCLK20, posedge TXCHARISK0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCHARISK0_IN[3]);
    $setuphold (posedge TXUSRCLK20, posedge TXCOMSTART0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCOMSTART0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXCOMTYPE0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXCOMTYPE0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[0]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[10], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[10]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[11], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[11]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[12], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[12]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[13], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[13]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[14], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[14]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[15], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[15]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[16], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[16]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[17], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[17]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[18], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[18]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[19], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[19]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[1]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[20], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[20]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[21], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[21]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[22], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[22]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[23], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[23]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[24], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[24]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[25], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[25]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[26], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[26]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[27], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[27]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[28], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[28]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[29], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[29]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[2]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[30], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[30]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[31], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[31]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[3]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[4], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[4]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[5], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[5]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[6], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[6]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[7], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[7]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[8], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[8]);
    $setuphold (posedge TXUSRCLK20, posedge TXDATA0[9], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDATA0_IN[9]);
    $setuphold (posedge TXUSRCLK20, posedge TXDETECTRX0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXDETECTRX0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXELECIDLE0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXELECIDLE0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXENC8B10BUSE0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENC8B10BUSE0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXENPRBSTST0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENPRBSTST0_IN[0]);
    $setuphold (posedge TXUSRCLK20, posedge TXENPRBSTST0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENPRBSTST0_IN[1]);
    $setuphold (posedge TXUSRCLK20, posedge TXENPRBSTST0[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXENPRBSTST0_IN[2]);
    $setuphold (posedge TXUSRCLK20, posedge TXINHIBIT0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXINHIBIT0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXPOLARITY0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPOLARITY0_IN);
    $setuphold (posedge TXUSRCLK20, posedge TXPOWERDOWN0[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPOWERDOWN0_IN[0]);
    $setuphold (posedge TXUSRCLK20, posedge TXPOWERDOWN0[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPOWERDOWN0_IN[1]);
    $setuphold (posedge TXUSRCLK20, posedge TXPRBSFORCEERR0, 0:0:0, 0:0:0, notifier,,, TXUSRCLK20_IN, TXPRBSFORCEERR0_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXBYPASS8B10B1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[0]);
    $setuphold (posedge TXUSRCLK21, negedge TXBYPASS8B10B1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[1]);
    $setuphold (posedge TXUSRCLK21, negedge TXBYPASS8B10B1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[2]);
    $setuphold (posedge TXUSRCLK21, negedge TXBYPASS8B10B1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[3]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPMODE1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[0]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPMODE1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[1]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPMODE1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[2]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPMODE1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[3]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPVAL1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[0]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPVAL1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[1]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPVAL1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[2]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARDISPVAL1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[3]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARISK1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[0]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARISK1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[1]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARISK1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[2]);
    $setuphold (posedge TXUSRCLK21, negedge TXCHARISK1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[3]);
    $setuphold (posedge TXUSRCLK21, negedge TXCOMSTART1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCOMSTART1_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXCOMTYPE1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCOMTYPE1_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[0]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[10], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[10]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[11], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[11]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[12], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[12]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[13], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[13]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[14], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[14]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[15], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[15]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[16], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[16]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[17], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[17]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[18], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[18]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[19], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[19]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[1]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[20], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[20]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[21], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[21]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[22], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[22]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[23], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[23]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[24], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[24]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[25], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[25]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[26], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[26]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[27], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[27]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[28], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[28]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[29], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[29]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[2]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[30], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[30]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[31], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[31]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[3]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[4], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[4]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[5], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[5]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[6], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[6]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[7], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[7]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[8], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[8]);
    $setuphold (posedge TXUSRCLK21, negedge TXDATA1[9], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[9]);
    $setuphold (posedge TXUSRCLK21, negedge TXDETECTRX1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDETECTRX1_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXELECIDLE1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXELECIDLE1_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXENC8B10BUSE1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENC8B10BUSE1_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXENPRBSTST1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENPRBSTST1_IN[0]);
    $setuphold (posedge TXUSRCLK21, negedge TXENPRBSTST1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENPRBSTST1_IN[1]);
    $setuphold (posedge TXUSRCLK21, negedge TXENPRBSTST1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENPRBSTST1_IN[2]);
    $setuphold (posedge TXUSRCLK21, negedge TXINHIBIT1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXINHIBIT1_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXPOLARITY1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPOLARITY1_IN);
    $setuphold (posedge TXUSRCLK21, negedge TXPOWERDOWN1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPOWERDOWN1_IN[0]);
    $setuphold (posedge TXUSRCLK21, negedge TXPOWERDOWN1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPOWERDOWN1_IN[1]);
    $setuphold (posedge TXUSRCLK21, negedge TXPRBSFORCEERR1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPRBSFORCEERR1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXBYPASS8B10B1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[0]);
    $setuphold (posedge TXUSRCLK21, posedge TXBYPASS8B10B1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[1]);
    $setuphold (posedge TXUSRCLK21, posedge TXBYPASS8B10B1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[2]);
    $setuphold (posedge TXUSRCLK21, posedge TXBYPASS8B10B1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXBYPASS8B10B1_IN[3]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPMODE1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[0]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPMODE1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[1]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPMODE1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[2]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPMODE1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPMODE1_IN[3]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPVAL1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[0]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPVAL1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[1]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPVAL1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[2]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARDISPVAL1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARDISPVAL1_IN[3]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARISK1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[0]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARISK1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[1]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARISK1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[2]);
    $setuphold (posedge TXUSRCLK21, posedge TXCHARISK1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCHARISK1_IN[3]);
    $setuphold (posedge TXUSRCLK21, posedge TXCOMSTART1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCOMSTART1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXCOMTYPE1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXCOMTYPE1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[0]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[10], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[10]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[11], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[11]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[12], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[12]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[13], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[13]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[14], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[14]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[15], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[15]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[16], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[16]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[17], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[17]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[18], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[18]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[19], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[19]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[1]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[20], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[20]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[21], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[21]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[22], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[22]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[23], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[23]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[24], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[24]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[25], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[25]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[26], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[26]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[27], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[27]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[28], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[28]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[29], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[29]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[2]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[30], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[30]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[31], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[31]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[3], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[3]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[4], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[4]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[5], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[5]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[6], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[6]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[7], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[7]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[8], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[8]);
    $setuphold (posedge TXUSRCLK21, posedge TXDATA1[9], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDATA1_IN[9]);
    $setuphold (posedge TXUSRCLK21, posedge TXDETECTRX1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXDETECTRX1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXELECIDLE1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXELECIDLE1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXENC8B10BUSE1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENC8B10BUSE1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXENPRBSTST1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENPRBSTST1_IN[0]);
    $setuphold (posedge TXUSRCLK21, posedge TXENPRBSTST1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENPRBSTST1_IN[1]);
    $setuphold (posedge TXUSRCLK21, posedge TXENPRBSTST1[2], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXENPRBSTST1_IN[2]);
    $setuphold (posedge TXUSRCLK21, posedge TXINHIBIT1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXINHIBIT1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXPOLARITY1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPOLARITY1_IN);
    $setuphold (posedge TXUSRCLK21, posedge TXPOWERDOWN1[0], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPOWERDOWN1_IN[0]);
    $setuphold (posedge TXUSRCLK21, posedge TXPOWERDOWN1[1], 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPOWERDOWN1_IN[1]);
    $setuphold (posedge TXUSRCLK21, posedge TXPRBSFORCEERR1, 0:0:0, 0:0:0, notifier,,, TXUSRCLK21_IN, TXPRBSFORCEERR1_IN);
    ( CLK00 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( CLK01 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( CLK10 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( CLK11 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( CLKINEAST0 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( CLKINEAST1 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( CLKINWEST0 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( CLKINWEST1 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( DCLK => DRDY) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[0]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[10]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[11]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[12]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[13]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[14]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[15]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[1]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[2]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[3]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[4]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[5]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[6]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[7]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[8]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[9]) = (100:100:100, 100:100:100);
    ( GCLK00 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( GCLK01 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( GCLK10 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( GCLK11 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( PLLCLK00 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( PLLCLK01 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( PLLCLK10 => REFCLKPLL0) = (100:100:100, 100:100:100);
    ( PLLCLK11 => REFCLKPLL1) = (100:100:100, 100:100:100);
    ( RXUSRCLK0 => RXCHBONDO[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK0 => RXCHBONDO[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK0 => RXCHBONDO[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK1 => RXCHBONDO[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK1 => RXCHBONDO[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK1 => RXCHBONDO[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => PHYSTATUS0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXBUFSTATUS0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXBUFSTATUS0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXBUFSTATUS0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXBYTEISALIGNED0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXBYTEREALIGN0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHANBONDSEQ0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHANISALIGNED0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHANREALIGN0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISCOMMA0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISCOMMA0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISCOMMA0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISCOMMA0[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISK0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISK0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISK0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCHARISK0[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCLKCORCNT0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCLKCORCNT0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCLKCORCNT0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXCOMMADET0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[10]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[11]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[12]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[13]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[14]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[15]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[16]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[17]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[18]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[19]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[20]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[21]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[22]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[23]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[24]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[25]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[26]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[27]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[28]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[29]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[30]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[31]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[4]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[5]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[6]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[7]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[8]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDATA0[9]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDISPERR0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDISPERR0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDISPERR0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXDISPERR0[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXLOSSOFSYNC0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXLOSSOFSYNC0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXNOTINTABLE0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXNOTINTABLE0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXNOTINTABLE0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXNOTINTABLE0[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXPRBSERR0) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXRUNDISP0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXRUNDISP0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXRUNDISP0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXRUNDISP0[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXSTATUS0[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXSTATUS0[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXSTATUS0[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK20 => RXVALID0) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => PHYSTATUS1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXBUFSTATUS1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXBUFSTATUS1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXBUFSTATUS1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXBYTEISALIGNED1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXBYTEREALIGN1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHANBONDSEQ1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHANISALIGNED1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHANREALIGN1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISCOMMA1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISCOMMA1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISCOMMA1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISCOMMA1[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISK1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISK1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISK1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCHARISK1[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCLKCORCNT1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCLKCORCNT1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCLKCORCNT1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXCOMMADET1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[10]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[11]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[12]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[13]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[14]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[15]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[16]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[17]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[18]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[19]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[20]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[21]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[22]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[23]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[24]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[25]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[26]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[27]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[28]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[29]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[30]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[31]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[4]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[5]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[6]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[7]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[8]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDATA1[9]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDISPERR1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDISPERR1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDISPERR1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXDISPERR1[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXLOSSOFSYNC1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXLOSSOFSYNC1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXNOTINTABLE1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXNOTINTABLE1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXNOTINTABLE1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXNOTINTABLE1[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXPRBSERR1) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXRUNDISP1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXRUNDISP1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXRUNDISP1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXRUNDISP1[3]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXSTATUS1[0]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXSTATUS1[1]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXSTATUS1[2]) = (100:100:100, 100:100:100);
    ( RXUSRCLK21 => RXVALID1) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXBUFSTATUS0[0]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXBUFSTATUS0[1]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXKERR0[0]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXKERR0[1]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXKERR0[2]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXKERR0[3]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXRUNDISP0[0]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXRUNDISP0[1]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXRUNDISP0[2]) = (100:100:100, 100:100:100);
    ( TXUSRCLK20 => TXRUNDISP0[3]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXBUFSTATUS1[0]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXBUFSTATUS1[1]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXKERR1[0]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXKERR1[1]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXKERR1[2]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXKERR1[3]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXRUNDISP1[0]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXRUNDISP1[1]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXRUNDISP1[2]) = (100:100:100, 100:100:100);
    ( TXUSRCLK21 => TXRUNDISP1[3]) = (100:100:100, 100:100:100);

    specparam PATHPULSE$ = 0;
  endspecify
endmodule // X_GTPA1_DUAL
