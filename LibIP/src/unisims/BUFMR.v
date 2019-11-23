// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/fuji/BUFMR.v,v 1.1 2009/12/21 21:08:16 yanx Exp $
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
// /__/   /\       Filename    : BUFMR.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision:		1.0
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module BUFMR (
  O,

  I
);


  output O;

  input I;


  buf B1 (O, I);

endmodule
