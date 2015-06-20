`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:22 12/04/2014 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(
input wire mclk,
input wire clr,
output wire clk25,
output wire clk10ms,
output wire clk190,
output wire clk1s
    );
	 
// mclkʱƵΪ100MhzͨʵַƵ
	 
reg [2:0] p;
reg [19:0] regi;
reg [20:0] cnt;
reg _10ms;
reg _1s;
reg [20:0] cnt2;
reg [32:0] cnt3;

initial 
begin
	p <= 0;
	regi <= 0;
	_10ms <= 0;
	cnt <= 0;
	cnt3 <= 0;
	_1s <= 0;
end

always @(posedge mclk)
begin
	if (clr == 1)
	begin
		p <= 0;
		regi <= 0;
		cnt <= 0;
		cnt2 <= 0;
		cnt3 <= 0;
	end
	else
	begin
		cnt2 <= cnt2 + 1;
		p <= p + 1;
		if (regi == 999999) // mclkÿ1Mεʱȥ10Ms, ͨ¼MclkĴʵ10Msź
			begin
				regi <= 0;
				_10ms <= 1;
			end
			else
			begin
				regi <= regi + 1;
				_10ms <= 0; 
			end
		if (cnt3 == 9999999)
		 begin
			cnt3 <= 0;
			_1s <= 1;
		 end
		else 
		begin
			cnt3 <= cnt3 + 1;
			_1s <= 0;
		end
	end
end

assign clk25 = p[1];
assign clk10ms = _10ms;
assign clk190 = cnt2[18];
assign clk1s = _1s;

// 25  190ԭƣ׸


endmodule
