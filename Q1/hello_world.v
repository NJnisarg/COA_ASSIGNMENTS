// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  hello_world
// 	DATE:	 14th Oct 2018
//
// END META DATA

module hello_world(clock);

	input clock;

	always @ (clock) // Trigger for displaying the message
		begin
			$monitor("Hello world %0t\n",$realtime);
		end

endmodule