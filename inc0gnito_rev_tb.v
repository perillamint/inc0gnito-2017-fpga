`timescale 1ns/10ps

module testbench;
   wire [31:0] data;
   reg [31:0]  key;
   reg         clk;
  
   chip chip1 ( data[18] ,  data[17] ,  data[14] ,  data[11] ,  data[10] ,  data[6] ,  data[2] ,  data[0] ,  data[22] ,  data[16] ,  data[15] ,  data[13] ,  data[12] ,  data[9] ,  data[8] ,  data[7] ,  data[5] ,  data[4] ,  data[3] ,  data[
1] ,  key[31] ,  key[30] ,  key[29] ,  key[28] ,  key[27] ,  key[26] ,  key[25] ,  key[24] ,  key[23] ,  key[22] ,  key[21]
 ,  key[20] ,  key[19] ,  key[18] ,  key[17] ,  key[16] ,  key[15] ,  key[14] ,  key[13] ,  key[12] ,  key[11] ,  key[10] ,
  key[9] ,  key[8] ,  key[7] ,  key[6] ,  key[5] ,  key[4] ,  key[3] ,  key[2] ,  key[1] ,  key[0] ,  clk,  data[19] 
,  data[20] ,  data[21] ,  data[23] ,  data[24] ,  data[25] ,  data[26] ,  data[27] ,  data[28] ,  data[29] ,  data[30]
 ,  data[31] );

   initial begin;
      $dumpfile("inc0gnito_rev_wave.vcd");
      $dumpvars(0, testbench);

      key <= 'h00000000;
      clk <= 0;
      #250;
      clk <= 1;
      #250;
      clk <= 0;
      #250

      key <= 'h9DA79FF0;
      #250;
      clk <= 1;
      #250;
      clk <= 0;
      #250;

      key <= 'h9DA79FF1;
      #250;
      clk <= 1;
      #250;
      clk <= 0;
      #250;
   end // initial begin;
endmodule // testbench
