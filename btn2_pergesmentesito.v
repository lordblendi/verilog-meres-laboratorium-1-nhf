`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    18:14:13 11/08/2011
// Design Name:
// Module Name:    btn2_pergesmentesito
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
module btn2_pergesmentesito(

   input btn,
	 input clk,
	 input en,
    output btn2_en
    );

	 wire rst = ~btn;
	 wire engedelyezes;
	 reg[15:0] Q;

//	 assign btn2_en=(Q==50000);
	assign btn2_en=(Q==4);
	 assign engedelyezes=((btn^btn2_en)&en);

	 //belso szamlalo
	 always@(posedge clk)
	 begin
		if(rst) Q<=16'b0;
		else if(engedelyezes) Q<=Q+1;
	 end

endmodule
