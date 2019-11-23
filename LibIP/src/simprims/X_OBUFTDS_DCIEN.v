///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 13.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  3-State Differential Signaling Output Buffer
// /___/   /\     Filename : X_OBUFTDS_DCIEN.v
// \   \  /  \    Timestamp : Thu Apr 29 14:59:30 PDT 2010
//  \___\/\___\
//
// Revision:
//    04/29/10 - Initial version.
//    12/20/10 - CR 587760 -- For backend support only, no corresponding unisi
// End Revision

`timescale  1 ps / 1 ps

module X_OBUFTDS_DCIEN (O, OB, DCITERMDISABLE, I, T);

    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
   
    output O;
    output OB;

    input  DCITERMDISABLE;
    input  I;
    input  T;

    wire ts;

    tri0 GTS = glbl.GTS;

    or O1 (ts, GTS, T);
    bufif0 B1 (O, I, ts);
    notif0 N1 (OB, I, ts);

    specify
        (DCITERMDISABLE => O)   = (0:0:0,  0:0:0);
        (DCITERMDISABLE => OB)  = (0:0:0,  0:0:0);
        (I => O)                = (0:0:0,  0:0:0);
        (I => OB)               = (0:0:0,  0:0:0);
        (T => O)                = (0:0:0,  0:0:0);
        (T => OB)               = (0:0:0,  0:0:0);
        specparam PATHPULSE$ = 0;
    endspecify

    
endmodule


