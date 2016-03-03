`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:29:18 09/06/2015
// Design Name:   move
// Module Name:   C:/Users/fan/Desktop/MIPShelloWorld/testmove.v
// Project Name:  MIPSAPP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: move
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testmove;

	// Inputs
	reg clk;
	reg clr;

	// Outputs
	wire move;

	// Instantiate the Unit Under Test (UUT)
	move uut (
		.clk(clk), 
		.clr(clr), 
		.move(move)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		clk = 1;
		#10;
		clk = 0;
		#10;
		clr = 1;
		#10;
		clr = 0;
		#10;
		clk = 1;
        
		// Add stimulus here

	end
      
endmodule

