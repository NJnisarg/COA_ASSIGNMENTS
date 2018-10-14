// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  test_n_bit_adder_sub
// 	DATE:	 14th Oct 2018
//
// END META DATA

`timescale 1ns/1ns

module test;
	
	// Setting the input and output
	reg [31:0] ip1;
	reg [31:0] ip2;
	reg c_in;

	wire [31:0] answer;
	wire c_out,overflow;

	// Calling the instance of n bit adder subtractor. Here parameter is not passed, hence default 32 bit is assumed
	n_bit_adder_sub nbas(ip1,ip2,c_in,answer,c_out,overflow);


	initial
		begin
			$dumpfile("n_bit_adder_sub.vcd");
			$dumpvars(0,test);
		end

	// giving 2 random 32 bit values to calculation. Once for addition and the for subtraction
	initial 
		begin
			ip1 = 2014;
			ip2 = 1167;
			c_in=0;   // addition
			#100;
			ip1 = 2014;
			ip2 = 1167;
			c_in=1;   // subtraction
		end

	initial 
		begin
			$monitor("input1=%b input2=%b answer=%b carryout=%b overflow=%b",ip1,ip2,answer,c_out,overflow);
		end

	initial #300 $finish;    

endmodule