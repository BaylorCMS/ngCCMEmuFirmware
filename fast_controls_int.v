`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:45 02/23/2015 
// Design Name: 
// Module Name:    fast_controls_int 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fast_controls_int(
    input clk,
//    input aux_in,
    input reset_in,
    output wire wte_out,
    output reg reset_out,
    output wire qie_reset_out
    );

	wire cc, wte_trig; //cc generates qie reset every N clock cycles and wte_trig generates WTE signal M pulses after
   counter upc(1'b1, clk,  reset_out, cc, wte_trig);
	
	//standalone mode genreates qie reset and wte internally 
	assign qie_reset_out = cc;
	assign wte_out = wte_trig;

	// set the reset syncronusly with clock based on aux in or manual switch
	always @(posedge clk)
	begin
		if(reset_in == 1'b0)
			reset_out <= 1'b1;
		else
			reset_out <= 1'b0;
	end

endmodule
