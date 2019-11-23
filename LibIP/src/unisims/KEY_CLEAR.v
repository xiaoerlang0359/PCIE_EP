///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /
// /___/   /\     Filename : KEY_CLEAR.v 
// \   \  /  \    Timestamp : Wed Aug 17 16:23:43 PDT 2005
//  \___\/\___\
//
// Revision:
//    08/17/05 - Initial version.
//    01/31/11 - Add pulse width check (CR591410)
// End Revision

`timescale 1 ps / 1 ps 

module KEY_CLEAR (
	KEYCLEARB
);

input KEYCLEARB;
reg notifier;

specify
   $width (posedge KEYCLEARB, 200000:200000:200000, 0, notifier);
	specparam PATHPULSE$ = 0;
endspecify

endmodule
