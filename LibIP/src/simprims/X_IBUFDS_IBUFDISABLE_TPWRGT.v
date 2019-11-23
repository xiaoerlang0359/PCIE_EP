///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 13.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Differential Signaling Input Buffer
// /___/   /\     Filename : X_IBUFDS_IBUFDISABLE_TPWRGT.v
// \   \  /  \    Timestamp : Wed Dec  8 17:04:24 PST 2010
//  \___\/\___\
//
// Revision:
//    10/28/11 - Initial version -- Simprim only (for tristate powergating)
// End Revision

`timescale  1 ps / 1 ps


module X_IBUFDS_IBUFDISABLE_TPWRGT (O, I, IB, IBUFDISABLE, TPWRGT);

    parameter DIFF_TERM = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    parameter USE_IBUFDISABLE = "TRUE";

    output O;

    input  I;
    input  IB;
    input  IBUFDISABLE;
    input  TPWRGT;

    reg o_out;
    wire TPWRGT_OR_IBUFDISABLE;

    initial begin
	
	case (DIFF_TERM)

            "TRUE", "FALSE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute DIFF_TERM on X_IBUFDS_IBUFDISABLE_TPWRGT instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", DIFF_TERM);
                          $finish;
                      end

	endcase // case(DIFF_TERM)


        case (IBUF_LOW_PWR)

            "FALSE", "TRUE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute IBUF_LOW_PWR on X_IBUFDS_IBUFDISABLE_TPWRGT instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", IBUF_LOW_PWR);
                          $finish;
                      end

        endcase

    end

    always @(I or IB) 
	if (I == 1'b1 && IB == 1'b0)
	    o_out = I;
	else if (I == 1'b0 && IB == 1'b1)
	    o_out = I;
        else if (I == 1'bx || I == 1'bz || IB == 1'bx || IB == 1'bz)
            o_out = 1'bx;

    generate
       case (USE_IBUFDISABLE)
          "TRUE" :  begin
                        assign TPWRGT_OR_IBUFDISABLE = ~TPWRGT || IBUFDISABLE;
                        assign O = (TPWRGT_OR_IBUFDISABLE == 0)? o_out : (TPWRGT_OR_IBUFDISABLE == 1)? 1'b1  : 1'bx;
                    end
          "FALSE" : begin
                        assign O = o_out;
                    end
       endcase
    endgenerate

    specify
        (I => O)                = (0:0:0,  0:0:0);
        (IB => O)               = (0:0:0,  0:0:0);
        (IBUFDISABLE => O)      = (0:0:0,  0:0:0);
        specparam PATHPULSE$ = 0;
    endspecify
    

endmodule
