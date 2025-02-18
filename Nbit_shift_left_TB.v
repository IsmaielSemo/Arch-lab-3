`timescale 1ns / 1ps

module Nbit_shift_left_TB();

parameter N=8;
reg[N-1:0] a;
wire[N-1:0] out;
Nbit_shift_left #(8) shift(a,out );
 
initial begin
#10
    a=8'b000000000;
#10
    a=8'b110000000;   
#10        
    a=8'b101010101;
         
#10       
    a=8'b11111111;

end
 
endmodule
