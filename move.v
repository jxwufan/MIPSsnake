`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:23 09/05/2015 
// Design Name: 
// Module Name:    move 
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
module move(input clk,
				input clr,
				output reg move
    );

initial begin
	move = 0;
end	 

always @(posedge clk or posedge clr)
begin
	if (clr == 1) begin
		move = 0;
	end else if (clk == 1) begin
		move = 1;
	end 
end

endmodule
