// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  test_half_adder
// 	DATE:	 14th Oct 2018
//
// END META DATA

`timescale 1ns/1ns

module test;

	// Init the input and output variables
	wire sum, carry;
	reg ip1,ip2;

	// Creating an instance of half_adder module and passing the variables
	half_adder ha(ip1,ip2,sum,carry);

	initial 
		begin
			$dumpfile("half_adder.vcd");
			$dumpvars(0,test);
		end

	// Giving the inputs, updating the values every 20 units(20ns)
	initial 
		begin
			ip1=1'b0;
			ip2=1'b0;
		#20;
			ip1=1'b0;
			ip2=1'b1;
		#20;
			ip1=1'b1;
			ip2=1'b0;
		#20;
			ip1=1'b1;
			ip2=1'b1;
		end

	// Printing the values. Ends after 80 units(80ns)
	initial 
		begin
			$monitor("Time=%0d ip1=%b ip2=%b sum=%b carry=%b",$time,ip1,ip2,sum,carry);
			#80	$finish;
		end

endmodule
