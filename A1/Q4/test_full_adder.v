// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  test_full_adder
// 	DATE:	 14th Oct 2018
//
// END META DATA

`timescale 1ns/1ns

module test;

	// Declaring the input and output
	wire sum,c_out;
	reg ip1,ip2,c_in;

	// Creating the instance of the full_adder module and passing the input and output
	full_adder fa(ip1,ip2,c_in,sum,c_out);


	initial 
		begin 
			$dumpfile("full_adder.vcd");
			$dumpvars(0,test);
		end

	// Initial block to update the values of the input every 20 units(20 ns)
	initial
		begin
			ip1=1'b0;
			ip2=1'b0;
			c_in=1'b0;
		#20;
			ip1=1'b0;
			ip2=1'b0;
			c_in=1'b1;
		#20;
			ip1=1'b0;
			ip2=1'b1;
			c_in=1'b0;
		#20;
			ip1=1'b0;
			ip2=1'b1;
			c_in=1'b1;
		#20;
			ip1=1'b1;
			ip2=1'b0;
			c_in=1'b0;
		#20;
			ip1=1'b1;
			ip2=1'b0;
			c_in=1'b1;
		#20;
			ip1=1'b1;
			ip2=1'b1;
			c_in=1'b0;
		#20;
			ip1=1'b1;
			ip2=1'b1;
			c_in=1'b1;
		#20;
		end

	// Outputting the values. Ends after 160 units (160ns)	
	initial
		begin
			$monitor("Time=%0d ip1=%b ip2=%b c_in=%b sum=%b carry=%b",$time,ip1,ip2,c_in,sum,c_out);
			#160 $finish;
		end

endmodule
