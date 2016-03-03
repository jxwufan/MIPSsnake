`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:19 12/28/2014 
// Design Name: 
// Module Name:    keyboard 
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
module keyboard(
	input wire clk25,
	input wire clr,
	input wire PS2C,
	input wire PS2D,
	output reg [7:0] ascii
);


reg PS2Cf, PS2Df;
reg [7:0] ps2c_filter, ps2d_filter;
reg [10:0] shift1, shift2;
assign xkey = {shift2[8:1], shift1[8:1]};

initial 
begin
	shift1 <= 0;
	shift2 <= 0;
	ascii <= 0;
end

always @(posedge clk25 or posedge clr)
begin
	if (clr == 1)
	begin
		ps2c_filter <= 0;
		ps2d_filter <= 0;
		PS2Cf <= 1;
		PS2Df <= 1;
	end
	else
	begin
		ps2c_filter <= {PS2C, ps2c_filter[7:1]};
		ps2d_filter <= {PS2D, ps2d_filter[7:1]};
		if (ps2c_filter == 8'b0000000)
			PS2Cf <= 0;
		else
			if (ps2c_filter == 8'b11111111)
				PS2Cf <= 1;
		if (ps2d_filter == 8'b0000000)
			PS2Df <= 0;
		else
			if (ps2d_filter == 8'b11111111)
				PS2Df <= 1;
	end
end

always @(negedge PS2Cf or posedge clr)
begin
	if (clr == 1)
	begin
		shift1 <= 0;
		shift2 <= 1;
	end
	else
	begin
		shift1 <= {PS2Df, shift1[10:1]};
		shift2 <= {shift1[0], shift2[10:1]};
	end
end

always @(posedge clk25 or posedge clr)
begin
	if (clr == 1) begin
		ascii <= 0;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h1C) begin
		ascii <= 8'h61;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h32) begin
		ascii <= 8'h62;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h21) begin
		ascii <= 8'h63;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h23) begin
		ascii <= 8'h64;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h24) begin
		ascii <= 8'h65;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h2B) begin
		ascii <= 8'h66;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h34) begin
		ascii <= 8'h67;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h33) begin
		ascii <= 8'h68;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h43) begin
		ascii <= 8'h69;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h3B) begin
		ascii <= 8'h6A;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h42) begin
		ascii <= 8'h6B;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h4B) begin
		ascii <= 8'h6C;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h3A) begin
		ascii <= 8'h6D;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h31) begin
		ascii <= 8'h6E;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h44) begin
		ascii <= 8'h6F;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h4D) begin
		ascii <= 8'h70;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h15) begin
		ascii <= 8'h71;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h2D) begin
		ascii <= 8'h72;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h1B) begin
		ascii <= 8'h73;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h2C) begin
		ascii <= 8'h74;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h3C) begin
		ascii <= 8'h75;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h2A) begin
		ascii <= 8'h76;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h1D) begin
		ascii <= 8'h77;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h22) begin
		ascii <= 8'h78;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h35) begin
		ascii <= 8'h79;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h1A) begin
		ascii <= 8'h7A;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h29) begin
		ascii <= 8'h20;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h5A) begin
		ascii <= 10;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h66) begin
		ascii <= 8'h08;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h45) begin
		ascii <= 8'h30;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h16) begin
		ascii <= 8'h31;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h1E) begin
		ascii <= 8'h32;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h26) begin
		ascii <= 8'h33;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h25) begin
		ascii <= 8'h34;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h2E) begin
		ascii <= 8'h35;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h36) begin
		ascii <= 8'h36;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h3D) begin
		ascii <= 8'h37;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h3E) begin
		ascii <= 8'h38;
	end else if (shift2[8:1] == 8'hF0 && shift1[8:1] == 8'h46) begin
		ascii <= 8'h39;
	end else begin
		ascii <= 0;
	end
end

endmodule
