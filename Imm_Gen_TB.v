`timescale 1ns / 1ps


module Imm_Gen_TB();
wire [31:0] gen_out; 
reg [31:0] inst;
ImmGen uut(gen_out,inst);


initial begin
        // Test SW (Store Word) instruction: SW x2, 0(x1)
        inst = 32'b00000000001000001000000000100011; // SW: 0x00028023
        
        // Test LW (Load Word) instruction: LW x3, 4(x2)
        #10 inst = 32'b10000000001000011010110000000011; // LW: 0x00030103
        
        // Test BEQ (Branch if Equal) instruction: BEQ x1, x2, 8
        #10 inst = 32'b11000000001000000100000000010000; // BEQ: 0x00010063
    end
 

endmodule
