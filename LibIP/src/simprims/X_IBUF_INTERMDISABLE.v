///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2011 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 13.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Input Buffer
// /___/   /\     Filename : X_IBUF_INTERMDISABLE.v
// \   \  /  \    Timestamp : Wed Apr 20 17:49:56 PDT 2011
//  \___\/\___\
//
// Revision:
//    04/20/11 - Initial version.
//    06/15/11 - CR 613347 -- made ouput logic_1 when IBUFDISABLE is active
//    08/31/11 - CR 623170 -- added attribute USE_IBUFDISABLE
//    09/14/11 - CR 624774 -- Removed attributes IBUF_DELAY_VALUE and IFD_DELAY_VALUE
//    09/16/11 - CR 625725 -- Removed attribute CAPACITANCE
// End Revision

`timescale  1 ps / 1 ps


module X_IBUF_INTERMDISABLE (O, I, IBUFDISABLE, INTERMDISABLE);

    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    parameter USE_IBUFDISABLE = "TRUE";
    
    output O;

    input  I;
    input  IBUFDISABLE;
    input  INTERMDISABLE;

    initial begin
	
        case (IBUF_LOW_PWR)

            "FALSE", "TRUE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute IBUF_LOW_PWR on X_IBUF_INTERMDISABLE instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", IBUF_LOW_PWR);
                          $finish;
                      end

        endcase

    end

    generate
       case (USE_IBUFDISABLE)
          "TRUE" :  begin
                        assign O = (IBUFDISABLE == 0)? I : (IBUFDISABLE == 1)? 1'b1  : 1'bx;
                    end
          "FALSE" : begin
                        assign O = I;
                    end
       endcase
    endgenerate

    specify

        (I => O) 		= (0:0:0,  0:0:0);
        (IBUFDISABLE => O)	= (0:0:0,  0:0:0);
        (INTERMDISABLE => O)	= (0:0:0,  0:0:0);

        specparam PATHPULSE$ = 0;

    endspecify

endmodule
