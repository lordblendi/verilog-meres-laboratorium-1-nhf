`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:28:03 11/08/2011
// Design Name:
// Module Name:    top_level
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
module top_level(
	input clk,
	input rst,
	input btn1,
	input btn2,
	input[7:0] sw,
	output kimenet,
	output[10:0] bitgen_dbg,
	output[3:0] dbgki,
	output startki,
	output btn1enki,
	output btn2enki
    );
//.bennevan(belerakom)

	wire en;
	baud_gen baud_generator(.clk(clk), .rst(rst), .cy(en)); //létrehozzuk az engedélyezõ jelet

	wire[10:0] swk_allasa;
	//sw-k állásának "leolvasása"
	bitgenerator bitgen(.sw(sw), .out(swk_allasa));

	wire start;
	wire btn1_en;
	wire btn2_en;

	btn1_pergesmentesito btn1_p(.btn(btn1), .clk(clk), .en(en), .btn1_en(btn1_en));
	btn2_pergesmentesito btn2_p(.btn(btn2), .clk(clk), .en(en), .btn2_en(btn2_en));

	assign start=(btn1_en||btn2_en); //létrehozzuk a start jelet
	assign startki=start;
	assign btn1enki=btn1_en;
	assign btn2enki=btn2_en;

	wire[3:0] mpx_select;
	bitcounter bitcntr(.start(start), .en(en), .clk(clk), .rst(rst), .out(mpx_select));

	//multiplexer
	assign kimenet=swk_allasa[mpx_select];
	assign bitgen_dbg=swk_allasa;
	assign dbgki=mpx_select;


endmodule
