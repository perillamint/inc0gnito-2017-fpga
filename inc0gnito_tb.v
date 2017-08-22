`timescale 1ns/10ps

module testbench;
   wire [31:0] data;
   reg [31:0]  key;
   reg         clk;
   
   top top1(clk, key, data);

   initial begin;
      $dumpfile("inc0gnito_wave.vcd");
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
