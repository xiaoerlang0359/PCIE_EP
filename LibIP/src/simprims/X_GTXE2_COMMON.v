///////////////////////////////////////////////////////
//  Copyright (c) 2010 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version     : 13.2
//  \  \           Description : Xilinx Functional Simulation Library Component
//  /  /                      
// /__/   /\       Filename    : X_GTXE2_CHANNEL.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision:		1.0
//  11/10/09 - CR - Initial version
//  11/20/09 - CR - Attribute updates in YML
//  04/27/10 - CR - YML update
//  05/26/10 - CR561562 - SATA_CPLL_CFG attribute bug fixed
//  06/10/10 - CR564909 - publish complete verilog unisim wrapper
//  06/17/10 - CR564909 - YML & RTL updates
//  06/17/10 - CR564909 - YML & RTL updates
//  08/05/10 - CR569019 - GTXE2 YML and secureip update
//  09/15/10 - CR575512 - GTXE2 YML and secureip update
//  01/09/11 - CR582278,579504,588137, 591741 - GTXE2 YML/secureip update
//  09/07/11 - CR624062 - YML update
//  11/18/11 - 634675 - Replace buf with assign
//  06/20/12 - CR666177 - YML update
//  01/18/13 - 695630 - added drp monitor
///////////////////////////////////////////////////////////////////


`timescale 1 ps / 1 ps 

module X_GTXE2_COMMON (
  DRPDO,
  DRPRDY,
  QPLLDMONITOR,
  QPLLFBCLKLOST,
  QPLLLOCK,
  QPLLOUTCLK,
  QPLLOUTREFCLK,
  QPLLREFCLKLOST,
  REFCLKOUTMONITOR,

  BGBYPASSB,
  BGMONITORENB,
  BGPDB,
  BGRCALOVRD,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  GTGREFCLK,
  GTNORTHREFCLK0,
  GTNORTHREFCLK1,
  GTREFCLK0,
  GTREFCLK1,
  GTSOUTHREFCLK0,
  GTSOUTHREFCLK1,
  PMARSVD,
  QPLLLOCKDETCLK,
  QPLLLOCKEN,
  QPLLOUTRESET,
  QPLLPD,
  QPLLREFCLKSEL,
  QPLLRESET,
  QPLLRSVD1,
  QPLLRSVD2,
  RCALENB
);

  parameter LOC = "UNPLACED";
  parameter [63:0] BIAS_CFG = 64'h0000040000001000;
  parameter [31:0] COMMON_CFG = 32'h00000000;
  parameter [26:0] QPLL_CFG = 27'h0680181;
  parameter [3:0] QPLL_CLKOUT_CFG = 4'b0000;
  parameter [5:0] QPLL_COARSE_FREQ_OVRD = 6'b010000;
  parameter [0:0] QPLL_COARSE_FREQ_OVRD_EN = 1'b0;
  parameter [9:0] QPLL_CP = 10'b0000011111;
  parameter [0:0] QPLL_CP_MONITOR_EN = 1'b0;
  parameter [0:0] QPLL_DMONITOR_SEL = 1'b0;
  parameter [9:0] QPLL_FBDIV = 10'b0000000000;
  parameter [0:0] QPLL_FBDIV_MONITOR_EN = 1'b0;
  parameter [0:0] QPLL_FBDIV_RATIO = 1'b0;
  parameter [23:0] QPLL_INIT_CFG = 24'h000006;
  parameter [15:0] QPLL_LOCK_CFG = 16'h21E8;
  parameter [3:0] QPLL_LPF = 4'b1111;
  parameter integer QPLL_REFCLK_DIV = 2;
  parameter [2:0] SIM_QPLLREFCLK_SEL = 3'b001;
  parameter SIM_RESET_SPEEDUP = "TRUE";
  parameter SIM_VERSION = "4.0";
  
  localparam in_delay = 0;
  localparam out_delay = 0;
  localparam INCLK_DELAY = 0;
  localparam OUTCLK_DELAY = 0;

  output DRPRDY;
  output QPLLFBCLKLOST;
  output QPLLLOCK;
  output QPLLOUTCLK;
  output QPLLOUTREFCLK;
  output QPLLREFCLKLOST;
  output REFCLKOUTMONITOR;
  output [15:0] DRPDO;
  output [7:0] QPLLDMONITOR;

  input BGBYPASSB;
  input BGMONITORENB;
  input BGPDB;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input GTGREFCLK;
  input GTNORTHREFCLK0;
  input GTNORTHREFCLK1;
  input GTREFCLK0;
  input GTREFCLK1;
  input GTSOUTHREFCLK0;
  input GTSOUTHREFCLK1;
  input QPLLLOCKDETCLK;
  input QPLLLOCKEN;
  input QPLLOUTRESET;
  input QPLLPD;
  input QPLLRESET;
  input RCALENB;
  input [15:0] DRPDI;
  input [15:0] QPLLRSVD1;
  input [2:0] QPLLREFCLKSEL;
  input [4:0] BGRCALOVRD;
  input [4:0] QPLLRSVD2;
  input [7:0] DRPADDR;
  input [7:0] PMARSVD;

  reg SIM_RESET_SPEEDUP_BINARY;
  reg SIM_VERSION_BINARY;
  reg [0:0] QPLL_COARSE_FREQ_OVRD_EN_BINARY;
  reg [0:0] QPLL_CP_MONITOR_EN_BINARY;
  reg [0:0] QPLL_DMONITOR_SEL_BINARY;
  reg [0:0] QPLL_FBDIV_MONITOR_EN_BINARY;
  reg [0:0] QPLL_FBDIV_RATIO_BINARY;
  reg [2:0] SIM_QPLLREFCLK_SEL_BINARY;
  reg [3:0] QPLL_CLKOUT_CFG_BINARY;
  reg [3:0] QPLL_LPF_BINARY;
  reg [4:0] QPLL_REFCLK_DIV_BINARY;
  reg [5:0] QPLL_COARSE_FREQ_OVRD_BINARY;
  reg [9:0] QPLL_CP_BINARY;
  reg [9:0] QPLL_FBDIV_BINARY;

  tri0 GSR = glbl.GSR;
  reg notifier;

  wire DRPRDY_OUT;
  wire QPLLFBCLKLOST_OUT;
  wire QPLLLOCK_OUT;
  wire QPLLOUTCLK_OUT;
  wire QPLLOUTREFCLK_OUT;
  wire QPLLREFCLKLOST_OUT;
  wire REFCLKOUTMONITOR_OUT;
  wire [15:0] DRPDO_OUT;
  wire [7:0] QPLLDMONITOR_OUT;

  wire BGBYPASSB_IN;
  wire BGMONITORENB_IN;
  wire BGPDB_IN;
  wire DRPCLK_IN;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire GTGREFCLK_IN;
  wire GTNORTHREFCLK0_IN;
  wire GTNORTHREFCLK1_IN;
  wire GTREFCLK0_IN;
  wire GTREFCLK1_IN;
  wire GTSOUTHREFCLK0_IN;
  wire GTSOUTHREFCLK1_IN;
  wire QPLLLOCKDETCLK_IN;
  wire QPLLLOCKEN_IN;
  wire QPLLOUTRESET_IN;
  wire QPLLPD_IN;
  wire QPLLRESET_IN;
  wire RCALENB_IN;
  wire [15:0] DRPDI_IN;
  wire [15:0] QPLLRSVD1_IN;
  wire [2:0] QPLLREFCLKSEL_IN;
  wire [4:0] BGRCALOVRD_IN;
  wire [4:0] QPLLRSVD2_IN;
  wire [7:0] DRPADDR_IN;
  wire [7:0] PMARSVD_IN;

  wire BGBYPASSB_INDELAY;
  wire BGMONITORENB_INDELAY;
  wire BGPDB_INDELAY;
  wire DRPCLK_INDELAY;
  wire DRPEN_INDELAY;
  wire DRPWE_INDELAY;
  wire GTGREFCLK_INDELAY;
  wire GTNORTHREFCLK0_INDELAY;
  wire GTNORTHREFCLK1_INDELAY;
  wire GTREFCLK0_INDELAY;
  wire GTREFCLK1_INDELAY;
  wire GTSOUTHREFCLK0_INDELAY;
  wire GTSOUTHREFCLK1_INDELAY;
  wire QPLLLOCKDETCLK_INDELAY;
  wire QPLLLOCKEN_INDELAY;
  wire QPLLOUTRESET_INDELAY;
  wire QPLLPD_INDELAY;
  wire QPLLRESET_INDELAY;
  wire RCALENB_INDELAY;
  wire [15:0] DRPDI_INDELAY;
  wire [15:0] QPLLRSVD1_INDELAY;
  wire [2:0] QPLLREFCLKSEL_INDELAY;
  wire [4:0] BGRCALOVRD_INDELAY;
  wire [4:0] QPLLRSVD2_INDELAY;
  wire [7:0] DRPADDR_INDELAY;
  wire [7:0] PMARSVD_INDELAY;

  initial begin
    case (QPLL_REFCLK_DIV)
      2 : QPLL_REFCLK_DIV_BINARY = 5'b00000;
      1 : QPLL_REFCLK_DIV_BINARY = 5'b10000;
      3 : QPLL_REFCLK_DIV_BINARY = 5'b00001;
      4 : QPLL_REFCLK_DIV_BINARY = 5'b00010;
      5 : QPLL_REFCLK_DIV_BINARY = 5'b00011;
      6 : QPLL_REFCLK_DIV_BINARY = 5'b00101;
      8 : QPLL_REFCLK_DIV_BINARY = 5'b00110;
      10 : QPLL_REFCLK_DIV_BINARY = 5'b00111;
      12 : QPLL_REFCLK_DIV_BINARY = 5'b01101;
      16 : QPLL_REFCLK_DIV_BINARY = 5'b01110;
      20 : QPLL_REFCLK_DIV_BINARY = 5'b01111;
      default : begin
        $display("Attribute Syntax Error : The Attribute QPLL_REFCLK_DIV on X_GTXE2_COMMON instance %m is set to %d.  Legal values for this attribute are 1 to 20.", QPLL_REFCLK_DIV, 2);
        $finish;
      end
    endcase

    case (SIM_RESET_SPEEDUP)
      "TRUE" : SIM_RESET_SPEEDUP_BINARY = 0;
      "FALSE" : SIM_RESET_SPEEDUP_BINARY = 0;
      default : begin
        $display("Attribute Syntax Error : The Attribute SIM_RESET_SPEEDUP on X_GTXE2_COMMON instance %m is set to %s.  Legal values for this attribute are TRUE, or FALSE.", SIM_RESET_SPEEDUP);
        $finish;
      end
    endcase

    case (SIM_VERSION)
      "4.0" : SIM_VERSION_BINARY = 0;
      "1.0" : SIM_VERSION_BINARY = 0;
      "1.1" : SIM_VERSION_BINARY = 0;
      "2.0" : SIM_VERSION_BINARY = 0;
      "3.0" : SIM_VERSION_BINARY = 0;
      "4.1" : SIM_VERSION_BINARY = 0;
      "5.0" : SIM_VERSION_BINARY = 0;
      default : begin
        $display("Attribute Syntax Error : The Attribute SIM_VERSION on X_GTXE2_COMMON instance %m is set to %s.  Legal values for this attribute are 4.0, 1.0, 1.1, 2.0, 3.0, 4.1, or 5.0.", SIM_VERSION);
        $finish;
      end
    endcase


    if ((QPLL_CLKOUT_CFG >= 4'b0000) && (QPLL_CLKOUT_CFG <= 4'b1111))
      QPLL_CLKOUT_CFG_BINARY = QPLL_CLKOUT_CFG;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_CLKOUT_CFG on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 4'b0000 to 4'b1111.", QPLL_CLKOUT_CFG);
      $finish;
    end

    if ((QPLL_COARSE_FREQ_OVRD >= 6'b000000) && (QPLL_COARSE_FREQ_OVRD <= 6'b111111))
      QPLL_COARSE_FREQ_OVRD_BINARY = QPLL_COARSE_FREQ_OVRD;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_COARSE_FREQ_OVRD on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 6'b000000 to 6'b111111.", QPLL_COARSE_FREQ_OVRD);
      $finish;
    end

    if ((QPLL_COARSE_FREQ_OVRD_EN >= 1'b0) && (QPLL_COARSE_FREQ_OVRD_EN <= 1'b1))
      QPLL_COARSE_FREQ_OVRD_EN_BINARY = QPLL_COARSE_FREQ_OVRD_EN;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_COARSE_FREQ_OVRD_EN on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", QPLL_COARSE_FREQ_OVRD_EN);
      $finish;
    end

    if ((QPLL_CP >= 10'b0000000000) && (QPLL_CP <= 10'b1111111111))
      QPLL_CP_BINARY = QPLL_CP;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_CP on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 10'b0000000000 to 10'b1111111111.", QPLL_CP);
      $finish;
    end

    if ((QPLL_CP_MONITOR_EN >= 1'b0) && (QPLL_CP_MONITOR_EN <= 1'b1))
      QPLL_CP_MONITOR_EN_BINARY = QPLL_CP_MONITOR_EN;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_CP_MONITOR_EN on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", QPLL_CP_MONITOR_EN);
      $finish;
    end

    if ((QPLL_DMONITOR_SEL >= 1'b0) && (QPLL_DMONITOR_SEL <= 1'b1))
      QPLL_DMONITOR_SEL_BINARY = QPLL_DMONITOR_SEL;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_DMONITOR_SEL on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", QPLL_DMONITOR_SEL);
      $finish;
    end

    if ((QPLL_FBDIV >= 10'b0000000000) && (QPLL_FBDIV <= 10'b1111111111))
      QPLL_FBDIV_BINARY = QPLL_FBDIV;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_FBDIV on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 10'b0000000000 to 10'b1111111111.", QPLL_FBDIV);
      $finish;
    end

    if ((QPLL_FBDIV_MONITOR_EN >= 1'b0) && (QPLL_FBDIV_MONITOR_EN <= 1'b1))
      QPLL_FBDIV_MONITOR_EN_BINARY = QPLL_FBDIV_MONITOR_EN;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_FBDIV_MONITOR_EN on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", QPLL_FBDIV_MONITOR_EN);
      $finish;
    end

    if ((QPLL_FBDIV_RATIO >= 1'b0) && (QPLL_FBDIV_RATIO <= 1'b1))
      QPLL_FBDIV_RATIO_BINARY = QPLL_FBDIV_RATIO;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_FBDIV_RATIO on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", QPLL_FBDIV_RATIO);
      $finish;
    end

    if ((QPLL_LPF >= 4'b0000) && (QPLL_LPF <= 4'b1111))
      QPLL_LPF_BINARY = QPLL_LPF;
    else begin
      $display("Attribute Syntax Error : The Attribute QPLL_LPF on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 4'b0000 to 4'b1111.", QPLL_LPF);
      $finish;
    end

    if ((SIM_QPLLREFCLK_SEL >= 3'b0) && (SIM_QPLLREFCLK_SEL <= 3'b111))
      SIM_QPLLREFCLK_SEL_BINARY = SIM_QPLLREFCLK_SEL;
    else begin
      $display("Attribute Syntax Error : The Attribute SIM_QPLLREFCLK_SEL on X_GTXE2_COMMON instance %m is set to %b.  Legal values for this attribute are 3'b0 to 3'b111.", SIM_QPLLREFCLK_SEL);
      $finish;
    end

  end

  assign #(out_delay) DRPDO = DRPDO_OUT;
  assign #(out_delay) DRPRDY = DRPRDY_OUT;
  assign #(out_delay) QPLLDMONITOR = QPLLDMONITOR_OUT;
  assign #(out_delay) QPLLFBCLKLOST = QPLLFBCLKLOST_OUT;
  assign #(out_delay) QPLLLOCK = QPLLLOCK_OUT;
  assign #(out_delay) QPLLOUTCLK = QPLLOUTCLK_OUT;
  assign #(out_delay) QPLLOUTREFCLK = QPLLOUTREFCLK_OUT;
  assign #(out_delay) QPLLREFCLKLOST = QPLLREFCLKLOST_OUT;
  assign #(out_delay) REFCLKOUTMONITOR = REFCLKOUTMONITOR_OUT;

  assign #(in_delay) BGBYPASSB_IN = BGBYPASSB;
  assign #(in_delay) BGMONITORENB_IN = BGMONITORENB;
  assign #(in_delay) BGPDB_IN = BGPDB;
  assign #(in_delay) BGRCALOVRD_IN = BGRCALOVRD;
  assign #(in_delay) DRPADDR_IN = DRPADDR;
  assign #(in_delay) DRPCLK_IN = DRPCLK;
  assign #(in_delay) DRPDI_IN = DRPDI;
  assign #(in_delay) DRPEN_IN = DRPEN;
  assign #(in_delay) DRPWE_IN = DRPWE;
  assign #(in_delay) GTGREFCLK_IN = GTGREFCLK;
  assign #(in_delay) GTNORTHREFCLK0_IN = GTNORTHREFCLK0;
  assign #(in_delay) GTNORTHREFCLK1_IN = GTNORTHREFCLK1;
  assign #(in_delay) GTREFCLK0_IN = GTREFCLK0;
  assign #(in_delay) GTREFCLK1_IN = GTREFCLK1;
  assign #(in_delay) GTSOUTHREFCLK0_IN = GTSOUTHREFCLK0;
  assign #(in_delay) GTSOUTHREFCLK1_IN = GTSOUTHREFCLK1;
  assign #(in_delay) PMARSVD_IN = PMARSVD;
  assign #(in_delay) QPLLLOCKDETCLK_IN = QPLLLOCKDETCLK;
  assign #(in_delay) QPLLLOCKEN_IN = QPLLLOCKEN;
  assign #(in_delay) QPLLOUTRESET_IN = QPLLOUTRESET;
  assign #(in_delay) QPLLPD_IN = QPLLPD;
  assign #(in_delay) QPLLREFCLKSEL_IN = QPLLREFCLKSEL;
  assign #(in_delay) QPLLRESET_IN = QPLLRESET;
  assign #(in_delay) QPLLRSVD1_IN = QPLLRSVD1;
  assign #(in_delay) QPLLRSVD2_IN = QPLLRSVD2;
  assign #(in_delay) RCALENB_IN = RCALENB;

  wire [15:0] delay_DRPDO;
  wire [7:0] delay_QPLLDMONITOR;
  wire delay_DRPRDY;
  wire delay_QPLLFBCLKLOST;
  wire delay_QPLLLOCK;
  wire delay_QPLLOUTCLK;
  wire delay_QPLLOUTREFCLK;
  wire delay_QPLLREFCLKLOST;
  wire delay_REFCLKOUTMONITOR;

  wire [15:0] delay_DRPDI;
  wire [15:0] delay_QPLLRSVD1;
  wire [2:0] delay_QPLLREFCLKSEL;
  wire [4:0] delay_BGRCALOVRD;
  wire [4:0] delay_QPLLRSVD2;
  wire [7:0] delay_DRPADDR;
  wire [7:0] delay_PMARSVD;
  wire delay_BGBYPASSB;
  wire delay_BGMONITORENB;
  wire delay_BGPDB;
  wire delay_DRPCLK;
  wire delay_DRPEN;
  wire delay_DRPWE;
  wire delay_GTGREFCLK;
  wire delay_GTNORTHREFCLK0;
  wire delay_GTNORTHREFCLK1;
  wire delay_GTREFCLK0;
  wire delay_GTREFCLK1;
  wire delay_GTSOUTHREFCLK0;
  wire delay_GTSOUTHREFCLK1;
  wire delay_QPLLLOCKDETCLK;
  wire delay_QPLLLOCKEN;
  wire delay_QPLLOUTRESET;
  wire delay_QPLLPD;
  wire delay_QPLLRESET;
  wire delay_RCALENB;


   //drp monitor
   reg drpen_r1 = 1'b0;
   reg drpen_r2 = 1'b0;
   reg drpwe_r1 = 1'b0;
   reg drpwe_r2 = 1'b0;
   
   reg [1:0] sfsm = 2'b01;
    
   localparam FSM_IDLE = 2'b01;  
   localparam FSM_WAIT = 2'b10;
  

   always @(posedge delay_DRPCLK)
     begin
	// pipeline the DRPEN and DRPWE
        drpen_r1 <= delay_DRPEN;
        drpwe_r1 <= delay_DRPWE;
	drpen_r2 <= drpen_r1;
        drpwe_r2 <= drpwe_r1;

	
	// Check -  if DRPEN or DRPWE is more than 1 DCLK
	if ((drpen_r1 == 1'b1) && (drpen_r2 == 1'b1)) 
	  begin
	     $display("DRC Error : DRPEN is high for more than 1 DRPCLK on %m instance");
	     $finish; 
          end
	
	if ((drpwe_r1 == 1'b1) && (drpwe_r2 == 1'b1))
	  begin
             $display("DRC Error : DRPWE is high for more than 1 DRPCLK on %m instance");
             $finish;
          end


	//After the 1st DRPEN pulse, check the DRPEN and DRPRDY.
	case (sfsm)
          FSM_IDLE:   
            begin
               if(delay_DRPEN == 1'b1)
		 sfsm <= FSM_WAIT;  
            end
          
          FSM_WAIT:
            begin
               // After the 1st DRPEN, 4 cases can happen
               // DRPEN DRPRDY NEXT STATE
               // 0     0      FSM_WAIT - wait for DRPRDY
               // 0     1      FSM_IDLE - normal operation
               // 1     0      FSM_WAIT - display error and wait for DRPRDY
               // 1     1      FSM_WAIT - normal operation. Per UG470, DRPEN and DRPRDY can be at the same cycle.
               
               //Add the check for another DPREN pulse
               if(delay_DRPEN === 1'b1 && delay_DRPRDY === 1'b0) 
		 begin
		    $display("DRC Error : DRPEN is enabled before DRPRDY returns on %m instance");  
		    $finish;
		 end

               //Add the check for another DRPWE pulse
               if ((delay_DRPWE === 1'b1) && (delay_DRPEN === 1'b0))
		 begin
		    $display("DRC Error : DRPWE is enabled before DRPRDY returns on %m instance");
		    $finish;
		 end
                    
               if ((delay_DRPRDY === 1'b1) && (delay_DRPEN === 1'b0))
		 begin
		    sfsm <= FSM_IDLE;
		 end  
               
               if ((delay_DRPRDY === 1'b1)&& (delay_DRPEN === 1'b1))
		 begin
		    sfsm <= FSM_WAIT;
		 end  
            end
        
          default:                  
            begin
               $display("DRC Error : Default state in DRP FSM.");
               $finish;
            end
	endcase

     end // always @ (posedge delay_DRPCLK)
   //end drp monitor   
   

  assign #(OUTCLK_DELAY) QPLLOUTCLK_OUT = delay_QPLLOUTCLK;
  assign #(OUTCLK_DELAY) REFCLKOUTMONITOR_OUT = delay_REFCLKOUTMONITOR;

  assign #(out_delay) DRPDO_OUT = delay_DRPDO;
  assign #(out_delay) DRPRDY_OUT = delay_DRPRDY;
  assign #(out_delay) QPLLDMONITOR_OUT = delay_QPLLDMONITOR;
  assign #(out_delay) QPLLFBCLKLOST_OUT = delay_QPLLFBCLKLOST;
  assign #(out_delay) QPLLLOCK_OUT = delay_QPLLLOCK;
  assign #(out_delay) QPLLOUTREFCLK_OUT = delay_QPLLOUTREFCLK;
  assign #(out_delay) QPLLREFCLKLOST_OUT = delay_QPLLREFCLKLOST;

  assign #(INCLK_DELAY) DRPCLK_INDELAY = DRPCLK_IN;
  assign #(INCLK_DELAY) GTGREFCLK_INDELAY = GTGREFCLK_IN;
  assign #(INCLK_DELAY) GTNORTHREFCLK0_INDELAY = GTNORTHREFCLK0_IN;
  assign #(INCLK_DELAY) GTNORTHREFCLK1_INDELAY = GTNORTHREFCLK1_IN;
  assign #(INCLK_DELAY) GTREFCLK0_INDELAY = GTREFCLK0_IN;
  assign #(INCLK_DELAY) GTREFCLK1_INDELAY = GTREFCLK1_IN;
  assign #(INCLK_DELAY) GTSOUTHREFCLK0_INDELAY = GTSOUTHREFCLK0_IN;
  assign #(INCLK_DELAY) GTSOUTHREFCLK1_INDELAY = GTSOUTHREFCLK1_IN;
  assign #(INCLK_DELAY) QPLLLOCKDETCLK_INDELAY = QPLLLOCKDETCLK_IN;

  assign #(in_delay) BGBYPASSB_INDELAY = BGBYPASSB_IN;
  assign #(in_delay) BGMONITORENB_INDELAY = BGMONITORENB_IN;
  assign #(in_delay) BGPDB_INDELAY = BGPDB_IN;
  assign #(in_delay) BGRCALOVRD_INDELAY = BGRCALOVRD_IN;
  assign #(in_delay) DRPADDR_INDELAY = DRPADDR_IN;
  assign #(in_delay) DRPDI_INDELAY = DRPDI_IN;
  assign #(in_delay) DRPEN_INDELAY = DRPEN_IN;
  assign #(in_delay) DRPWE_INDELAY = DRPWE_IN;
  assign #(in_delay) PMARSVD_INDELAY = PMARSVD_IN;
  assign #(in_delay) QPLLLOCKEN_INDELAY = QPLLLOCKEN_IN;
  assign #(in_delay) QPLLOUTRESET_INDELAY = QPLLOUTRESET_IN;
  assign #(in_delay) QPLLPD_INDELAY = QPLLPD_IN;
  assign #(in_delay) QPLLREFCLKSEL_INDELAY = QPLLREFCLKSEL_IN;
  assign #(in_delay) QPLLRESET_INDELAY = QPLLRESET_IN;
  assign #(in_delay) QPLLRSVD1_INDELAY = QPLLRSVD1_IN;
  assign #(in_delay) QPLLRSVD2_INDELAY = QPLLRSVD2_IN;
  assign #(in_delay) RCALENB_INDELAY = RCALENB_IN;
  assign delay_BGBYPASSB = BGBYPASSB_INDELAY;
  assign delay_BGMONITORENB = BGMONITORENB_INDELAY;
  assign delay_BGPDB = BGPDB_INDELAY;
  assign delay_BGRCALOVRD = BGRCALOVRD_INDELAY;
  assign delay_GTGREFCLK = GTGREFCLK_INDELAY;
  assign delay_GTNORTHREFCLK0 = GTNORTHREFCLK0_INDELAY;
  assign delay_GTNORTHREFCLK1 = GTNORTHREFCLK1_INDELAY;
  assign delay_GTREFCLK0 = GTREFCLK0_INDELAY;
  assign delay_GTREFCLK1 = GTREFCLK1_INDELAY;
  assign delay_GTSOUTHREFCLK0 = GTSOUTHREFCLK0_INDELAY;
  assign delay_GTSOUTHREFCLK1 = GTSOUTHREFCLK1_INDELAY;
  assign delay_PMARSVD = PMARSVD_INDELAY;
  assign delay_QPLLLOCKDETCLK = QPLLLOCKDETCLK_INDELAY;
  assign delay_QPLLLOCKEN = QPLLLOCKEN_INDELAY;
  assign delay_QPLLOUTRESET = QPLLOUTRESET_INDELAY;
  assign delay_QPLLPD = QPLLPD_INDELAY;
  assign delay_QPLLREFCLKSEL = QPLLREFCLKSEL_INDELAY;
  assign delay_QPLLRESET = QPLLRESET_INDELAY;
  assign delay_QPLLRSVD1 = QPLLRSVD1_INDELAY;
  assign delay_QPLLRSVD2 = QPLLRSVD2_INDELAY;
  assign delay_RCALENB = RCALENB_INDELAY;

  B_GTXE2_COMMON #(
    .BIAS_CFG (BIAS_CFG),
    .COMMON_CFG (COMMON_CFG),
    .QPLL_CFG (QPLL_CFG),
    .QPLL_CLKOUT_CFG (QPLL_CLKOUT_CFG),
    .QPLL_COARSE_FREQ_OVRD (QPLL_COARSE_FREQ_OVRD),
    .QPLL_COARSE_FREQ_OVRD_EN (QPLL_COARSE_FREQ_OVRD_EN),
    .QPLL_CP (QPLL_CP),
    .QPLL_CP_MONITOR_EN (QPLL_CP_MONITOR_EN),
    .QPLL_DMONITOR_SEL (QPLL_DMONITOR_SEL),
    .QPLL_FBDIV (QPLL_FBDIV),
    .QPLL_FBDIV_MONITOR_EN (QPLL_FBDIV_MONITOR_EN),
    .QPLL_FBDIV_RATIO (QPLL_FBDIV_RATIO),
    .QPLL_INIT_CFG (QPLL_INIT_CFG),
    .QPLL_LOCK_CFG (QPLL_LOCK_CFG),
    .QPLL_LPF (QPLL_LPF),
    .QPLL_REFCLK_DIV (QPLL_REFCLK_DIV),
    .SIM_QPLLREFCLK_SEL (SIM_QPLLREFCLK_SEL),
    .SIM_RESET_SPEEDUP (SIM_RESET_SPEEDUP),
    .SIM_VERSION (SIM_VERSION))

    B_GTXE2_COMMON_INST (
    .DRPDO (delay_DRPDO),
    .DRPRDY (delay_DRPRDY),
    .QPLLDMONITOR (delay_QPLLDMONITOR),
    .QPLLFBCLKLOST (delay_QPLLFBCLKLOST),
    .QPLLLOCK (delay_QPLLLOCK),
    .QPLLOUTCLK (delay_QPLLOUTCLK),
    .QPLLOUTREFCLK (delay_QPLLOUTREFCLK),
    .QPLLREFCLKLOST (delay_QPLLREFCLKLOST),
    .REFCLKOUTMONITOR (delay_REFCLKOUTMONITOR),
    .BGBYPASSB (delay_BGBYPASSB),
    .BGMONITORENB (delay_BGMONITORENB),
    .BGPDB (delay_BGPDB),
    .BGRCALOVRD (delay_BGRCALOVRD),
    .DRPADDR (delay_DRPADDR),
    .DRPCLK (delay_DRPCLK),
    .DRPDI (delay_DRPDI),
    .DRPEN (delay_DRPEN),
    .DRPWE (delay_DRPWE),
    .GTGREFCLK (delay_GTGREFCLK),
    .GTNORTHREFCLK0 (delay_GTNORTHREFCLK0),
    .GTNORTHREFCLK1 (delay_GTNORTHREFCLK1),
    .GTREFCLK0 (delay_GTREFCLK0),
    .GTREFCLK1 (delay_GTREFCLK1),
    .GTSOUTHREFCLK0 (delay_GTSOUTHREFCLK0),
    .GTSOUTHREFCLK1 (delay_GTSOUTHREFCLK1),
    .PMARSVD (delay_PMARSVD),
    .QPLLLOCKDETCLK (delay_QPLLLOCKDETCLK),
    .QPLLLOCKEN (delay_QPLLLOCKEN),
    .QPLLOUTRESET (delay_QPLLOUTRESET),
    .QPLLPD (delay_QPLLPD),
    .QPLLREFCLKSEL (delay_QPLLREFCLKSEL),
    .QPLLRESET (delay_QPLLRESET),
    .QPLLRSVD1 (delay_QPLLRSVD1),
    .QPLLRSVD2 (delay_QPLLRSVD2),
    .RCALENB (delay_RCALENB),
    .GSR(GSR)
  );

  specify
    $period (posedge DRPCLK, 0:0:0, notifier);
    $period (posedge GTGREFCLK, 0:0:0, notifier);
    $period (posedge GTNORTHREFCLK0, 0:0:0, notifier);
    $period (posedge GTNORTHREFCLK1, 0:0:0, notifier);
    $period (posedge GTREFCLK0, 0:0:0, notifier);
    $period (posedge GTREFCLK1, 0:0:0, notifier);
    $period (posedge GTSOUTHREFCLK0, 0:0:0, notifier);
    $period (posedge GTSOUTHREFCLK1, 0:0:0, notifier);
    $period (posedge QPLLLOCKDETCLK, 0:0:0, notifier);
    $period (posedge QPLLOUTCLK, 0:0:0, notifier);
    $period (posedge REFCLKOUTMONITOR, 0:0:0, notifier);
    $setuphold (posedge DRPCLK, negedge DRPADDR, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPADDR);
    $setuphold (posedge DRPCLK, negedge DRPDI, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPDI);
    $setuphold (posedge DRPCLK, negedge DRPEN, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPEN);
    $setuphold (posedge DRPCLK, negedge DRPWE, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPWE);
    $setuphold (posedge DRPCLK, posedge DRPADDR, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPADDR);
    $setuphold (posedge DRPCLK, posedge DRPDI, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPDI);
    $setuphold (posedge DRPCLK, posedge DRPEN, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPEN);
    $setuphold (posedge DRPCLK, posedge DRPWE, 0:0:0, 0:0:0, notifier,,, delay_DRPCLK, delay_DRPWE);
    ( DRPCLK *> DRPDO) = (0:0:0, 0:0:0);
    ( DRPCLK *> DRPRDY) = (0:0:0, 0:0:0);
    ( GTGREFCLK *> REFCLKOUTMONITOR) = (0:0:0, 0:0:0);
    ( GTNORTHREFCLK0 *> REFCLKOUTMONITOR) = (0:0:0, 0:0:0);
    ( GTNORTHREFCLK1 *> REFCLKOUTMONITOR) = (0:0:0, 0:0:0);
    ( GTREFCLK0 *> REFCLKOUTMONITOR) = (0:0:0, 0:0:0);
    ( GTREFCLK1 *> REFCLKOUTMONITOR) = (0:0:0, 0:0:0);
    ( GTSOUTHREFCLK0 *> REFCLKOUTMONITOR) = (0:0:0, 0:0:0);
    ( GTSOUTHREFCLK1 *> REFCLKOUTMONITOR) = (0:0:0, 0:0:0);
     
    specparam PATHPULSE$ = 0;
  endspecify
endmodule
