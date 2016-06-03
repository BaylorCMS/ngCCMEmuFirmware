`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:13 02/20/2015
// Design Name:   top_level_source
// Module Name:   C:/Users/pastika/Xilinx/test/test/tester.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_level_source
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tester;

	// Inputs
	reg qie_reset_in;
	reg pgood;
	reg reset_switch;
	reg clk_select;
	reg mode_select;
	reg wte_in;
	reg aux_in;
	reg int_clk_in;
	reg ext_clk_in;
	reg clk_in_j1;
	reg qie_reset_source;

	// Outputs
	wire clk_out_p2;
	wire qie_reset_out;
	wire penable;
	wire reset_out;
	wire wte_out;
	wire aux_out;
	wire clk_out_u1;

	// Instantiate the Unit Under Test (UUT)
	control_emulator uut (
		.qie_reset_in(qie_reset_in), 
		.pgood(pgood), 
		.reset_switch(reset_switch), 
		.clk_select(clk_select), 
		.mode_select(mode_select), 
		.wte_in(wte_in), 
		.aux_in(aux_in), 
		.int_clk_in(int_clk_in), 
		.ext_clk_in(ext_clk_in), 
		.clk_in_j1(clk_in_j1), 
		.clk_out_p2(clk_out_p2), 
		.qie_reset_out(qie_reset_out), 
		.penable(penable), 
		.reset_out(reset_out), 
		.wte_out(wte_out), 
		.aux_out(aux_out),
		.qie_reset_source(qie_reset_source)
	);
	
	always
	begin
		#1;
		int_clk_in = !int_clk_in;
	end
	
	always
	begin
		#2;
		ext_clk_in = !ext_clk_in;
	end
	
	always
	begin
		#1;
		clk_in_j1 = !clk_in_j1;
		#2;
		clk_in_j1 = !clk_in_j1;
	end

	initial begin
		// Initialize Inputs
		qie_reset_source = 0;
		qie_reset_in = 0;
		pgood = 0;
		reset_switch = 0;
		clk_select = 0;
		mode_select = 0;
		wte_in = 0;
		aux_in = 1;
		int_clk_in = 0;
		ext_clk_in = 0;
		clk_in_j1 = 0;

		// Wait 100 ns for global reset to finish
		#10;
      #1 reset_switch = 1;
		#4 reset_switch = 2;
		// Add stimulus here
		
		pgood = 1;		
		#3	wte_in = 1;
		#3	wte_in = 0;
		#3 qie_reset_in = 1;
		#3 qie_reset_in = 0;
		#3 aux_in = 0;
		#3 aux_in = 1;
		
		#48 pgood = 0;
		
		#5 mode_select = 1;
		#3	wte_in = 1;
		#3	wte_in = 0;
		#3 qie_reset_in = 1;
		#3 qie_reset_in = 0;
		#3 aux_in = 0;
		#3 aux_in = 1;
		
		#48 pgood = 1;
		
		#5 mode_select = 0;
		clk_select = 1;
		#3	wte_in = 1;
		#3	wte_in = 0;
		#3 qie_reset_in = 1;
		#3 qie_reset_in = 0;
		#3 aux_in = 0;
		#3 aux_in = 1;
		
		#48 pgood = 0;
		
		#5 mode_select = 1;
		clk_select = 1;
		#3	wte_in = 1;
		#3	wte_in = 0;
		#3 qie_reset_in = 1;
		#3 qie_reset_in = 0;
		#3 aux_in = 0;
		#3 aux_in = 1;
		
		#48 $finish;
	end
      
endmodule
