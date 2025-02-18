`timescale 1ns / 1ps

module N_Bit_ResetLoad_Register #(parameter N = 8)(input [N-1:0] D , rst, load, clk, output [N-1:0] Q);
    genvar i;
    wire [N-1:0] Dmux;
    generate
        for(i = 0; i < N; i=i+1) begin
            mux2x1 mux(D[i], Q[i], load, Dmux[i] );
            DFlipFlop DFF (.clk (clk), .rst(rst), .D (Dmux[i]), .Q(Q[i]));  
        end 
    endgenerate 
endmodule
