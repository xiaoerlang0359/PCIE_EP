// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_OBUFTDS.v,v 1.9 2010/12/02 00:14:04 fphillip Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1i (K.17)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  3-State Differential Signaling Output Buffer
// /___/   /\     Filename : X_OBUFTDS.v
// \   \  /  \    Timestamp : Tue Mar  1 14:57:54 PST 2005
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/01/05 - Added global GTS.
//    03/01/05 - Added LOC parameter.
//    05/23/05 - Declared tri0 GTS.
//    07/21/05 - CR 212974 -- matched unisim parameters as requested by other tools
//    06/04/07 - Add wire declaration to internal signal.
//    05/12/10 - CR 559469 -- Added DRC warnings for LVDS_25 bus architectures.  
//    12/01/10 - CR 584500 - added attribute SLEW
// End Revision

`timescale 1 ps/1 ps

module X_OBUFTDS (O, OB, I, T);

    parameter LOC = " UNPLACED";
    parameter CAPACITANCE = "DONT_CARE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";

    output O, OB;

    input  I, T;
    tri0 GTS = glbl.GTS;
    wire T_IN;

    or (T_IN, GTS, T);
    bufif0 (O, I, T_IN);
    notif0 (OB, I, T_IN);

    initial begin
      if((IOSTANDARD == "LVDS_25") || (IOSTANDARD == "LVDSEXT_25")) begin 
            $display("DRC Warning : The IOSTANDARD attribute on X_OBUFTDS instance %m is set to %s.  LVDS_25 is a fixed impedance structure optimized to 100ohm differential. If the intended usage is a bus architecture, please use BLVDS. This is only intended to be used in point to point transmissions that do not have turn around timing requirements", IOSTANDARD);
        end

    end // initial

    specify
	(I => O)  = (0:0:0, 0:0:0);
	(I => OB) = (0:0:0, 0:0:0);
	(T => O)  = (0:0:0, 0:0:0,
		     0:0:0, 0:0:0,
		     0:0:0, 0:0:0);
	(T => OB) = (0:0:0, 0:0:0,
		     0:0:0, 0:0:0,
		     0:0:0, 0:0:0);
	specparam PATHPULSE$ = 0;
    endspecify

endmodule
