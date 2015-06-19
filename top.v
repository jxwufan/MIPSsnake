`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:15 06/16/2015 
// Design Name: 
// Module Name:    top 
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
module top(input mclk,
			  output reg [2:0] red,
			  output reg [2:0] green,
			  output reg [1:0] blue,
			  output hsync,
			  output vsync
    );
	 
	 wire [9:0] x, y;
	 wire vison;
	 wire [7:0] color;
	 wire [31:0] frommem, tomem;
	 wire mem_w;
	 wire [31:0] address;
	 wire ram_w;
	 wire vram_w;
	 wire [7:0] vram2bus, bus2vram;
	 wire [31:0] ram2bus, bus2ram;
	 wire [11:0] ram_address;
	 wire [15:0] vram_address;
	 
	 
	 clkdiv clkdiv (
    .mclk(mclk), 
    .clr(clr), 
    .clk25(clk25), 
    .clk10ms(clk10ms), 
    .clk190(clk190)
    );

	 
	 vga_640x480 vga_gen (
    .clk(clk25),  
    .hsync(hsync), 
    .vsync(vsync), 
    .x(x), 
    .y(y), 
    .vidon(vidon)
    );
	 
	 mccpu cpu (
    .clock(clk25), 
    .resetn(0), 
    .frommem(frommem), 
    .wmem(mem_w), 
    .madr(address), 
    .tomem(tomem)
    );
	 
	 BUS SoC_Bus (
    .mem_w(mem_w), 
    .cpu2bus(tomem), 
    .cpu_address(address), 
    .vram2bus(vram2bus), 
    .ram2bus(ram2bus), 
    .ram_w(ram_w), 
    .vram_w(vram_w), 
    .bus2cpu(frommem), 
    .bus2ram(bus2ram), 
    .bus2vram(bus2vram), 
    .ram_address(ram_address), 
    .vram_address(vram_address)
    );
	 
		vram vram_mod (
		  .clka(mclk), // input clka
		  .wea(vram_w), // input [0 : 0] wea
		  .addra(vram_address), // input [15 : 0] addra
		  .dina(bus2vram), // input [7 : 0] dina
		  .douta(douta), // output [7 : 0] douta
		  .clkb(mclk), // input clkb
		  .web(web), // input [0 : 0] web
		  .addrb(0), // input [15 : 0] addrb
		  .dinb(0), // input [7 : 0] dinb
		  .doutb(color) // output [7 : 0] doutb
		);
		
		ram ram_mod (
		  .clka(mclk), // input clka
		  .wea(ram_w), // input [0 : 0] wea
		  .addra(ram_address), // input [11 : 0] addra
		  .dina(bus2ram), // input [31 : 0] dina
		  .douta(ram2bus) // output [31 : 0] douta
		);
					
	always @(*) begin
		if (vidon) begin
			red <= {3{color[x[2:0]]}};
			green <= {3{color[x[2:0]]}};
			blue <= {2{color[x[2:0]]}};
		end else begin
			red <= 0;
			green <= 0;
			blue <= 0;
		end
	end

endmodule
