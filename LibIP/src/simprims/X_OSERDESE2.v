///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 13.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Source Synchronous Output Serializer Virtex7
// /___/   /\     Filename : X_OSERDESE2.v
// \   \  /  \    Timestamp : Fri Jan 29 14:59:32 PST 2010
//  \___\/\___\
//
// Revision:
//    01/29/10 - Initial version.
// End Revision

`timescale 1 ps / 1 ps 

module X_OSERDESE2 (
  OFB,
  OQ,
  SHIFTOUT1,
  SHIFTOUT2,
  TBYTEOUT,
  TFB,
  TQ,

  CLK,
  CLKDIV,
  D1,
  D2,
  D3,
  D4,
  D5,
  D6,
  D7,
  D8,
  OCE,
  RST,
  SHIFTIN1,
  SHIFTIN2,
  T1,
  T2,
  T3,
  T4,
  TBYTEIN,
  TCE
);

  parameter DATA_RATE_OQ = "DDR";
  parameter DATA_RATE_TQ = "DDR";
  parameter integer DATA_WIDTH = 4;
  parameter [0:0] INIT_OQ = 1'b0;
  parameter [0:0] INIT_TQ = 1'b0;
  parameter LOC = "UNPLACED";
  parameter SERDES_MODE = "MASTER";
  parameter [0:0] SRVAL_OQ = 1'b0;
  parameter [0:0] SRVAL_TQ = 1'b0;
  parameter TBYTE_CTL = "FALSE";
  parameter TBYTE_SRC = "FALSE";
  parameter integer TRISTATE_WIDTH = 4;
  
  localparam in_delay = 0;
  localparam out_delay = 0;
  localparam INCLK_DELAY = 0;
  localparam OUTCLK_DELAY = 0;

  output OFB;
  output OQ;
  output SHIFTOUT1;
  output SHIFTOUT2;
  output TBYTEOUT;
  output TFB;
  output TQ;

  input CLK;
  input CLKDIV;
  input D1;
  input D2;
  input D3;
  input D4;
  input D5;
  input D6;
  input D7;
  input D8;
  input OCE;
  input RST;
  input SHIFTIN1;
  input SHIFTIN2;
  input T1;
  input T2;
  input T3;
  input T4;
  input TBYTEIN;
  input TCE;

  reg DATA_RATE_OQ_BINARY;
  reg DATA_WIDTH_BINARY;
  reg LOC_BINARY;
  reg [0:0] INIT_OQ_BINARY;
  reg [0:0] INIT_TQ_BINARY;
  reg [0:0] SERDES_MODE_BINARY;
  reg [0:0] SRVAL_OQ_BINARY;
  reg [0:0] SRVAL_TQ_BINARY;
  reg [0:0] TBYTE_CTL_BINARY;
  reg [0:0] TBYTE_SRC_BINARY;
  reg [0:0] TRISTATE_WIDTH_BINARY;
  reg [5:0] DATA_RATE_TQ_BINARY;

  tri0 GSR = glbl.GSR;
  reg notifier;

  wire OFB_OUT;
  wire OQ_OUT;
  wire SHIFTOUT1_OUT;
  wire SHIFTOUT2_OUT;
  wire TBYTEOUT_OUT;
  wire TFB_OUT;
  wire TQ_OUT;

  wire CLKDIV_IN;
  wire CLK_IN;
  wire D1_IN;
  wire D2_IN;
  wire D3_IN;
  wire D4_IN;
  wire D5_IN;
  wire D6_IN;
  wire D7_IN;
  wire D8_IN;
  wire OCE_IN;
  wire RST_IN;
  wire SHIFTIN1_IN;
  wire SHIFTIN2_IN;
  wire T1_IN;
  wire T2_IN;
  wire T3_IN;
  wire T4_IN;
  wire TBYTEIN_IN;
  wire TCE_IN;

  wire CLKDIV_INDELAY;
  wire CLK_INDELAY;
  wire D1_INDELAY;
  wire D2_INDELAY;
  wire D3_INDELAY;
  wire D4_INDELAY;
  wire D5_INDELAY;
  wire D6_INDELAY;
  wire D7_INDELAY;
  wire D8_INDELAY;
  wire OCE_INDELAY;
  wire RST_INDELAY;
  wire SHIFTIN1_INDELAY;
  wire SHIFTIN2_INDELAY;
  wire T1_INDELAY;
  wire T2_INDELAY;
  wire T3_INDELAY;
  wire T4_INDELAY;
  wire TBYTEIN_INDELAY;
  wire TCE_INDELAY;

  buf B_OFB (OFB, OFB_OUT);
  buf B_OQ (OQ, OQ_OUT);
  buf B_SHIFTOUT1 (SHIFTOUT1, SHIFTOUT1_OUT);
  buf B_SHIFTOUT2 (SHIFTOUT2, SHIFTOUT2_OUT);
  buf B_TBYTEOUT (TBYTEOUT, TBYTEOUT_OUT);
  buf B_TFB (TFB, TFB_OUT);
  buf B_TQ (TQ, TQ_OUT);

  buf B_CLK (CLK_IN, CLK);
  buf B_CLKDIV (CLKDIV_IN, CLKDIV);
  buf B_D1 (D1_IN, D1);
  buf B_D2 (D2_IN, D2);
  buf B_D3 (D3_IN, D3);
  buf B_D4 (D4_IN, D4);
  buf B_D5 (D5_IN, D5);
  buf B_D6 (D6_IN, D6);
  buf B_D7 (D7_IN, D7);
  buf B_D8 (D8_IN, D8);
  buf B_OCE (OCE_IN, OCE);
  buf B_RST (RST_IN, RST);
  buf B_SHIFTIN1 (SHIFTIN1_IN, SHIFTIN1);
  buf B_SHIFTIN2 (SHIFTIN2_IN, SHIFTIN2);
  buf B_T1 (T1_IN, T1);
  buf B_T2 (T2_IN, T2);
  buf B_T3 (T3_IN, T3);
  buf B_T4 (T4_IN, T4);
  buf B_TBYTEIN (TBYTEIN_IN, TBYTEIN);
  buf B_TCE (TCE_IN, TCE);

  wire delay_OFB;
  wire delay_OQ;
  wire delay_SHIFTOUT1;
  wire delay_SHIFTOUT2;
  wire delay_TBYTEOUT;
  wire delay_TFB;
  wire delay_TQ;

  wire delay_CLK;
  wire delay_CLKDIV;
  wire delay_D1;
  wire delay_D2;
  wire delay_D3;
  wire delay_D4;
  wire delay_D5;
  wire delay_D6;
  wire delay_D7;
  wire delay_D8;
  wire delay_OCE;
  wire delay_RST;
  wire delay_SHIFTIN1;
  wire delay_SHIFTIN2;
  wire delay_T1;
  wire delay_T2;
  wire delay_T3;
  wire delay_T4;
  wire delay_TBYTEIN;
  wire delay_TCE;


  assign #(out_delay) OFB_OUT = delay_OFB;
  assign #(out_delay) OQ_OUT = delay_OQ;
  assign #(out_delay) SHIFTOUT1_OUT = delay_SHIFTOUT1;
  assign #(out_delay) SHIFTOUT2_OUT = delay_SHIFTOUT2;
  assign #(out_delay) TBYTEOUT_OUT = delay_TBYTEOUT;
  assign #(out_delay) TFB_OUT = delay_TFB;
  assign #(out_delay) TQ_OUT = delay_TQ;

  assign #(INCLK_DELAY) CLKDIV_INDELAY = CLKDIV_IN;
  assign #(INCLK_DELAY) CLK_INDELAY = CLK_IN;

  assign #(in_delay) D1_INDELAY = D1_IN;
  assign #(in_delay) D2_INDELAY = D2_IN;
  assign #(in_delay) D3_INDELAY = D3_IN;
  assign #(in_delay) D4_INDELAY = D4_IN;
  assign #(in_delay) D5_INDELAY = D5_IN;
  assign #(in_delay) D6_INDELAY = D6_IN;
  assign #(in_delay) D7_INDELAY = D7_IN;
  assign #(in_delay) D8_INDELAY = D8_IN;
  assign #(in_delay) OCE_INDELAY = OCE_IN;
  assign #(in_delay) RST_INDELAY = RST_IN;
  assign #(in_delay) SHIFTIN1_INDELAY = SHIFTIN1_IN;
  assign #(in_delay) SHIFTIN2_INDELAY = SHIFTIN2_IN;
  assign #(in_delay) T1_INDELAY = T1_IN;
  assign #(in_delay) T2_INDELAY = T2_IN;
  assign #(in_delay) T3_INDELAY = T3_IN;
  assign #(in_delay) T4_INDELAY = T4_IN;
  assign #(in_delay) TBYTEIN_INDELAY = TBYTEIN_IN;
  assign #(in_delay) TCE_INDELAY = TCE_IN;
//  assign delay_RST = RST_INDELAY;
  assign delay_SHIFTIN1 = SHIFTIN1_INDELAY;
  assign delay_SHIFTIN2 = SHIFTIN2_INDELAY;
  assign delay_TBYTEIN = TBYTEIN_INDELAY;


   initial begin
//-------------------------------------------------
//----- DATA_RATE_OQ check
//-------------------------------------------------
        case (DATA_RATE_OQ)
            "SDR", "DDR" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_RATE_OQ on X_OSERDESE2 instance %m is set to %s.  Legal values for this attribute are SDR or DDR", DATA_RATE_OQ);
                          $finish;
                      end
        endcase // case(DATA_RATE_OQ)

//-------------------------------------------------
//----- DATA_RATE_TQ check
//-------------------------------------------------
        case (DATA_RATE_TQ)
            "BUF", "DDR", "SDR" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_RATE_TQ on X_OSERDESE2 instance %m is set to %s.  Legal values for this attribute are BUF, SDR, or DDR", DATA_RATE_TQ);
                          $finish;
                      end
        endcase // case(DATA_RATE_TQ)

//-------------------------------------------------
//----- DATA_WIDTH check
//-------------------------------------------------
        case (DATA_WIDTH)

            2, 3, 4, 5, 6, 7, 8, 10, 14 : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_WIDTH on X_OSERDESE2 instance %m is set to %d.  Legal values for this attribute are 2, 3, 4, 5, 6, 7, 8, 10 or 14", DATA_WIDTH);
                          $finish;
                      end
        endcase // case(DATA_WIDTH)

//-------------------------------------------------
//----- SERDES_MODE check
//-------------------------------------------------
        case (SERDES_MODE) // {mem_slave}

            "MASTER", "SLAVE" :;
            default  : begin
                          $display("Attribute Syntax Error : The attribute SERDES_MODE on X_OSERDESE2 instance %m is set to %s.  Legal values for this attribute are MASTER or SLAVE", SERDES_MODE);
                          $finish;
                      end

        endcase // case(SERDES_MODE)

//-------------------------------------------------
//----- TRISTATE_WIDTH check
//-------------------------------------------------
        case (TRISTATE_WIDTH) // {mem_twidth4}

            1,2,4 : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute TRISTATE_WIDTH on X_OSERDESE2 instance %m is set to %d.  Legal values for this attribute are 1, 2 or 4", TRISTATE_WIDTH);
                          $finish;
                      end

        endcase // case(TRISTATE_WIDTH)

//-------------------------------------------------
//----- DATA_RATE_OQ/DATA_WIDTH Combination
//-------------------------------------------------
        case (DATA_RATE_OQ) 
            "SDR" , "DDR" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_RATE_OQ on X_OSERDESE2 instance %m is set to %s.  Legal values for this attribute are SDR or DDR", DATA_RATE_OQ);
                          $finish;
                      end
        endcase // case(DATA_RATE_OQ/DATA_WIDTH)

//-------------------------------------------------
    end  // initial begin



  B_OSERDESE2 #(
    .DATA_RATE_OQ (DATA_RATE_OQ),
    .DATA_RATE_TQ (DATA_RATE_TQ),
    .DATA_WIDTH (DATA_WIDTH),
    .INIT_OQ (INIT_OQ),
    .INIT_TQ (INIT_TQ),
    .SERDES_MODE (SERDES_MODE),
    .SRVAL_OQ (SRVAL_OQ),
    .SRVAL_TQ (SRVAL_TQ),
    .TBYTE_CTL (TBYTE_CTL),
    .TBYTE_SRC (TBYTE_SRC),
    .TRISTATE_WIDTH (TRISTATE_WIDTH))

    B_OSERDESE2_INST (
    .OFB (delay_OFB),
    .OQ (delay_OQ),
    .SHIFTOUT1 (delay_SHIFTOUT1),
    .SHIFTOUT2 (delay_SHIFTOUT2),
    .TBYTEOUT (delay_TBYTEOUT),
    .TFB (delay_TFB),
    .TQ (delay_TQ),
    .CLK (delay_CLK),
    .CLKDIV (delay_CLKDIV),
    .D1 (delay_D1),
    .D2 (delay_D2),
    .D3 (delay_D3),
    .D4 (delay_D4),
    .D5 (delay_D5),
    .D6 (delay_D6),
    .D7 (delay_D7),
    .D8 (delay_D8),
    .OCE (delay_OCE),
    .RST (delay_RST),
    .SHIFTIN1 (delay_SHIFTIN1),
    .SHIFTIN2 (delay_SHIFTIN2),
    .T1 (delay_T1),
    .T2 (delay_T2),
    .T3 (delay_T3),
    .T4 (delay_T4),
    .TBYTEIN (delay_TBYTEIN),
    .TCE (delay_TCE),
    .GSR (GSR)
  );

  specify
    $period (negedge CLK, 0:0:0, notifier);
    $period (negedge CLKDIV, 0:0:0, notifier);
    $period (posedge CLK, 0:0:0, notifier);
    $period (posedge CLKDIV, 0:0:0, notifier);
    $setuphold (posedge CLK, negedge OCE, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_OCE);
    $setuphold (posedge CLK, negedge T1, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_T1);
    $setuphold (posedge CLK, negedge TCE, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_TCE);
    $setuphold (posedge CLK, posedge OCE, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_OCE);
    $setuphold (posedge CLK, posedge T1, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_T1);
    $setuphold (posedge CLK, posedge TCE, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_TCE);
    $setuphold (posedge CLKDIV, negedge D1, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D1);
    $setuphold (posedge CLKDIV, negedge D2, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D2);
    $setuphold (posedge CLKDIV, negedge D3, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D3);
    $setuphold (posedge CLKDIV, negedge D4, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D4);
    $setuphold (posedge CLKDIV, negedge D5, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D5);
    $setuphold (posedge CLKDIV, negedge D6, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D6);
    $setuphold (posedge CLKDIV, negedge D7, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D7);
    $setuphold (posedge CLKDIV, negedge D8, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D8);
    $setuphold (posedge CLKDIV, negedge T1, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T1);
    $setuphold (posedge CLKDIV, negedge T2, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T2);
    $setuphold (posedge CLKDIV, negedge T3, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T3);
    $setuphold (posedge CLKDIV, negedge T4, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T4);
    $setuphold (posedge CLKDIV, posedge D1, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D1);
    $setuphold (posedge CLKDIV, posedge D2, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D2);
    $setuphold (posedge CLKDIV, posedge D3, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D3);
    $setuphold (posedge CLKDIV, posedge D4, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D4);
    $setuphold (posedge CLKDIV, posedge D5, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D5);
    $setuphold (posedge CLKDIV, posedge D6, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D6);
    $setuphold (posedge CLKDIV, posedge D7, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D7);
    $setuphold (posedge CLKDIV, posedge D8, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_D8);
    $setuphold (posedge CLKDIV, posedge T1, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T1);
    $setuphold (posedge CLKDIV, posedge T2, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T2);
    $setuphold (posedge CLKDIV, posedge T3, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T3);
    $setuphold (posedge CLKDIV, posedge T4, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_T4);

    $setuphold (posedge CLKDIV, negedge RST, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_RST);
    $setuphold (posedge CLKDIV, posedge RST, 0:0:0, 0:0:0, notifier,,, delay_CLKDIV, delay_RST);

    ( CLK => OFB) = (100:100:100, 100:100:100);
    ( CLK => OQ) = (100:100:100, 100:100:100);
    ( CLK => TFB) = (100:100:100, 100:100:100);
    ( CLK => TQ) = (100:100:100, 100:100:100);
    ( T1 => TBYTEOUT) = (100:100:100, 100:100:100);
    ( T1 => TQ) = (100:100:100, 100:100:100);
    ( TBYTEIN => TQ) = (100:100:100, 100:100:100);

    specparam PATHPULSE$ = 0;
  endspecify
endmodule
