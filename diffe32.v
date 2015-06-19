`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:43 05/27/2015 
// Design Name: 
// Module Name:    diffe32 
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
module dffe32(d, clk, clrn, en, q);
	input d, clk, en, clrn;
	output q;
	wire [31:0] d;
	reg [31:0] q;
	initial
	begin
		q <= 0;
	end
	always @ (posedge clk or posedge clrn) begin
		if (clrn == 1) q <= 0;
		else if (en) q <= d;
	end
endmodule
