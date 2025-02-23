`timescale 1ns / 1ps



module ImmGen (output [31:0] gen_out, input [31:0] inst);

reg [11:0] imm;
wire sign_bit;
always @(*)begin
    if(inst[31:30] == 2'b00) begin //LW
    imm = inst[31:20];         
    end
    else if(inst[31:30] == 2'b10) begin //SW
    imm = {inst[31:25], inst[11:7]};
    end 
    else if(inst[31] == 1'b1) begin //BEQ
    imm = {inst[31], inst[7], inst[30:25],inst[11:8]};
    end
end

    assign sign_bit = inst[11];
    assign gen_out = (sign_bit == 0)? {24'b0, imm}:
    {24'b1, imm};
    

endmodule