// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  full_adder
// 	DATE:	 14th Oct 2018
//
// END META DATA

module full_adder(ip1,ip2,c_in,sum,c_out);

	input ip1,ip2,c_in;
	output sum,c_out;
	wire r1,r2,r3;

	// r2 = carry of h1, r1 = sum of h1
	// r3 = carry of h2
	half_adder h1(ip1,ip2,r1,r2);
	half_adder h2(r1,c_in,sum,r3);

	or(c_out,r2,r3);

endmodule
