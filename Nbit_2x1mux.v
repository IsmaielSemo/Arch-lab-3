`timescale 1ns / 1ps

module Nbit_2x1mux #(parameter N=8)(
input [N-1:0] a,b,
input sel,
output [N-1:0] out
    );
    genvar i;
    generate 
    for(i=0;i<N;i=i+1)begin 
        mux2x1 mux(a[i],b[i], sel, out[i] );
    end
  endgenerate
    
endmodule

