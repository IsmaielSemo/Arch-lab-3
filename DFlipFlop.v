`timescale 1ns / 1ps

module DFlipFlop (input clk, input rst, input D, output reg Q);
always @ (posedge clk or posedge rst)
    if (rst) begin
        Q <= 1'b0;
    end 
    else begin
        Q <= D;
    end
endmodule

module mux2x1(
input a,b,sel, 
output out
);

assign out = (sel==1)? a:b;

endmodule