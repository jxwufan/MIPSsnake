`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:11 09/06/2015 
// Design Name: 
// Module Name:    random_generator 
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
module random_generator(input mclk,
								input PS2D,
								output wire [31:0] ran_h,
								output wire [31:0] ran_v
    );
	 
	 reg [31:0] cnt;
	 
	 initial begin
		cnt = 0;
	end
	
	always @(posedge mclk) begin
		if (PS2D == 1) begin 
			cnt = cnt + 1;
		end
	end
	assign ran_h = cnt % 80;
	assign ran_v = cnt % 60;

endmodule
