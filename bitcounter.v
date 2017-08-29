`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:36:06 11/08/2011
// Design Name:
// Module Name:    bitcounter
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
module bitcounter(
    input start,
    input en,
	 input clk,
	 input rst,
    output [3:0] out
    );
wire engedelyezes;
wire nemnulla;
reg[3:0] Q;

assign nemnulla =(Q>4'b0);
assign engedelyezes = (en&(start|nemnulla));


always@(posedge clk)
begin
	if(rst|(en&Q==10)) Q<=4'b0;
	else if(engedelyezes) Q<=Q+1;
end

assign out = Q;

endmodule
