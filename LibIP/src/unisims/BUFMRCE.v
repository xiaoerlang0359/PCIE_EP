// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/fuji/BUFMRCE.v,v 1.1 2009/12/21 21:08:16 yanx Exp $
///////////////////////////////////////////////////////
//  Copyright (c) 2009 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version : 10.1
//  \  \           Description : 
//  /  /                      
// /__/   /\       Filename    : BUFMRCE.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision:		1.0
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module BUFMRCE (
  O,

  CE,
  I
);

  parameter CE_TYPE = "SYNC";
  parameter integer INIT_OUT = 0;

  output O;

  input CE;
  input I;

  wire   NCE, o_bufg_o, o_bufg1_o;
  reg CE_TYPE_BINARY;
  reg INIT_OUT_BINARY;

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
        $display("Attribute Syntax Error : The Attribute CE_TYPE on BUFMRCE instance %m is set to %s.  Legal values for this attribute are SYNC, or ASYNC.", CE_TYPE);
        $finish;
      end
    endcase

    if ((INIT_OUT >= 0) && (INIT_OUT <= 1))
      INIT_OUT_BINARY = INIT_OUT;
    else begin
      $display("Attribute Syntax Error : The Attribute INIT_OUT on BUFMRCE instance %m is set to %d.  Legal values for this attribute are  0 to 1.", INIT_OUT);
      $finish;
    end

  end

    BUFGMUX #(.CLK_SEL_TYPE(CE_TYPE))
      B1 (.I0(I),
        .I1(1'b0),
        .O(o_bufg_o),
        .S(NCE));


    INV I1 (.I(CE),
        .O(NCE));

    BUFGMUX_1 #(.CLK_SEL_TYPE(CE_TYPE))
     B2 (.I0(I),
        .I1(1'b1),
        .O(o_bufg1_o),
        .S(NCE));

    assign O = (INIT_OUT == 1) ? o_bufg1_o : o_bufg_o;


endmodule
