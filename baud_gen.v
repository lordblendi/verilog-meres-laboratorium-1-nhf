`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:28:45 11/08/2011
// Design Name:
// Module Name:    baud_gen
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
module baud_gen(
    input clk,
    input rst,
    output cy
    );

reg[15:0] Q;
//assign cy =(Q==16'd10416);
assign cy=(Q==16'd3); //szimlulációhoz, hogy lássuk mi történik

always@(posedge clk)
begin
	if(rst|cy) Q<=16'd0;
	else Q<=Q+1;
end



endmodule
