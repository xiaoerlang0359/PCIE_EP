// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/fuji/X_USR_ACCESSE2.v,v 1.2 2012/09/21 23:59:13 wloo Exp $
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
// /__/   /\       Filename    : X_USR_ACCESSE2.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision:		1.0
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module X_USR_ACCESSE2 (
  CFGCLK,
  DATA,
  DATAVALID
);

  parameter LOC = "UNPLACED";

  output CFGCLK;
  output DATAVALID;
  output [31:0] DATA;

    
  specify

    specparam PATHPULSE$ = 0;
  endspecify
endmodule
