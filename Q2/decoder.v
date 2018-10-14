// METADATA ABOUT THE MODULE
//
//     AUTHORS: Nisarg S. Joshi and Yash M. Agarwal
//     REG NO:  171CO226         171CO253
//     MODULE:  decoder
//     DATE:   14th Oct 2018
//
// END META DATA

module decoder(ip,op,en);

       input [3:0]ip;              // Declaring the input pins and output pins along with the range of bits
       output [15:0]op;
       input en;

       // Assigning the values to the output bits based on the boolean logic for decoder
       assign op[0] = ~ip[3] & ~ip[2] & ~ip[1] & ~ip[0]  & en,
              op[1] = ~ip[3] & ~ip[2] & ~ip[1] &  ip[0]  & en,
              op[2] = ~ip[3] & ~ip[2] &  ip[1] & ~ip[0]  & en,
              op[3] = ~ip[3] & ~ip[2] &  ip[1] &  ip[0]  & en,
              op[4] = ~ip[3] &  ip[2] & ~ip[1] & ~ip[0]  & en,
              op[5] = ~ip[3] &  ip[2] & ~ip[1] &  ip[0]  & en,
              op[6] = ~ip[3] &  ip[2] &  ip[1] & ~ip[0]  & en,
              op[7] = ~ip[3] &  ip[2] &  ip[1] &  ip[0]  & en,
              op[8] =  ip[3] & ~ip[2] & ~ip[1] & ~ip[0]  & en,
              op[9] =  ip[3] & ~ip[2] & ~ip[1] &  ip[0]  & en,
              op[10] = ip[3] & ~ip[2] &  ip[1] & ~ip[0]  & en,
              op[11] = ip[3] & ~ip[2] &  ip[1] &  ip[0]  & en,
              op[12] = ip[3] &  ip[2] & ~ip[1] & ~ip[0]  & en,
              op[13] = ip[3] &  ip[2] & ~ip[1] &  ip[0]  & en,
              op[14] = ip[3] &  ip[2] &  ip[1] & ~ip[0]  & en,
              op[15] = ip[3] &  ip[2] &  ip[1] &  ip[0]  & en;

endmodule
