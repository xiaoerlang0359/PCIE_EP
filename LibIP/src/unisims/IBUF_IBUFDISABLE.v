///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Input Buffer
// /___/   /\     Filename : IBUF_IBUFDISABLE.v
// \   \  /  \    Timestamp : Wed Dec  8 17:04:24 PST 2010
//  \___\/\___\
//
// Revision:
//    12/08/10 - Initial version.
//    04/04/11 - CR 604808 fix 
//    06/15/11 - CR 613347 -- made ouput logic_1 when IBUFDISABLE is active
//    08/31/11 - CR 623170 -- added attribute USE_IBUFDISABLE
//    09/13/11 - CR 624774 -- Removed attributes IBUF_DELAY_VALUE and IFD_DELAY_VALUE
//    09/16/11 - CR 625725 -- Removed attribute CAPACITANCE
// End Revision

`timescale  1 ps / 1 ps


module IBUF_IBUFDISABLE (O, I, IBUFDISABLE);

    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter USE_IBUFDISABLE = "TRUE";
    
    output O;

    input  I;
    input  IBUFDISABLE;

    initial begin
	
        case (IBUF_LOW_PWR)

            "FALSE", "TRUE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute IBUF_LOW_PWR on IBUF_IBUFDISABLE instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", IBUF_LOW_PWR);
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


endmodule
