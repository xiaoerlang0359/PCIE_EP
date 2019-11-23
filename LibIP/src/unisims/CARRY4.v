// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/rainier/CARRY4.v,v 1.6 2012/04/25 22:26:13 robh Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2009 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Fast Carry Logic with Look Ahead 
// /___/   /\     Filename : CARRY4.v
// \   \  /  \    
//  \___\/\___\
//
// Revision:
//    04/11/05 - Initial version.
//    05/06/05 - Unused CYINT or CI pin need grounded instead of open (CR207752)
//    05/31/05 - Change pin order, remove connection check for CYINIT and CI.
//    05/30/07 - Change timescale to 1 ps / 1ps.
//    04/13/12 - CR655410 - add pulldown, CI, CYINIT, sync uni/sim/unp
// End Revision

`timescale  1 ps / 1 ps

module CARRY4 (CO, O, CI, CYINIT, DI, S);

    output [3:0] CO;
    output [3:0] O;
    input        CI;
    input        CYINIT;
    input  [3:0] DI;
    input  [3:0] S;

    wire [3:0] di_in, s_in, o_out, co_out;
    wire ci_or_cyinit;
    wire ci_in, cyinit_in;

    pulldown P1 (CI);
    pulldown P2 (CYINIT);

    assign ci_in = CI;
    assign cyinit_in = CYINIT;
    assign di_in = DI;
    assign s_in = S;
    assign O = o_out;
    assign CO = co_out;

    assign o_out = s_in ^ {co_out[2:0], ci_or_cyinit};
    assign co_out[0] = s_in[0] ? ci_or_cyinit : di_in[0];
    assign co_out[1] = s_in[1] ? co_out[0] : di_in[1];
    assign co_out[2] = s_in[2] ? co_out[1] : di_in[2];
    assign co_out[3] = s_in[3] ? co_out[2] : di_in[3];
    assign  ci_or_cyinit = ci_in | cyinit_in;


endmodule
