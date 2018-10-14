// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  test_decoder
// 	DATE:	 14th Oct 2018
//
// END META DATA

`timescale 1ns/1ns

module test;

	// Declaring the wires and registers to store values of input and output to be passed in the decoder instance
	wire [15:0]op;
	reg [3:0]ip;
	reg en;

	// Calling the decoder instance passing the above inputs and outputs
	decoder dec(ip,op,en);

	// vcd file for gtkwave
	initial 
		begin
			$dumpfile("decoder.vcd");
			$dumpvars(0,test);
		end

	// Generating the input values to be fed to the decoder instance
	initial 
		begin
			en=1'b1;
			for(ip=0;ip<=15;ip=ip+1)
			#20;		// Delay of 20 units(1ns) in every increment of input value
		end

	// Printing the output to the screen
	initial 
		begin
			$monitor("Input=%b%b%b%b || Output=%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b", ip[3],ip[2],ip[1],ip[0], op[15],op[14],op[13],op[12],op[11],op[10],op[9],op[8],op[7],op[6],op[5],op[4],op[3],op[2],op[1],op[0]);
			#300 $finish;		// Based on the delay set above, total time to exit the program is 300 units (ns)
		end

endmodule
