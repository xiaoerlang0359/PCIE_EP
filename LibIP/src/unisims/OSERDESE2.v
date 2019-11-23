//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Source Synchronous Output Serializer Virtex7
// /___/   /\     Filename : OSERDESE2.v
// \   \  /  \    Timestamp : Fri Jan 29 14:59:32 PST 2010
//  \___\/\___\
//
// Revision:
//    01/29/10 - Initial version.
// End Revision

`timescale 1 ps / 1 ps 

module OSERDESE2 (
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


  tri0 GSR = glbl.GSR;


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


   initial begin
//-------------------------------------------------
//----- DATA_RATE_OQ check
//-------------------------------------------------
        case (DATA_RATE_OQ)
            "SDR", "DDR" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_RATE_OQ on OSERDESE2 instance %m is set to %s.  Legal values for this attribute are SDR or DDR", DATA_RATE_OQ);
                          $finish;
                      end
        endcase // case(DATA_RATE_OQ)

//-------------------------------------------------
//----- DATA_RATE_TQ check
//-------------------------------------------------
        case (DATA_RATE_TQ)
            "BUF", "DDR", "SDR" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_RATE_TQ on OSERDESE2 instance %m is set to %s.  Legal values for this attribute are BUF, SDR, or DDR", DATA_RATE_TQ);
                          $finish;
                      end
        endcase // case(DATA_RATE_TQ)

//-------------------------------------------------
//----- DATA_WIDTH check
//-------------------------------------------------
        case (DATA_WIDTH)

            2, 3, 4, 5, 6, 7, 8, 10, 14 : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_WIDTH on OSERDESE2 instance %m is set to %d.  Legal values for this attribute are 2, 3, 4, 5, 6, 7, 8, 10 or 14", DATA_WIDTH);
                          $finish;
                      end
        endcase // case(DATA_WIDTH)

//-------------------------------------------------
//----- SERDES_MODE check
//-------------------------------------------------
        case (SERDES_MODE) // {mem_slave}

            "MASTER", "SLAVE" :;
            default  : begin
                          $display("Attribute Syntax Error : The attribute SERDES_MODE on OSERDESE2 instance %m is set to %s.  Legal values for this attribute are MASTER or SLAVE", SERDES_MODE);
                          $finish;
                      end

        endcase // case(SERDES_MODE)

//-------------------------------------------------
//----- TRISTATE_WIDTH check
//-------------------------------------------------
        case (TRISTATE_WIDTH) // {mem_twidth4}

            1,2,4 : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute TRISTATE_WIDTH on OSERDESE2 instance %m is set to %d.  Legal values for this attribute are 1, 2 or 4", TRISTATE_WIDTH);
                          $finish;
                      end

        endcase // case(TRISTATE_WIDTH)

//-------------------------------------------------
//----- DATA_RATE_OQ/DATA_WIDTH Combination
//-------------------------------------------------
        case (DATA_RATE_OQ) 
            "SDR" , "DDR" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_RATE_OQ on OSERDESE2 instance %m is set to %s.  Legal values for this attribute are SDR or DDR", DATA_RATE_OQ);
                          $finish;
                      end
        endcase // case(DATA_RATE_OQ/DATA_WIDTH)

//-------------------------------------------------
    end  // initial begin

  assign #(out_delay) OFB = delay_OFB;
  assign #(out_delay) OQ = delay_OQ;
  assign #(out_delay) SHIFTOUT1 = delay_SHIFTOUT1;
  assign #(out_delay) SHIFTOUT2 = delay_SHIFTOUT2;
  assign #(out_delay) TBYTEOUT = delay_TBYTEOUT;
  assign #(out_delay) TFB = delay_TFB;
  assign #(out_delay) TQ = delay_TQ;

  assign #(INCLK_DELAY) delay_CLK = CLK;
  assign #(INCLK_DELAY) delay_CLKDIV = CLKDIV;

  assign #(in_delay) delay_D1 = D1;
  assign #(in_delay) delay_D2 = D2;
  assign #(in_delay) delay_D3 = D3;
  assign #(in_delay) delay_D4 = D4;
  assign #(in_delay) delay_D5 = D5;
  assign #(in_delay) delay_D6 = D6;
  assign #(in_delay) delay_D7 = D7;
  assign #(in_delay) delay_D8 = D8;
  assign #(in_delay) delay_OCE = OCE;
  assign #(in_delay) delay_RST = RST;
  assign #(in_delay) delay_SHIFTIN1 = SHIFTIN1;
  assign #(in_delay) delay_SHIFTIN2 = SHIFTIN2;
  assign #(in_delay) delay_T1 = T1;
  assign #(in_delay) delay_T2 = T2;
  assign #(in_delay) delay_T3 = T3;
  assign #(in_delay) delay_T4 = T4;
  assign #(in_delay) delay_TBYTEIN = TBYTEIN;
  assign #(in_delay) delay_TCE = TCE;

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
    ( CLK => OFB) = (100, 100);
    ( CLK => OQ) = (100, 100);
    ( CLK => TFB) = (100, 100);
    ( CLK => TQ) = (100, 100);
    ( T1 => TBYTEOUT) = (0, 0);
    ( T1 => TQ) = (0, 0);
    ( TBYTEIN => TQ) = (0, 0);

    specparam PATHPULSE$ = 0;
  endspecify
endmodule
