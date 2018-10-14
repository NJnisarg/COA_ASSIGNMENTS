// METADATA ABOUT THE MODULE
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  n_bit_adder_sub
// 	DATE:	 14th Oct 2018
//
// END META DATA

module n_bit_adder_sub(ip1,ip2,c_in,op,c_out,overflow);

	// Setting up the parameter n=32 by default. Changing the value of n changes the bits of addition/subtraction
	parameter n = 32;

	// Assigning the input and output according to the size of the parameter n
	input [n-1:0]ip1;
	input [n-1:0]ip2;
	input c_in;

	output [n-1:0]op;
	output c_out;
	output overflow;

	// Internal carry and final_ip2 to get the final ip2 value after doing xor with c_in
	wire [n-1:0]carry;
	wire [n-1:0]final_ip2;

	// Getting the final ip2 value after doing xor with c_in. This decides addition or subtraction.
	genvar j;

	for(j=0;j<n;j=j+1)
		xor(final_ip2[j],ip2[j],c_in);

	// Carrying out addition/subtraction by calling the full_adder n times.
	generate
		genvar i;
		for(i=0;i<n;i=i+1)
	       begin
	       if(i==0) 
	       full_adder fa(ip1[0],final_ip2[0],c_in,op[0],carry[0]);
	       else
	       full_adder fa(ip1[i],final_ip2[i],carry[i-1],op[i],carry[i]);
	       end
	    assign carry_out = carry[n-1];
	    assign overflow=carry[n-1] ^ carry[n-2];
	endgenerate

endmodule