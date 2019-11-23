// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/fuji/IOBUFDS_DCIEN.v,v 1.8 2012/09/13 23:10:57 robh Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  3-State Diffential Signaling I/O Buffer
// /___/   /\     Filename : IOBUFDS_DCIEN.v
// \   \  /  \
//  \___\/\___\
//
// Revision:
//    12/08/10 - Initial version.
//    03/28/11 - CR 603466 fix
//    06/15/11 - CR 613347 -- made ouput logic_1 when IBUFDISABLE is active
//    08/31/11 - CR 623170 -- Tristate powergating support
//    09/13/11 - CR 624774 -- Removed attributes IBUF_DELAY_VALUE and IFD_DELAY_VALUE
//    09/16/11 - CR 625725 -- Removed attribute CAPACITANCE
//    09/19/11 - CR 625564 -- Fixed Tristate powergating polarity
//    08/29/12 - 675511 - add parameter DQS_BIAS and functionality
//    09/11/12 - 677753 - remove X glitch on O
// End Revision

`timescale 1 ps / 1 ps

module IOBUFDS_DCIEN (O, IO, IOB, DCITERMDISABLE, I, IBUFDISABLE, T);

    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";
    parameter USE_IBUFDISABLE = "TRUE";

  localparam MODULE_NAME = "IOBUFDS_DCIEN";


    output O;
    inout  IO;
    inout  IOB;
    input  DCITERMDISABLE;
    input  I;
    input  IBUFDISABLE;
    input  T;

    wire i_in, io_in, iob_in, ibufdisable_in, dcitermdisable_in, t_in;
    reg o_out, io_out, iob_out;
    reg O_int;

    reg DQS_BIAS_BINARY = 1'b0;
    reg USE_IBUFDISABLE_BINARY = 1'b0;

    wire t_or_gts;
    wire not_t_or_ibufdisable;

    tri0 GTS = glbl.GTS;

    assign O =  (USE_IBUFDISABLE_BINARY == 1'b0) ? o_out :
                ((not_t_or_ibufdisable === 1'b1) ? 1'b1 : ((not_t_or_ibufdisable === 1'b0) ? o_out : 1'bx));

    assign dcitermdisable_in = DCITERMDISABLE;
    assign i_in = I;
    assign ibufdisable_in = IBUFDISABLE;
    assign t_in = T;
    assign io_in = IO;
    assign iob_in = IOB;

    assign t_or_gts = GTS || t_in;
    assign IO  = t_or_gts ? 1'bz :  i_in;
    assign IOB = t_or_gts ? 1'bz : ~i_in;

    assign not_t_or_ibufdisable = ~t_in || ibufdisable_in;


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

      if((IOSTANDARD == "LVDS_25") || (IOSTANDARD == "LVDSEXT_25")) begin
            $display("DRC Warning : The IOSTANDARD attribute on IOBUFDS_DCIEN instance %m is set to %s.  LVDS_25 is a fixed impedance structure optimized to 100ohm differential. If the intended usage is a bus architecture, please use BLVDS. This is only intended to be used in point to point transmissions that do not have turn around timing requirements", IOSTANDARD);
        end

        case (USE_IBUFDISABLE)

            "TRUE"  : USE_IBUFDISABLE_BINARY <= #1 1'b1;
            "FALSE" : USE_IBUFDISABLE_BINARY <= #1 1'b0;
            default : begin
                          $display("Attribute Syntax Error : The attribute USE_IBUFDISABLE on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.", MODULE_NAME, USE_IBUFDISABLE);
                          $finish;
                      end

        endcase

    end

    always @(io_in or iob_in or DQS_BIAS_BINARY) begin
        if (io_in == 1'b1 && iob_in == 1'b0)
          o_out <= 1'b1;
        else if (io_in == 1'b0 && iob_in == 1'b1)
          o_out <= 1'b0;
        else if ((io_in === 1'bz || io_in == 1'b0) && (iob_in === 1'bz || iob_in == 1'b1))
          if (DQS_BIAS_BINARY == 1'b1)
            o_out <= 1'b0;
          else
            o_out <= 1'bx;
        else if (io_in === 1'bx || iob_in === 1'bx)
          o_out <= 1'bx;
        end



endmodule
