// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  test_encoder
// 	DATE:	 14th Oct 2018
//
// END META DATA

`timescale 1ns/1ns

module test;

	// Init input and output values
	wire [3:0]op;
	reg [15:0]ip;
	reg en;

	// Instance of the encoder module, passing the input and output
	encoder enc(ip,en,op);
	integer i;

	initial 
		begin
			$dumpfile("encoder.vcd");
			$dumpvars(0,test);
		end

	initial 
		begin
			// Putting enable = 1
			en=1'b1;
			// Generating the input values
			for(i=0;i<=15;i=i+1)
			 	begin
			 		ip=0;
				 	ip[i]=1;
			 		#20;
			 	end
		end

	initial 
		begin              
			//displaying Output values
			$monitor("input=%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b || output=%b%b%b%b",ip[15],ip[14],ip[13],ip[12],ip[11],ip[10],ip[9],ip[8],ip[7],ip[6],ip[5],ip[4],ip[3],ip[2],ip[1],ip[0],op[3],op[2],op[1],op[0]);
			#300 $finish;
		end
endmodule
