`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:44:30 11/08/2011
// Design Name:
// Module Name:    bitgenerator
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
module bitgenerator(
    input [7:0] sw,
    output [10:0] out
    );

	 assign out[0]=1; // STOP bit - elsõ
	 assign out[1]=0; //START bit
	 assign out[2]=sw[0]; //elsõ kapcsoló állása
	 assign out[3]=sw[1]; //második kapcsoló állása
	 assign out[4]=sw[2]; //harmadik kapcsoló állása
	 assign out[5]=sw[3]; //negyedik kapcsoló állása
	 assign out[6]=sw[4]; //ötödik kapcsoló állása
	 assign out[7]=sw[5]; //hatodik kapcsoló állása
	 assign out[8]=sw[6]; //hetedik kapcsoló állása
	 assign out[9]=sw[0]^sw[1]^sw[2]^sw[3]^sw[4]^sw[5]^sw[6]^sw[7]; // nyolcadik kapcsolóval (SW7) tudjuk választani a paritást
    //a paritást bithez pedig összeszámoljuk az 1-eseket, és ha páratlan számú 1es van, akkor lesz az 1.
	 //Egyszerûsítésként az összes kapcsoló állását összeXORoltam.
	 assign out[10]=1; // STOP bit - második

endmodule
