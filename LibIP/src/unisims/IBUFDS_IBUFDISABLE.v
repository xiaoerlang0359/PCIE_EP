// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/fuji/IBUFDS_IBUFDISABLE.v,v 1.9 2012/09/13 23:10:57 robh Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Differential Signaling Input Buffer
// /___/   /\     Filename : IBUFDS_IBUFDISABLE.v
// \   \  /  \
//  \___\/\___\
//
// Revision:
//    12/08/10 - Initial version.
//    04/04/11 - CR 604808 fix
//    06/15/11 - CR 613347 -- made ouput logic_1 when IBUFDISABLE is active
//    08/31/11 - CR 623170 -- added attribute USE_IBUFDISABLE
//    09/13/11 - CR 624774 -- Removed attributes IBUF_DELAY_VALUE and IFD_DELAY_VALUE
//    09/16/11 - CR 625725 -- Removed attribute CAPACITANCE
//    08/29/12 - 675511 - add parameter DQS_BIAS and functionality
//    09/11/12 - 677753 - remove X glitch on O
// End Revision

`timescale 1 ps / 1 ps

module IBUFDS_IBUFDISABLE (O, I, IB, IBUFDISABLE);

  parameter DIFF_TERM = "FALSE";
  parameter DQS_BIAS = "FALSE";
  parameter IBUF_LOW_PWR = "TRUE";
  parameter IOSTANDARD = "DEFAULT";
  parameter USE_IBUFDISABLE = "TRUE";

  localparam MODULE_NAME = "IBUFDS_IBUFDISABLE";


    output O;

    input  I;
    input  IB;
    input  IBUFDISABLE;

    wire i_in, ib_in, ibufdisable_in;
    reg o_out;

    reg DQS_BIAS_BINARY = 1'b0;
    reg USE_IBUFDISABLE_BINARY = 1'b0;

    assign O =  (USE_IBUFDISABLE_BINARY == 1'b0) ? o_out :
                ((ibufdisable_in === 1'b1) ? 1'b1 : ((ibufdisable_in === 1'b0) ? o_out : 1'bx));

    assign i_in = I;
    assign ib_in = IB;
    assign ibufdisable_in = IBUFDISABLE;

    initial begin

        case (DQS_BIAS)

            "TRUE"  : DQS_BIAS_BINARY <= #1 1'b1;
            "FALSE" : DQS_BIAS_BINARY <= #1 1'b0;
            default : begin
                          $display("Attribute Syntax Error : The attribute DQS_BIAS on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DQS_BIAS);
                          $finish;
                      end

        endcase

	case (DIFF_TERM)

            "TRUE", "FALSE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute DIFF_TERM on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, DIFF_TERM);
                          $finish;
                      end

	endcase // case(DIFF_TERM)

        case (IBUF_LOW_PWR)

            "FALSE", "TRUE" : ;
            default : begin
                          $display("Attribute Syntax Error : The attribute IBUF_LOW_PWR on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, IBUF_LOW_PWR);
                          $finish;
                      end

        endcase

        case (USE_IBUFDISABLE)

            "TRUE"  : USE_IBUFDISABLE_BINARY <= #1 1'b1;
            "FALSE" : USE_IBUFDISABLE_BINARY <= #1 1'b0;
            default : begin
                          $display("Attribute Syntax Error : The attribute USE_IBUFDISABLE on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, USE_IBUFDISABLE);
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

endmodule
