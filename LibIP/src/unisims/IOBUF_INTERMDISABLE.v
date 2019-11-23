///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2011 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Bi-Directional Buffer
// /___/   /\     Filename : IOBUF_INTERMDISABLE.v
// \   \  /  \    Timestamp : Wed Apr 20 17:49:56 PDT 2011
//  \___\/\___\
//
// Revision:
//    04/20/11 - Initial version.
//    06/15/11 - CR 613347 -- made ouput logic_1 when IBUFDISABLE is active
//    08/31/11 - CR 623170 -- Tristate powergating support
//    09/14/11 - CR 624774 -- Removed attributes IBUF_DELAY_VALUE and IFD_DELAY_VALUE
//    09/16/11 - CR 625725 -- Removed attribute CAPACITANCE
//    09/19/11 - CR 625564 -- Fixed Tristate powergating polarity
// End Revision

`timescale  1 ps / 1 ps


module IOBUF_INTERMDISABLE (O, IO, I, IBUFDISABLE, INTERMDISABLE, T);

    parameter integer DRIVE = 12;
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";
    parameter USE_IBUFDISABLE = "TRUE";

    output O;
    inout  IO;
    input  I;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
    input  T;

    wire ts;
    wire T_OR_IBUFDISABLE;

    tri0 GTS = glbl.GTS;

    or O1 (ts, GTS, T);
    bufif0 T1 (IO, I, ts);

//    buf B1 (O, IO);

    initial begin
	
        case (IBUF_LOW_PWR)

            "FALSE", "TRUE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute IBUF_LOW_PWR on IOBUF_INTERMDISABLE instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", IBUF_LOW_PWR);
                          $finish;
                      end

        endcase

    end // initial begin
    
    generate
       case (USE_IBUFDISABLE)
          "TRUE" :  begin
                       assign T_OR_IBUFDISABLE = ~T || IBUFDISABLE;
                       assign O = (T_OR_IBUFDISABLE == 1'b1) ? 1'b1 : (T_OR_IBUFDISABLE == 1'b0) ? IO : 1'bx;
                    end
          "FALSE" : begin
                        assign O = IO;
                    end
       endcase
    endgenerate

endmodule
