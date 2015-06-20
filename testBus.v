`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:16:06 06/19/2015
// Design Name:   BUS
// Module Name:   E:/code/hardware/MIPSAPP/testBus.v
// Project Name:  MIPSAPP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BUS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testBus;

	// Inputs
	reg mem_w;
	reg [31:0] cpu2bus;
	reg [31:0] cpu_address;
	reg [7:0] vram2bus;
	reg [7:0] ram2bus;

	// Outputs
	wire ram_w;
	wire vram_w;
	wire [31:0] bus2cpu;
	wire [31:0] bus2ram;
	wire [7:0] bus2vram;
	wire [11:0] ram_address;
	wire [15:0] vram_address;

	// Instantiate the Unit Under Test (UUT)
	BUS uut (
		.mem_w(mem_w), 
		.cpu2bus(cpu2bus), 
		.cpu_address(cpu_address), 
		.vram2bus(vram2bus), 
		.ram2bus(ram2bus), 
		.ram_w(ram_w), 
		.vram_w(vram_w), 
		.bus2cpu(bus2cpu), 
		.bus2ram(bus2ram), 
		.bus2vram(bus2vram), 
		.ram_address(ram_address), 
		.vram_address(vram_address)
	);

	initial begin
		// Initialize Inputs
		mem_w = 1;
		cpu2bus = 'hfff;
		cpu_address = 'hf0000000;
		vram2bus = 0;
		ram2bus = 0;

		// Wait 100 ns for global reset to finish
		#100;
		cpu_address = 'hf0000012;
		#50;
		cpu_address = 'hf12;
       #50;
		// Add stimulus here

	end
      
endmodule

