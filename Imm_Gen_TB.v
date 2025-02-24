`timescale 1ns / 1ps


module Imm_Gen_TB();
wire [31:0] gen_out; 
reg [31:0] inst;
ImmGen uut(gen_out,inst);


initial begin
        // Test SW (Store Word) 
        inst = 32'b000000_000010_000010_000000_001000_11; // SW: 0x00028023
        
        // Test LW (Load Word) 
        #200 inst = 32'b10000000001000011010110000000011; // LW: 0x00030103
        
        // Test BEQ (Branch if Equal) 
        #200 inst = 32'b11000000001000000100000000010000; // BEQ: 0x00010063
        #200 inst = 32'b11111111_11111111_11111111_11111111; 
    end

endmodule
