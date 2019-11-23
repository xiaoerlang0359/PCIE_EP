///////////////////////////////////////////////////////
//  Copyright (c) 1995/2006 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version     : 13.i (O.22) 
//  \  \           Description : 
//  /  /                      
// /__/   /\       Filename    : X_SUSPEND_SYNC.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
///////////////////////////////////////////////////////
// Revision
// 08/27/10 - Initial output (CR573666)
// End Revison
//////////////////////////////////////////////////////


`timescale 1 ps / 1 ps 

module X_SUSPEND_SYNC (
  SREQ,
  CLK,
  SACK
);
  parameter LOC = "UNPLACED";

  output SREQ;

  input CLK;
  input SACK;

  wire delay_CLK, delay_SACK;
  wire SREQ_OUT;
  reg sreq_o = 0;
  reg notifier;

  buf B_SREQ (SREQ, SREQ_OUT);

  assign SREQ_OUT = sreq_o;

  specify
    $period (posedge CLK, 0:0:0, notifier);
    $setuphold (posedge CLK, negedge SACK, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_SACK);
    $setuphold (posedge CLK, posedge SACK, 0:0:0, 0:0:0, notifier,,, delay_CLK, delay_SACK);
    ( CLK => SREQ) = (100:100:100, 100:100:100);

    specparam PATHPULSE$ = 0;
  endspecify


endmodule
