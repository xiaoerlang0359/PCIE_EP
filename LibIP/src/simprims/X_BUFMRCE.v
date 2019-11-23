// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/fuji/X_BUFMRCE.v,v 1.2 2012/05/10 18:48:01 vandanad Exp $
///////////////////////////////////////////////////////
//  Copyright (c) 2009 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version     :  12.1
//  \  \           Description : 
//  /  /                      
// /__/   /\       Filename    : X_BUFMRCE.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision:		1.0
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module X_BUFMRCE (
  O,

  CE,
  I
);

  parameter LOC = "UNPLACED";
  parameter CE_TYPE = "SYNC";
  parameter integer INIT_OUT = 0;

  output O;

  input CE;
  input I;

  wire   NCE, o_bufg_o, o_bufg1_o;
  reg  CE_TYPE_BINARY;
  reg  INIT_OUT_BINARY;

  reg notifier;

  wire O_OUT;

  wire CE_IN;
  wire I_IN;

  wire CE_INDELAY;
  wire I_INDELAY;

  initial begin
    case (CE_TYPE)
      "SYNC" : CE_TYPE_BINARY = 1'b0;
      "ASYNC" : CE_TYPE_BINARY = 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CE_TYPE on X_BUFMRCE instance %m is set to %s.  Legal values for this attribute are SYNC, or ASYNC.", CE_TYPE);
        $finish;
      end
    endcase

    if ((INIT_OUT >= 0) && (INIT_OUT <= 1))
      INIT_OUT_BINARY = INIT_OUT;
    else begin
      $display("Attribute Syntax Error : The Attribute INIT_OUT on X_BUFMRCE instance %m is set to %d.  Legal values for this attribute are  0 to 1.", INIT_OUT);
      $finish;
    end

  end

    X_BUFGMUX #(.CLK_SEL_TYPE(CE_TYPE))
      B1 (.I0(delay_I),
        .I1(1'b0),
        .O(o_bufg_o),
        .S(NCE));

    X_INV I1 (.I(delay_CE),
        .O(NCE));

    X_BUFGMUX_1 #(.CLK_SEL_TYPE(CE_TYPE))
     B2 (.I0(delay_I),
        .I1(1'b1),
        .O(o_bufg1_o),
        .S(NCE));

    assign O = (INIT_OUT == 1) ? o_bufg1_o : o_bufg_o;

  specify
    $period (posedge I, 0:0:0, notifier);
    $setuphold (negedge I, negedge CE, 0:0:0, 0:0:0, notifier,,, delay_I, delay_CE);
    $setuphold (negedge I, posedge CE, 0:0:0, 0:0:0, notifier,,, delay_I, delay_CE);
    $setuphold (posedge I, negedge CE, 0:0:0, 0:0:0, notifier,,, delay_I, delay_CE);
    $setuphold (posedge I, posedge CE, 0:0:0, 0:0:0, notifier,,, delay_I, delay_CE);
    ( I => O) = (100:100:100, 100:100:100);

    specparam PATHPULSE$ = 0;
  endspecify
endmodule
