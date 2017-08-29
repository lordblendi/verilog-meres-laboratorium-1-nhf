`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:57:19 11/08/2011
// Design Name:
// Module Name:    btn1_pergesmentesito
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
module btn1_pergesmentesito(
    input btn,
	 input clk,
	 input en,
    output btn1_en
    );

	 wire rst = ~btn;
	 wire carry;
	 wire engedelyezes;
	 reg[15:0] Q;

	 //assign carry=(Q==50000);
	 assign carry=(Q==4);
	 assign engedelyezes=((btn^carry)&en);

	 //belso szamlalo
	 always@(posedge clk)
	 begin
		if(rst) Q<=16'b0;
		else if(engedelyezes) Q<=Q+1;
	 end

	 reg dff;

	 //DFF
	 always@(posedge clk)
	 begin
		if(en)	dff<=carry;
	 end

	 assign btn1_en=(dff&~carry);



endmodule
