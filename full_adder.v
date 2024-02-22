`timescale 1ns / 1ps

module full_adder(
input a,b,cin,
output sum,carry
);
wire d;
    
assign   d = b ^ cin ;
assign   sum =  a ^ d;
assign   carry = ((a^b)&cin)|(a&b);
                
endmodule
