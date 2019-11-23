///////////////////////////////////////////////////////
//  Copyright (c) 2010 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version     : 12.2 
//  \  \           Description : 
//  /  /                      
// /__/   /\       Filename    : X_STARTUP_VIRTEX6_SELF_TIMING.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
// Revision:
//    04/21/10 - CR 556563
// End Revision

`timescale 1 ps / 1 ps 

module X_STARTUP_VIRTEX6_SELF_TIMING (
  CFGCLK,
  CFGMCLK,
  DINSPI,
  EOS,
  PREQ,
  TCKSPI,
  CLK,
  GSR,
  GTS,
  KEYCLEARB,
  PACK,
  USRCCLKO,
  USRCCLKTS,
  USRDONEO,
  USRDONETS
);

  parameter LOC = "UNPLACED";
  parameter PROG_USR = "FALSE";

  output CFGCLK;
  output CFGMCLK;
  output DINSPI;
  output EOS;
  output PREQ;
  output TCKSPI;

  input CLK;
  input GSR;
  input GTS;
  input KEYCLEARB;
  input PACK;
  input USRCCLKO;
  input USRCCLKTS;
  input USRDONEO;
  input USRDONETS;

  pulldown( CLK );
  pulldown( GSR );
  pulldown( GTS );
  pulldown( PACK );
  pulldown( USRCCLKO );
  pulldown( USRDONEO );
  pullup( KEYCLEARB );
  pullup( USRCCLKTS );
  pullup( USRDONETS );

  tri0 GSR, GTS;

  time CFGMCLK_PERIOD = 20000;

  reg cfgmclk_out;

  initial begin
     cfgmclk_out = 0;
     forever #(CFGMCLK_PERIOD/2.0) cfgmclk_out = !cfgmclk_out;
  end

  assign CFGMCLK = cfgmclk_out;

  specify
        specparam PATHPULSE$ = 0;
  endspecify

endmodule
