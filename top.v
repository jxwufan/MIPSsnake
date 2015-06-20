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
			  input sw[7:0],
			  input btn[4:0],
			  output reg [2:0] red,                                                                                             
			  output reg [2:0] green,
			  output reg [1:0] blue,
			  output hsync,
			  output vsync,
				output reg LED2, 
				output wire [6:0] a_to_g, 
				output wire [3:0] an,
				output wire dp
    );
	 //clkdiv
	 wire mclk;
	 wire clk25;
	 wire clk10ms;
	 wire clk190;
	 wire clk1s;
	 
	 //vga_gen
	 wire hsync;
	 wire vsync;
	 wire [9:0] x, y;
	 wire vison;
	 
	 //cpu
	 wire [31:0] frommem, tomem, address;
	 wire mem_w;

	 //BUS
	 wire [7:0] vram2bus;
	 wire [31:0] ram2bus;
	 wire ram_w;
	 wire vram_w;
	 wire [31:0] bus2ram;
	 wire [7:0] bus2vram;
	 wire [11:0] ram_address;
	 wire [15:0] vram_address;
	 wire [7:0] color;
	 wire [2:0] state;
	 
	 initial begin
		LED2 <= 0;
	 end
	 
	 wire [31:0] pc;
debuger debug (
    .high(sw[0]), 
    .sel({sw[3],sw[2],sw[1]}), 
    .input0(tomem), 
    .input1(frommem), 
    .input2(pc), 
    .input3(ram_address), 
    .input4(ram2bus), 
    .input5(bus2cpu), 
    .input6(address), 
    .input7(bus2vram), 
    .cclk(clk190), 
    .clr(btn[0]), 
    .a_to_g(a_to_g), 
    .an(an), 
    .dp(dp)
    );

	 
	 clkdiv clkdiv (
    .mclk(mclk), 
    .clr(btn[0]), 
    .clk25(clk25), 
    .clk10ms(clk10ms), 
    .clk190(clk190),
	 .clk1s(clk1s)
    );
                                                             
	 
	 vga_640x480 vga_gen (
    .clk(clk25),  
    .hsync(hsync), 
    .vsync(vsync), 
    .x(x), 
    .y(y), 
    .vidon(vidon)
    );
	 
	 mccpu mycpu (
    .clock(clk1s), 
    .resetn(btn[0]), 
    .frommem(frommem), 
    .pc(pc), 
    .inst(inst), 
    .alu_out(alu_out), 
    .wmem(mem_w), 
    .madr(address), 
    .tomem(tomem), 
    .state(state), 
    .npc(npc), 
    .pcsource(pcsource), 
    .alua(alua), 
    .alub(alub), 
    .aluc(aluc), 
    .z(z), 
    .opa(opa), 
    .rega(rega), 
    .selpc(selpc), 
    .res(res), 
    .wn(wn), 
    .wreg(wreg)
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
	 
	 reg [7:0] test;
	 
		vram vram_mod (
		  .clka(mclk), // input clka
		  .wea(vram_w), // input [0 : 0] wea
		  .addra(vram_address), // input [15 : 0] addra
		  .dina(bus2vram), // input [7 : 0] dina
		  .douta(vram2bus), // output [7 : 0] douta
		  .clkb(mclk), // input clkb
		  .web(0), // input [0 : 0] web
		  .addrb(y * 80 + x[9:3]), // input [15 : 0] addrb
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
		
		/*ram ram_mod (
		  .clka(mclk), // input clka
		  .wea(mem_w), // input [0 : 0] wea
		  .addra(address[13:2]), // input [11 : 0] addra
		  .dina(tomem), // input [31 : 0] dina
		  .douta(frommem) // output [31 : 0] douta
		);*/
					
	always @(*) begin
		if (x >= 320 && x <= 327) begin
			if (y == 280) test <= 'h7c;
			else if (y == 281) test <= 'h86;
			else if (y == 282) test <= 'h8a;
			else if (y == 283) test <= 'h92;
			else if (y == 284) test <= 'ha2;
			else if (y == 285) test <= 'hc2;
			else if (y == 286) test <= 'h7c;
			else test <= 0;
		end
		else test <= 0;
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
	
	always @(*) begin
		LED2 <= vram_w;
	end

endmodule
