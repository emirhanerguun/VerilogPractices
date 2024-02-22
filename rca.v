`timescale 1ns / 1ps

module rca(
input [31:0] a,
input [31:0] b,

input select,
output [31:0]sum,
output cout
);
wire [31:0] c;
wire [31:0] w;
wire cin;

 assign cin  =(select==1'b0) ? 1'b0 : 1'b1;

genvar i;                                                
generate
for(i=0; i<32; i=i+1) begin
assign w[i]=b[i]^cin;
end
endgenerate


generate
for(i=0; i<32; i=i+1) begin
if(i==0) 
full_adder fa0(a[0],w[0],cin,sum[0],c[0]);
else 
full_adder fa(a[i],w[i],c[i-1],sum[i],c[i]);
end
endgenerate

assign cout=c[31];

endmodule   
                
