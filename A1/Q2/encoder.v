// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  encoder
// 	DATE:	 14th Oct 2018
//
// END META DATA

module encoder(ip,en,op);
	
	// Declaring the inputs and outputs
	input [15:0]ip;
	input en;
	output [3:0]op;

	// Declaring the wires for internal usage
	wire r1,r2,r3,r4;

	// Storing the intermediate values in wires based on the boolean function for encoder
	or (r1,ip[8],ip[9],ip[10],ip[11],ip[12],ip[13],ip[14],ip[15]),
	   (r2,ip[4],ip[5],ip[6],ip[7],ip[12],ip[13],ip[14],ip[15]),
	   (r3,ip[2],ip[3],ip[6],ip[7],ip[10],ip[11],ip[14],ip[15]),
	   (r4,ip[1],ip[3],ip[5],ip[7],ip[9],ip[11],ip[13],ip[15]);

	// Putting the final values in output using the boolean function
	and (op[3],r1,en),
	    (op[2],r2,en),
	    (op[1],r3,en),
	    (op[0],r4,en);

endmodule
