`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:02 02/23/2015 
// Design Name: 
// Module Name:    control_emulator 
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
module control_emulator(
    input qie_reset_in,
    input pgood,
    input reset_switch,
	 input reset_in,
    input clk_select,
    input mode_select,
    input wte_in,
    input aux_in,
    input int_clk_in,
    input ext_clk_in,
    input clk_in_j1,
	 input qie_reset_source,
	 input aux2,
	 input aux3,
	 input alt1,
	 input alt2,
	 input GPIO_Extra0,
	 input GPIO_Extra1,
	 output peltEnab1,
	 output peltEnab2,
    output clk_out_p2,
    output qie_reset_out,
    output penable,
    output reset_out,
    output wte_out,
    output aux_out
    );
	 
	 // Assign clock mirrors
	assign clk_out_p2 = (clk_select) ? ( (mode_select) ? (int_clk_in) : (clk_in_j1) ) : ext_clk_in;
	
	// Assign miscelaneous outputs (power and peltier enables)
	wire delay_clk;
	assign delay_clk = (clk_select) ? ((mode_select) ? int_clk_in : clk_in_j1) : ext_clk_in;
	misc_controls miscControls(delay_clk, mode_select, aux2, aux3, peltEnab1, peltEnab2, pgood, aux_out, aux_in, penable);
	
	// temporary wires to store various fast control module outputs 
	wire wte_out_extClk_extCtrl, reset_out_extClk_extCtrl, qie_reset_out_extClk_extCtrl;
	wire wte_out_intClk_extCtrl, reset_out_intClk_extCtrl, qie_reset_out_intClk_extCtrl;
	wire wte_out_extClk_intCtrl, reset_out_extClk_intCtrl, qie_reset_out_extClk_intCtrl;
	wire wte_out_intClk_intCtrl, reset_out_intClk_intCtrl, qie_reset_out_intClk_intCtrl;
	
	// select approperiate output
	// mode select: 0 - fast controls (QIE reset and WTE) come from RJ-45, 1 - fast controls generated internally from clk signal
	// clock select: 0 - external clock (BNC), 1 - "internal clock" from RJ-45 in mode 0, U1 in mode 1
	assign wte_out           = (clk_select) ? ((mode_select) ?       wte_out_intClk_intCtrl :       !wte_out_intClk_extCtrl) : ((mode_select) ?       wte_out_extClk_intCtrl :       !wte_out_extClk_extCtrl);
	assign qie_reset_out_tmp = (clk_select) ? ((mode_select) ? qie_reset_out_intClk_intCtrl : !qie_reset_out_intClk_extCtrl) : ((mode_select) ? qie_reset_out_extClk_intCtrl : !qie_reset_out_extClk_extCtrl);
	assign reset_out         = (clk_select) ? ((mode_select) ?     reset_out_intClk_intCtrl :      reset_out_intClk_extCtrl) : ((mode_select) ?     reset_out_extClk_intCtrl :      reset_out_extClk_extCtrl);
	
	// Switch to take QIE_RESET from BNC (set Extra to 1 to activate this mode)
	assign qie_reset_out = (!qie_reset_source) ? qie_reset_out_tmp : ext_clk_in;
		
	// fast controls from external source (RJ-45 connector) clock from BNC
	fast_controls_ext fcl_extClk_extCtrl(ext_clk_in, GPIO_Extra0, wte_in, reset_switch, qie_reset_in, wte_out_extClk_extCtrl, reset_out_extClk_extCtrl, qie_reset_out_extClk_extCtrl);
	
	// clock and fast controls from external source (RJ-45 connector)
	fast_controls_ext fcl_intClk_extCtrl(clk_in_j1,  GPIO_Extra0, wte_in, reset_switch, qie_reset_in, wte_out_intClk_extCtrl, reset_out_intClk_extCtrl, qie_reset_out_intClk_extCtrl);
	
	// fast controls generated from internal logic, clock from internal clock 
	fast_controls_int fcl_intClk_intCtrl(int_clk_in,                  reset_switch,               wte_out_intClk_intCtrl, reset_out_intClk_intCtrl, qie_reset_out_intClk_intCtrl);
	
	// fast controls generated from internal logic, clock from external source  
	fast_controls_int fcl_extClk_intCtrl(ext_clk_in,                  reset_switch,               wte_out_extClk_intCtrl, reset_out_extClk_intCtrl, qie_reset_out_extClk_intCtrl);
	
endmodule
