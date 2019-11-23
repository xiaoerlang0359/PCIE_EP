// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/fuji/PHASER_REF.v,v 1.7 2012/04/26 00:19:46 robh Exp $
///////////////////////////////////////////////////////
//  Copyright (c) 2010 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version : 10.1
//  \  \           Description : Xilinx Functional Simulation Library Component
//  /  /                         Fujisan PHASER REF
// /__/   /\       Filename    : PHASER_REF.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision: Comment:
//  23APR2010 Initial UNI/UNP/SIM Version : 10.1
//  02JUL2010 add functionality
//  29SEP2010 update functionality based on rtl
//  28OCT2010 CR580289 ref_clock_input_freq_MHz_min/max < vs <=
//  09NOV2010 CR581863 blocking statements, clock counts to lock.
//  11NOV2010 CR582599 warning in place of LOCK
//  01DEC2010 clean up display of real numbers
//  16APR2012 655365 else missing from delay_LOCKED always block
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module PHASER_REF (
  LOCKED,

  CLKIN,
  PWRDWN,
  RST
);

  localparam in_delay = 1;
  localparam INCLK_DELAY = 0;
  localparam out_delay = 10;
  localparam MODULE_NAME = "PHASER_REF";
  localparam real REF_CLK_JITTER_MAX = 100.000;

  output LOCKED;

  input CLKIN;
  input PWRDWN;
  input RST;

  tri0 GSR = glbl.GSR;

  wire delay_CLKIN;
  wire delay_PWRDWN;
  wire delay_RST;
  wire delay_GSR;

  reg delay_LOCKED = 1'b1;
  real     ref_clock_input_period = 11.0;
  real     ref_clock_input_freq_MHz = 1.68;
  real     time_last_rising_edge = 1.0;
  real     last_ref_clock_input_period = 13.0;
  real     last_ref_clock_input_freq_MHz = 1.69;
  integer  same_period_count = 0;
  integer  different_period_count = 0;
  integer  same_period_count_last = 0;
  integer  count_clks = 0;
  real     ref_clock_input_freq_MHz_min = 400.000;      // valid min freq in MHz
  real     ref_clock_input_freq_MHz_max = 1066.000;     // valid max freq in MHz


  assign #(out_delay) LOCKED = delay_LOCKED;

  assign #(INCLK_DELAY) delay_CLKIN = CLKIN;
  assign #(in_delay) delay_PWRDWN = PWRDWN;
  assign #(in_delay) delay_RST = RST;
  assign delay_GSR = GSR;


always @(posedge delay_CLKIN)
begin
  last_ref_clock_input_period <= ref_clock_input_period;
  last_ref_clock_input_freq_MHz <= ref_clock_input_freq_MHz;
  same_period_count_last <= same_period_count;
  ref_clock_input_period <= $time - time_last_rising_edge;
  ref_clock_input_freq_MHz <= 1e6/($time - time_last_rising_edge);
  time_last_rising_edge <= $time/1.0;
  if ( (delay_RST==0) && (delay_PWRDWN ==0) &&
       (ref_clock_input_period - last_ref_clock_input_period <= REF_CLK_JITTER_MAX) &&
       (last_ref_clock_input_period - ref_clock_input_period <= REF_CLK_JITTER_MAX) )
    begin
      if (same_period_count < 6) same_period_count <= same_period_count + 1;
      if ( same_period_count >= 3 && same_period_count != same_period_count_last && different_period_count != 0)
        begin
        different_period_count <= 0; //reset different_period_count
        end
    end
  else // detecting different clock-preiod
    begin
      different_period_count = different_period_count + 1;
      if ( different_period_count >= 1  && same_period_count != 0 )
        begin
        same_period_count <= 0 ;      //reset same_period_count
        end
    end
end

always @(posedge delay_CLKIN or posedge delay_RST or posedge delay_PWRDWN) begin
   if ( delay_RST||delay_PWRDWN)
     begin
       delay_LOCKED <= 1'b0;
       count_clks <= 0;
     end
   else if ((same_period_count >= 1) && (count_clks < 6))
     begin
       count_clks <= count_clks + 1;
     end
   else if (different_period_count >= 1)
     begin
       delay_LOCKED <= 1'b0;
       count_clks <= 0;
     end
   else if ( (count_clks >= 5) &&
        ((ref_clock_input_freq_MHz + last_ref_clock_input_freq_MHz)/2.000 >= ref_clock_input_freq_MHz_min ) && 
        ((ref_clock_input_freq_MHz + last_ref_clock_input_freq_MHz)/2.000 <= ref_clock_input_freq_MHz_max ) )
     begin
       delay_LOCKED <= 1'b1;
     end
end

always @(posedge delay_CLKIN)
   if ( (count_clks == 5) && 
        ( ((ref_clock_input_freq_MHz + last_ref_clock_input_freq_MHz)/2.000 < ref_clock_input_freq_MHz_min) || 
          ((ref_clock_input_freq_MHz + last_ref_clock_input_freq_MHz)/2.000 > ref_clock_input_freq_MHz_max) ) ) begin
      $display("Warning: Invalid average CLKIN frequency detected = %4.3f MHz", (ref_clock_input_freq_MHz + last_ref_clock_input_freq_MHz)/2.000);
      $display("    on %s instance %m at time %t ps.", MODULE_NAME, $time);
      $display("    The valid CLKIN frequency range is:");
      $display("        Minimum = %4.3f MHz", ref_clock_input_freq_MHz_min  );
      $display("        Maximum = %4.3f MHz", ref_clock_input_freq_MHz_max  );
   end

endmodule // PHASER_REF
