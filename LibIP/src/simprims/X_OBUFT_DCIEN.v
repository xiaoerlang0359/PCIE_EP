///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 13.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  3-State Output Buffer
// /___/   /\     Filename : X_OBUFT_DCIEN.v
// \   \  /  \    Timestamp : Thu Apr 29 14:59:30 PDT 2010
//  \___\/\___\
//
// Revision:
//    04/29/10 - Initial version.
//    12/20/10 - CR 587760 -- For backend support only, no corresponding unisim 
// End Revision

`timescale  1 ps / 1 ps


module X_OBUFT_DCIEN (O, DCITERMDISABLE, I, T);

    parameter integer DRIVE = 12;
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";
    parameter LOC = "UNPLACED";

    output O;

    input  DCITERMDISABLE;
    input  I;
    input  T;

    wire ts;

    tri0 GTS = glbl.GTS;

    or O1 (ts, GTS, T);
    bufif0 T1 (O, I, ts);

    specify
        (DCITERMDISABLE => O)   = (0:0:0,  0:0:0);
        (I => O)                = (0:0:0,  0:0:0);
        (T => O)                = (0:0:0,  0:0:0);
        specparam PATHPULSE$ = 0;
    endspecify

endmodule

