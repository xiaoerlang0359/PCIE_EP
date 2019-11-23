// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/fuji/X_BUFHCE.v,v 1.3 2011/01/27 20:11:58 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 13.i (O.40)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  H Clock Buffer with Active High Enable
// /___/   /\     Filename : X_BUFHCE.v
// \   \  /  \    Timestamp : 
//  \___\/\___\
//
// Revision:
//    04/08/08 - Initial version.
//    09/19/08 - Add GSR
//    10/19/08 - Recoding to same as BUFGCE according to hardware.
//    12/13/09 - Add CE_TYPE attribute
//    01/27/11 - Add CE to O iopath (CR591499)
// End Revision

`timescale 1 ps/1 ps

module X_BUFHCE (O, CE, I);

  parameter CE_TYPE = "SYNC";
  parameter integer INIT_OUT = 0;
  parameter LOC = "UNPLACED";
  output O;
  input CE;
  input I;

  reg notifier;
  wire del_I, delCE;
  wire  NCE, o_bufg_o, o_bufg1_o;
  reg CE_TYPE_BINARY;
  reg INIT_OUT_BINARY;

  initial begin
    case (CE_TYPE)
      "SYNC" : CE_TYPE_BINARY = 1'b0;
      "ASYNC" : CE_TYPE_BINARY = 1'b1;
      default : begin
        $display("Attribute Syntax Error : The Attribute CE_TYPE on X_BUFHCE instance %m is set to %s.  Legal values for this attribute are SYNC, or ASYNC.", CE_TYPE);
        $finish;
      end
    endcase

    if ((INIT_OUT >= 0) && (INIT_OUT <= 1))
      INIT_OUT_BINARY = INIT_OUT;
    else begin
      $display("Attribute Syntax Error : The Attribute INIT_OUT on X_BUFHCE instance %m is set to %d.  Legal values for this attribute are  0 to 1.", INIT_OUT);      $finish;
    end

  end

  X_BUFGMUX #(.CLK_SEL_TYPE(CE_TYPE))
     B1 (.I0(del_I),
        .I1(1'b0),
        .O(o_bufg_o),
        .S(NCE));
                                                                                  
  X_INV I1 (.I(delCE),
        .O(NCE));

  X_BUFGMUX_1 #(.CLK_SEL_TYPE(CE_TYPE))
    B2 (.I0(del_I),
        .I1(1'b1),
        .O(o_bufg1_o),
        .S(NCE));

  assign O = (INIT_OUT == 1) ? o_bufg1_o : o_bufg_o;

  specify
    $period (posedge I, 0:0:0, notifier);
    $setuphold (negedge I, negedge CE, 0:0:0, 0:0:0, notifier,,, del_I, delCE);
    $setuphold (negedge I, posedge CE, 0:0:0, 0:0:0, notifier,,, del_I, delCE);
    $setuphold (posedge I, negedge CE, 0:0:0, 0:0:0, notifier,,, del_I, delCE);
    $setuphold (posedge I, posedge CE, 0:0:0, 0:0:0, notifier,,, del_I, delCE);
    ( CE *> O) = (100:100:100, 100:100:100);
    ( I *> O) = (100:100:100, 100:100:100);
    specparam PATHPULSE$ = 0;
  endspecify

endmodule
