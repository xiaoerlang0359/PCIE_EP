// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/fuji/USR_ACCESSE2.v,v 1.2 2012/09/21 23:49:10 wloo Exp $
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
// /__/   /\       Filename    : USR_ACCESSE2.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
/////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module USR_ACCESSE2 (
  CFGCLK,
  DATA,
  DATAVALID
);

  output CFGCLK;
  output DATAVALID;
  output [31:0] DATA;

  specify
    specparam PATHPULSE$ = 0;
  endspecify

endmodule
