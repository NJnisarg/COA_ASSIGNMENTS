// METADATA ABOUT THE PROGRAM
//
// 	AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
// 	REG NO:  171CO226	     171CO253
// 	MODULE:  half_adder
// 	DATE:	 14th Oct 2018
//
// END META DATA

module half_adder(ip1,ip2,sum,carry);

// Mapping input and output pins
input ip1, ip2;
output sum, carry;

// Implementing the boolean function for Half adder.
// sum = ip1 xor ip2
// carry = ip1 and ip2
xor(sum,ip1,ip2);
and(carry,ip1,ip2);

endmodule
