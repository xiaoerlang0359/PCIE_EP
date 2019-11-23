// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_IBUFDS.v,v 1.9 2012/09/13 23:10:57 robh Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Differential Signaling Input Buffer
// /___/   /\     Filename : X_IBUFDS.v
// \   \  /  \
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
//    07/21/05 - CR 212974 -- matched unisim parameters as requested by other tools
//    07/19/06 - Add else to handle x case for o_out (CR 234718).
//    08/29/12 - 675332 - add parameter DQS_BIAS and functionality
//    09/11/12 - 677753 - remove X glitch on O
// End Revision

`timescale 1 ps / 1 ps


module X_IBUFDS (O, I, IB);

  parameter LOC = "UNPLACED";
  parameter CAPACITANCE = "DONT_CARE";
  parameter DIFF_TERM = "FALSE";
  parameter DQS_BIAS = "FALSE";
  parameter IBUF_DELAY_VALUE = "0";
  parameter IFD_DELAY_VALUE = "AUTO";
  parameter IOSTANDARD = "DEFAULT";

  localparam MODULE_NAME = "X_IBUFDS";

    output O;
    input  I, IB;

    wire i_in, ib_in;
    reg o_out;
    reg DQS_BIAS_BINARY = 1'b0;

    assign O = o_out;

    assign i_in = I;
    assign ib_in = IB;

    initial begin
   
        case (DQS_BIAS)

            "TRUE"  : DQS_BIAS_BINARY <= #1 1'b1;
            "FALSE" : DQS_BIAS_BINARY <= #1 1'b0;
            default : begin
                          $display("Attribute Syntax Error : The attribute DQS_BIAS on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DQS_BIAS);
                          $finish;
                      end

        endcase

end

    always @(i_in or ib_in or DQS_BIAS_BINARY) begin
        if (i_in == 1'b1 && ib_in == 1'b0)
          o_out <= 1'b1;
        else if (i_in == 1'b0 && ib_in == 1'b1)
          o_out <= 1'b0;
        else if ((i_in === 1'bz || i_in == 1'b0) && (ib_in === 1'bz || ib_in == 1'b1))
          if (DQS_BIAS_BINARY == 1'b1)
            o_out <= 1'b0;
          else
            o_out <= 1'bx;
        else if ((i_in === 1'bx) || (ib_in === 1'bx))
          o_out <= 1'bx;
        end
    
    specify

   (I => O) = (0:0:0, 0:0:0);
   (IB => O) = (0:0:0, 0:0:0);

   specparam PATHPULSE$ = 0;

    endspecify

endmodule
