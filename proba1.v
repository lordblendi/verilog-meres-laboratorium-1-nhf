`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   18:42:33 11/08/2011
// Design Name:   top_level
// Module Name:   E:/Dropbox/jegyzetek/meres1/meres1NHF/proba1.v
// Project Name:  meres1NHF
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: top_level
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module proba1;

	// Inputs
	reg clk;
	reg rst;
	reg btn1;
	reg btn2;
	reg [7:0] sw;

	// Outputs
	wire kimenet;
	wire[10:0] bitgen_dbg;
	wire[3:0] dbgki;
	wire startki;
	wire btn1enki;
	wire btn2enki;

	// Instantiate the Unit Under Test (UUT)
	top_level uut (
		.clk(clk),
		.rst(rst),
		.btn1(btn1),
		.btn2(btn2),
		.sw(sw),
		.kimenet(kimenet),
		.bitgen_dbg(bitgen_dbg),
		.dbgki(dbgki),
		.startki(startki),
		.btn1enki(btn1enki),
		.btn2enki(btn2enki)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		btn1 = 0;
		btn2 = 0;
		sw = 8'b01010101;

		// Wait 100 ns for global reset to finish
		#10;
			rst=0;
		#2;
			btn2=1;
		#500;
			btn2=0;


		// Add stimulus here

	end
      always #1 clk=~clk;
endmodule
