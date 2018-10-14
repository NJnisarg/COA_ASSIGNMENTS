// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  test_hello_world
// 	DATE:	 14th Oct 2018
//
// END META DATA

`timescale 1ns/1ns

module test;

reg clock;
hello_world hello(clock);

initial
	begin
		$dumpfile("hello_world.vcd");
		$dumpvars(0,test);
	end

initial
	begin
		clock = 1'b1;		// Initially set the clock to 1
		repeat(99)			// For next 99 times flip the value of clock every unit time(1ns)
			#1 clock = ~clock;
	end

endmodule