`timescale 1ns / 1ps
//-----------------------------------------------------
// Design Name : up_counter
// File Name   : up_counter.v
// Function    : Up counter
// Coder?     : Deepak
//-----------------------------------------------------

module counter    (
	 enable  ,  // enable for counter
	 clk     ,  // clock Input
	 reset   ,  // reset Input
	 cc      ,  // counter carry bit
	 wte_trig  // wte trigger
);
// Constants
	parameter NBUCKET = 12'd3563; // one less than the number of buckets/10 3564
	parameter WTEPOS  = 12'd0127; // counter position to trigger WTE

//------------Input Ports--------------
	input enable, clk, reset;
//------------Internal Variables--------
	reg [11:0] out;
	output reg cc, wte_trig;
//-------------Code Starts Here-------
	always @(posedge clk)
		if (reset || cc)
		begin
			out <= 12'b1;
			cc <= 1'b0;
		end
		else if (enable)
		begin
			out <= out + 1;
			if(out == NBUCKET)
				cc <= 1'b1;
			if(out == WTEPOS)
				wte_trig <= 1'b1;
			else
				wte_trig <= 1'b0;
		end

endmodule 
