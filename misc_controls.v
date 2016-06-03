`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:07 06/10/2015 
// Design Name: 
// Module Name:    misc_controls 
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
module misc_controls(
	 input delay_clk,
	 input mode,
    input peltEnable1_in,
    input peltEnable2_in,
    output peltEnable1_out,
    output peltEnable2_out,
    input pgood_in,
	 output pgood_out,
    input penable_in,
	 output penable_out
    );
	 
	//set penable delay for QIE card turn on 
	reg penable_reg;
	//assign penable = penable_reg;
	reg [18:0] delay_reg;
	always @(posedge delay_clk)
	begin
		if(delay_reg <= 400000)
		begin
			delay_reg <= delay_reg + 1;
			penable_reg <= 0;
		end
		else
		begin
			penable_reg <= 1;
		end
	end

	assign peltEnable1_out = peltEnable1_in;
	assign peltEnable2_out = peltEnable2_in;
	assign pgood_out = pgood_in;
	assign penable_out = mode ? penable_reg : penable_in;

endmodule
