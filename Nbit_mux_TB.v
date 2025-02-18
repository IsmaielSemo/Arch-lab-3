`timescale 1ns / 1ps

module Nbit_mux_TB();
parameter N=8;
reg [N-1:0] a,b;
reg sel;
wire [N-1:0] out;

Nbit_2x1mux#(N)  mux(a,b, sel, out );

initial begin
#10
    a=8'b000000000;
    b=8'b11001101;
    sel = 0;
#10
    a=8'b000000000;
    b=8'b11001101;
    sel = 1;       
#10        
    a=8'b101010101;
    b=8'b11001101;
    sel = 0;
         
#10       
    a=8'b11111111;
    b=8'b00001111;
    sel = 1;

end
endmodule
