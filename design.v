module top_mod(input clk,
	       input 	     rst,

	       input [31:0]  offset,
	       
	       output [31:0] out);

   reg [31:0] 	      data;
   
   always @(posedge clk or negedge rst) begin
      if (!rst) begin
	 data <= 0;
	 
      end else begin
	 data <= data + offset;
      end
   end

   assign out = data;
   
endmodule
