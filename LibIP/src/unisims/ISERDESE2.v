///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2010 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Source Synchronous Input Deserializer for Virtex7
// /___/   /\     Filename : ISERDESE2.v
// \   \  /  \    Timestamp : Tue Jan 19 16:29:39 PST 2010
//  \___\/\___\
//
// Revision:
//    01/19/10 - Initial version.
//    08/31/10 - CR 574021 -- Added Data Muxing.
//    10/28/10 - CR 580517 -- Data Muxing varibles must be initialized for certain simulators. 
// End Revision

`timescale 1 ps / 1 ps 

module ISERDESE2 (
  O,
  Q1,
  Q2,
  Q3,
  Q4,
  Q5,
  Q6,
  Q7,
  Q8,
  SHIFTOUT1,
  SHIFTOUT2,

  BITSLIP,
  CE1,
  CE2,
  CLK,
  CLKB,
  CLKDIV,
  CLKDIVP,
  D,
  DDLY,
  DYNCLKDIVSEL,
  DYNCLKSEL,
  OCLK,
  OCLKB,
  OFB,
  RST,
  SHIFTIN1,
  SHIFTIN2
);

  parameter DATA_RATE = "DDR";
  parameter integer DATA_WIDTH = 4;
  parameter DYN_CLKDIV_INV_EN = "FALSE";
  parameter DYN_CLK_INV_EN = "FALSE";
  parameter [0:0] INIT_Q1 = 1'b0;
  parameter [0:0] INIT_Q2 = 1'b0;
  parameter [0:0] INIT_Q3 = 1'b0;
  parameter [0:0] INIT_Q4 = 1'b0;
  parameter INTERFACE_TYPE = "MEMORY";
  parameter IOBDELAY = "NONE";
  parameter integer NUM_CE = 2;
  parameter OFB_USED = "FALSE";
  parameter SERDES_MODE = "MASTER";
  parameter [0:0] SRVAL_Q1 = 1'b0;
  parameter [0:0] SRVAL_Q2 = 1'b0;
  parameter [0:0] SRVAL_Q3 = 1'b0;
  parameter [0:0] SRVAL_Q4 = 1'b0;
  
  localparam in_delay = 0;
  localparam out_delay = 0;
  localparam INCLK_DELAY = 0;
  localparam OUTCLK_DELAY = 0;

  output O;
  output Q1;
  output Q2;
  output Q3;
  output Q4;
  output Q5;
  output Q6;
  output Q7;
  output Q8;
  output SHIFTOUT1;
  output SHIFTOUT2;

  input BITSLIP;
  input CE1;
  input CE2;
  input CLK;
  input CLKB;
  input CLKDIV;
  input CLKDIVP;
  input D;
  input DDLY;
  input DYNCLKDIVSEL;
  input DYNCLKSEL;
  input OCLK;
  input OCLKB;
  input OFB;
  input RST;
  input SHIFTIN1;
  input SHIFTIN2;

  reg INTERFACE_TYPE_BINARY;
  reg IOBDELAY_BINARY;
  reg [0:0] DATA_RATE_BINARY;
  reg [0:0] DYN_CLKDIV_INV_EN_BINARY;
  reg [0:0] DYN_CLK_INV_EN_BINARY;
  reg [0:0] INIT_Q1_BINARY;
  reg [0:0] INIT_Q2_BINARY;
  reg [0:0] INIT_Q3_BINARY;
  reg [0:0] INIT_Q4_BINARY;
  reg [0:0] NUM_CE_BINARY;
  reg [0:0] SERDES_MODE_BINARY;
  reg [0:0] SRVAL_Q1_BINARY;
  reg [0:0] SRVAL_Q2_BINARY;
  reg [0:0] SRVAL_Q3_BINARY;
  reg [0:0] SRVAL_Q4_BINARY;
  reg [1:0] OFB_USED_BINARY;
  reg [3:0] DATA_WIDTH_BINARY;

  reg data_in = 0;
  reg o_out_pre_fb = 0, o_delay_pre_fb = 0;
  reg o_out = 0; 

  tri0 GSR = glbl.GSR;

  wire delay_O;
  wire delay_Q1;
  wire delay_Q2;
  wire delay_Q3;
  wire delay_Q4;
  wire delay_Q5;
  wire delay_Q6;
  wire delay_Q7;
  wire delay_Q8;
  wire delay_SHIFTOUT1;
  wire delay_SHIFTOUT2;

  wire delay_BITSLIP;
  wire delay_CE1;
  wire delay_CE2;
  wire delay_CLK;
  wire delay_CLKB;
  wire delay_CLKDIV;
  wire delay_CLKDIVP;
  wire delay_D;
  wire delay_DDLY;
  wire delay_DYNCLKDIVSEL;
  wire delay_DYNCLKSEL;
  wire delay_OCLK;
  wire delay_OCLKB;
  wire delay_OFB;
  wire delay_RST;
  wire delay_SHIFTIN1;
  wire delay_SHIFTIN2;

// CR 574021
//  assign #(out_delay) O = delay_O;
  assign #(out_delay) O = o_out;
  assign #(out_delay) Q1 = delay_Q1;
  assign #(out_delay) Q2 = delay_Q2;
  assign #(out_delay) Q3 = delay_Q3;
  assign #(out_delay) Q4 = delay_Q4;
  assign #(out_delay) Q5 = delay_Q5;
  assign #(out_delay) Q6 = delay_Q6;
  assign #(out_delay) Q7 = delay_Q7;
  assign #(out_delay) Q8 = delay_Q8;
  assign #(out_delay) SHIFTOUT1 = delay_SHIFTOUT1;
  assign #(out_delay) SHIFTOUT2 = delay_SHIFTOUT2;

  assign #(INCLK_DELAY) delay_CLK = CLK;
  assign #(INCLK_DELAY) delay_CLKB = CLKB;
  assign #(INCLK_DELAY) delay_CLKDIV = CLKDIV;
  assign #(INCLK_DELAY) delay_CLKDIVP = CLKDIVP;
  assign #(INCLK_DELAY) delay_OCLK = OCLK;
  assign #(INCLK_DELAY) delay_OCLKB = OCLKB;

  assign #(in_delay) delay_BITSLIP = BITSLIP;
  assign #(in_delay) delay_CE1 = CE1;
  assign #(in_delay) delay_CE2 = CE2;
  assign #(in_delay) delay_D = D;
  assign #(in_delay) delay_DDLY = DDLY;
  assign #(in_delay) delay_DYNCLKDIVSEL = DYNCLKDIVSEL;
  assign #(in_delay) delay_DYNCLKSEL = DYNCLKSEL;
  assign #(in_delay) delay_OFB = OFB;
  assign #(in_delay) delay_RST = RST;
  assign #(in_delay) delay_SHIFTIN1 = SHIFTIN1;
  assign #(in_delay) delay_SHIFTIN2 = SHIFTIN2;


//----------------------------------------------------------
//------------------------- TASKS --------------------------
//----------------------------------------------------------
    task INTERFACE_TYPE_msg;
         begin
            $display("DRC  Warning : The combination of INTERFACE_TYPE, DATA_RATE and DATA_WIDTH values on instance %m is not recommended.\n");
            $display("The current settings are : INTERFACE_TYPE = %s, DATA_RATE = %s and DATA_WIDTH = %d\n", INTERFACE_TYPE, DATA_RATE, DATA_WIDTH);
            $display("The recommended combinations of values are :\n");
            $display("NETWORKING SDR 2, 3, 4, 5, 6, 7, 8\n");
            $display("NETWORKING DDR 4, 6, 8, 10, 14\n");
            $display("MEMORY SDR None\n");
            $display("MEMORY DDR 4\n");
         end
    endtask // INTERFACE_TYPE_msg

    task OVERSAMPLE_DDR_SDR_msg;
         begin
            $display("DRC  Warning : The combination of INTERFACE_TYPE, DATA_RATE and DATA_WIDTH values on instance %m is not recommended.\n");
            $display("The current settings are : INTERFACE_TYPE = %s, DATA_RATE = %s and DATA_WIDTH = %d\n", INTERFACE_TYPE, DATA_RATE, DATA_WIDTH);
            $display("The recommended combinations of values are :\n");
            $display("OVERSAMPLE SDR None\n");
            $display("OVERSAMPLE DDR 4\n");
         end
    endtask // OVERSAMPLE_DDR_SDR_msg

//----------------------------------------------------------
//------------------ Parameter Checks ----------------------
//----------------------------------------------------------
    initial begin
//-------------------------------------------------
//----- DATA_RATE check
//-------------------------------------------------
        case (DATA_RATE)
            "SDR", "DDR" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_RATE on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are SDR or DDR", DATA_RATE);
                          $finish;
                      end
        endcase // case(DATA_RATE)

//-------------------------------------------------
//----- DATA_WIDTH check
//-------------------------------------------------
        case (DATA_WIDTH)

            2, 3, 4, 5, 6, 7, 8, 10, 14 :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DATA_WIDTH on ISERDESE2 instance %m is set to %d.  Legal values for this attribute are 2, 3, 4, 5, 6, 7, 8, 10 or 14", DATA_WIDTH);
                          $finish;
                      end
        endcase // case(DATA_WIDTH)


//-------------------------------------------------
//----- DYN_CLKDIV_INV_EN check
//-------------------------------------------------
        case (DYN_CLKDIV_INV_EN)

            "TRUE", "FALSE" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DYN_CLKDIV_INV_EN on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are FALSE or TRUE", DYN_CLKDIV_INV_EN);
                          $finish;
                      end

        endcase // case(DYN_CLKDIV_INV_EN)

//-------------------------------------------------
//----- DYN_CLK_INV_EN check
//-------------------------------------------------
        case (DYN_CLK_INV_EN)

            "TRUE", "FALSE" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute DYN_CLK_INV_EN on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are FALSE or TRUE", DYN_CLK_INV_EN);
                          $finish;
                      end

        endcase // case(DYN_CLK_INV_EN)

//-------------------------------------------------
//----- IOBDELAY check
//-------------------------------------------------
        case (IOBDELAY)
            "NONE", "IBUF", "IFD", "BOTH" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute IOBDELAY on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are NONE, IBUF, IFD or BOTH", IOBDELAY);
                          $finish;
                      end
        endcase // case(IOBDELAY)

//-------------------------------------------------
//----- OFB_USED check
//-------------------------------------------------
        case (OFB_USED)

            "TRUE", "FALSE" :;
            default : begin
                          $display("Attribute Syntax Error : The attribute OFB_USED on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are FALSE or TRUE", OFB_USED);
                          $finish;
                      end

        endcase // case(OFB_USED)
//-------------------------------------------------
//----- NUM_CE check
//-------------------------------------------------
        case (NUM_CE)

            1, 2 :;
            default : begin
                          $display("Attribute Syntax Error : The attribute NUM_CE on ISERDESE2 instance %m is set to %d.  Legal values for this attribute are 1 or 2", NUM_CE);
                          $finish;
                      end

        endcase // case(NUM_CE)


//-------------------------------------------------
//----- INTERFACE_TYPE check
//-------------------------------------------------
        case (INTERFACE_TYPE)
               "MEMORY" : begin
                        case(DATA_RATE)
                             "DDR" :
                                   case(DATA_WIDTH)
                                       4 : ;
                                       default :   INTERFACE_TYPE_msg;
                                   endcase // DATA_WIDTH
                             default :  INTERFACE_TYPE_msg;
                        endcase // DATA_RATE
               end
               "NETWORKING" : begin
                        case(DATA_RATE)
                             "SDR" :
                                   case(DATA_WIDTH)
                                       2, 3, 4, 5, 6, 7, 8 : ;
                                       default :  INTERFACE_TYPE_msg;
                                   endcase // DATA_WIDTH
                             "DDR" :
                                   case(DATA_WIDTH)
                                       4, 6, 8, 10, 14 : ;
                                       default :   INTERFACE_TYPE_msg;
                                   endcase // DATA_WIDTH
                             default :  ;
                        endcase // DATA_RATE
               end  
               "MEMORY_DDR3" :;
               "MEMORY_QDR" :;
               "OVERSAMPLE" : begin
                        case(DATA_RATE)
                             "SDR" : OVERSAMPLE_DDR_SDR_msg;
                             "DDR" :
                                   case(DATA_WIDTH)
                                       4 : ;
                                       default :   OVERSAMPLE_DDR_SDR_msg;
                                   endcase // DATA_WIDTH
                             default :  ;
                        endcase // DATA_RATE
               end

               default : begin
                          $display("Attribute Syntax Error : The attribute INTERFACE_TYPE on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are MEMORY, NETWORKING, MEMORY_QDR, MEMORY_DDR3 or OVERSAMPLE", INTERFACE_TYPE);
                          $finish;
                         end
        endcase // INTERFACE_TYPE

//-------------------------------------------------
//----- SERDES_MODE check
//-------------------------------------------------
        case (SERDES_MODE)
                "MASTER", "SLAVE" :;
                default  : begin
                          $display("Attribute Syntax Error : The attribute SERDES_MODE on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are MASTER or SLAVE", SERDES_MODE);
                          $finish;
                          end
         endcase // case(SERDES_MODE)

    end  // initial begin

//----------------------------------------------------------



// CR 574021
//-------------------------------------------------
//   Input to ISERDES
//-------------------------------------------------

    always @(delay_D or delay_DDLY) begin

        case (IOBDELAY)

            "NONE" : begin
                         o_out_pre_fb   <= delay_D;
                         o_delay_pre_fb <= delay_D;

                     end
            "IBUF" : begin
                         o_out_pre_fb   <= delay_DDLY;
                         o_delay_pre_fb <= delay_D;
                     end
            "IFD"  : begin
                         o_out_pre_fb   <= delay_D;
                         o_delay_pre_fb <= delay_DDLY;
                     end
            "BOTH" : begin
                         o_out_pre_fb   <= delay_DDLY;
                         o_delay_pre_fb <= delay_DDLY;
                     end
            default : begin
                          $display("Attribute Syntax Error : The attribute IOBDELAY on ISERDESE2 instance %m is set to %s.  Legal values for this attribute are NONE, IBUF, IFD or BOTH", IOBDELAY);
                          $finish;
                      end

        endcase // case(IOBDELAY)

    end // always @ (delay_D or delay_DDLY)

    generate
      case (OFB_USED)
         "TRUE"  : always @(delay_OFB)
                      begin
                         o_out   <= delay_OFB;
                         data_in <= delay_OFB;
                       end
         "FALSE" : begin
                      always @(o_out_pre_fb)    o_out   <= o_out_pre_fb;
                      always @(o_delay_pre_fb)  data_in <= o_delay_pre_fb;
                   end
      endcase
    endgenerate
//----------------------------------------------------------------------------------

  B_ISERDESE2 #(
    .DATA_RATE (DATA_RATE),
    .DATA_WIDTH (DATA_WIDTH),
    .DYN_CLKDIV_INV_EN (DYN_CLKDIV_INV_EN),
    .DYN_CLK_INV_EN (DYN_CLK_INV_EN),
    .INIT_Q1 (INIT_Q1),
    .INIT_Q2 (INIT_Q2),
    .INIT_Q3 (INIT_Q3),
    .INIT_Q4 (INIT_Q4),
    .INTERFACE_TYPE (INTERFACE_TYPE),
    .IOBDELAY (IOBDELAY),
    .NUM_CE (NUM_CE),
    .OFB_USED (OFB_USED),
    .SERDES_MODE (SERDES_MODE),
    .SRVAL_Q1 (SRVAL_Q1),
    .SRVAL_Q2 (SRVAL_Q2),
    .SRVAL_Q3 (SRVAL_Q3),
    .SRVAL_Q4 (SRVAL_Q4))

    B_ISERDESE2_INST (
    .O (delay_O),
    .Q1 (delay_Q1),
    .Q2 (delay_Q2),
    .Q3 (delay_Q3),
    .Q4 (delay_Q4),
    .Q5 (delay_Q5),
    .Q6 (delay_Q6),
    .Q7 (delay_Q7),
    .Q8 (delay_Q8),
    .SHIFTOUT1 (delay_SHIFTOUT1),
    .SHIFTOUT2 (delay_SHIFTOUT2),
    .BITSLIP (delay_BITSLIP),
    .CE1 (delay_CE1),
    .CE2 (delay_CE2),
    .CLK (delay_CLK),
    .CLKB (delay_CLKB),
    .CLKDIV (delay_CLKDIV),
    .CLKDIVP (delay_CLKDIVP),
    .D (data_in),
    .DDLY (delay_DDLY),
    .DYNCLKDIVSEL (delay_DYNCLKDIVSEL),
    .DYNCLKSEL (delay_DYNCLKSEL),
    .OCLK (delay_OCLK),
    .OCLKB (delay_OCLKB),
    .OFB (delay_OFB),
    .RST (delay_RST),
    .SHIFTIN1 (delay_SHIFTIN1),
    .SHIFTIN2 (delay_SHIFTIN2),
    .GSR (GSR)
  );

  specify
    ( CLK => Q1) = (100, 100);
    ( CLK => Q2) = (100, 100);
    ( CLK => Q3) = (100, 100);
    ( CLK => Q4) = (100, 100);
    ( CLK => Q5) = (100, 100);
    ( CLK => Q6) = (100, 100);
    ( CLK => Q7) = (100, 100);
    ( CLK => Q8) = (100, 100);
    ( CLKDIV => Q1) = (100, 100);
    ( CLKDIV => Q2) = (100, 100);
    ( CLKDIV => Q3) = (100, 100);
    ( CLKDIV => Q4) = (100, 100);
    ( CLKDIV => Q5) = (100, 100);
    ( CLKDIV => Q6) = (100, 100);
    ( CLKDIV => Q7) = (100, 100);
    ( CLKDIV => Q8) = (100, 100);
    ( CLKDIVP => Q1) = (100, 100);
    ( CLKDIVP => Q2) = (100, 100);
    ( CLKDIVP => Q3) = (100, 100);
    ( CLKDIVP => Q4) = (100, 100);
    ( CLKDIVP => Q5) = (100, 100);
    ( CLKDIVP => Q6) = (100, 100);
    ( CLKDIVP => Q7) = (100, 100);
    ( CLKDIVP => Q8) = (100, 100);
    ( D => O) = (0, 0);
    ( OFB => O) = (0, 0);

    specparam PATHPULSE$ = 0;
  endspecify
endmodule
