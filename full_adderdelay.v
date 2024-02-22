`timescale 1ns / 1ps

module full_adderdelay(
input a,b,cin,
output sum,carry
);


assign  #20 sum =  a ^ b ^ cin;
assign  #50 carry = ((a^b)&cin)|(a&b);
                
endmodule
