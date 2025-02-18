`timescale 1ns / 1ps

module NBitResetLoadReg_tb();
    localparam clk_period = 100;
    parameter N = 8;
    reg [N-1:0] D;
    reg clk;
    reg rst;
    reg load;
    wire [N-1:0] Q;
    
    N_Bit_ResetLoad_Register#(N) inst (.D(D) , .rst(rst), .load(load), .clk(clk), .Q (Q));
    
    initial begin
         clk = 1'b0;
        forever #(clk_period/2) clk = ~clk;
    end
    
    initial begin 
         load = 0;
         rst = 0;
         D = 8'b11001101;
        
        #clk_period 
        
         load = 0;
         rst = 1;
         D = 8'b10111101;
        
        #clk_period 
        
         load = 1;
         rst = 0;
         D = 8'b11000101;
         
         #clk_period 
         load = 0;
         rst = 0;
         D = 8'b11100101;
         
        #clk_period 
        
         load = 1;
         rst = 0;
         D = 8'b11001111;
        
    end 
    
endmodule

