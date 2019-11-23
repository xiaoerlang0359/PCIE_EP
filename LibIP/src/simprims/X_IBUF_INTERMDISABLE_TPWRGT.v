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
// /___/   /\     Filename : X_IBUF_INTERMDISABLE_TPWRGT.v
// \   \  /  \    Timestamp : Mon Oct 31 16:56:10 PDT 2011
//  \___\/\___\
//
// Revision:
//    10/31/11 - Initial version -- Simprim only (for tristate powergating)
// End Revision

`timescale  1 ps / 1 ps


module X_IBUF_INTERMDISABLE_TPWRGT (O, I, IBUFDISABLE, INTERMDISABLE, TPWRGT);

    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    parameter USE_IBUFDISABLE = "TRUE";
    
    output O;

    input  I;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
    input  TPWRGT;

    wire TPWRGT_OR_IBUFDISABLE;

    initial begin
	
        case (IBUF_LOW_PWR)

            "FALSE", "TRUE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute IBUF_LOW_PWR on X_IBUF_INTERMDISABLE_TPWRGT instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", IBUF_LOW_PWR);
                          $finish;
                      end

        endcase

    end

    generate
       case (USE_IBUFDISABLE)
          "TRUE" :  begin
                        assign TPWRGT_OR_IBUFDISABLE = ~TPWRGT || IBUFDISABLE;
                        assign O = (TPWRGT_OR_IBUFDISABLE == 0)? I : (TPWRGT_OR_IBUFDISABLE == 1)? 1'b1  : 1'bx;
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
