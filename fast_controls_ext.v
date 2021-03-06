`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:34 02/23/2015 
// Design Name: 
// Module Name:    fast_controls_ext 
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
module fast_controls_ext(
    input clk,
    input reset_in,
    input wte_in,
    input reset_switch_in,
    input qie_reset_in,
    output wire wte_out,
    output reg reset_out,
    output reg qie_reset_out = 1'b0
    );
	
	//takes clock/fast controls from RJ-45
	//assign qie_reset_out = qie_reset_in;
	assign wte_out = qie_reset_in;//wte_in;
	//assign reset_out = reset_in;
	// (re)syncronize the QIE_RESET
	reg [3:0] hold = 4'b0;
	always @(posedge clk)
	begin
		if(hold == 4'b0)
		begin
			if(qie_reset_in == 1'b0)
			begin
				qie_reset_out <= 1'b1;
				hold <= 4'b1;
			end
		end
		else
		begin
			hold <= hold + 1;
			qie_reset_out <= 1'b0;
		end
	end

	// set the reset syncronusly with clock based on aux in or manual switch
	always @(posedge clk)
	begin
		if(reset_switch_in == 1'b0 || reset_in == 1'b1)
		//if(reset_switch_in == 1'b0)
			reset_out <= 1'b1;
		else
			reset_out <= 1'b0;
	end
	
	

endmodule
