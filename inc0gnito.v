module top (clk, key, data);
   input clk;
   input [31:0] key;
   output [31:0] data;

   reg [31:0]      buffer;
   
   always@(posedge clk)
     begin
        if (key == 'h9DA79FF0)
          begin
             buffer <= 'h00464C45;
          end
        else
          begin
             buffer <= 'h00000000;
          end
     end // always@ (posedge clk)

   assign data = buffer;
endmodule // top
