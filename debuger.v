`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:11 06/20/2015 
// Design Name: 
// Module Name:    debuger 
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
module debuger(input wire high,
					input wire [2:0] sel,
					input wire [31:0] input0,
					input wire [31:0] input1,
					input wire [31:0] input2,
					input wire [31:0] input3,
					input wire [31:0] input4,
					input wire [31:0] input5,
					input wire [31:0] input6,
					input wire [31:0] input7,
					input wire cclk,
					input wire clr,
					output wire[6:0] a_to_g,
					output wire[3:0] an,
					output wire dp				
    );
	 
	 reg [31:0] data;
	 wire [15:0] outputer;
	 
	 assign outputer = high ? data[31:16] : data[15:0];
	 
	 always @(*) begin
		case (sel)
			0: data = input0;
			1: data = input1;
			2: data = input2;
			3: data = input3;
			4: data = input4;
			5: data = input5;
			6: data = input6;
			7: data = input7;
		endcase
	 end
	 
	 x7segbc mod (
    .x(outputer), 
    .cclk(cclk), 
    .clr(clr), 
    .a_to_g(a_to_g), 
    .an(an), 
    .dp(dp)
    );



endmodule
