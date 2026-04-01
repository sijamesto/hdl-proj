`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 18:04:03
// Design Name: 
// Module Name: alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_tb;
    parameter N = 4;
    reg [3:0] opcode;
    
    reg [N-1:0] a, b;
    wire carry, zero_flag, overflow_flag, neg_flag;
    wire [N-1:0] result;
    alu_module #(N) top_alu (result, carry, zero_flag, overflow_flag, neg_flag, a, b, opcode);
    
    initial begin
        a = 0;
        b = 0;
        opcode = 0;
        
    end
    always begin
        
        #10 a = 4'b1111;
        b = 4'b0001;
        #10 a = 4'b1001;
        b = 4'b1101;
        #10 a = 4'b0011;
        b = 4'b0111;
        #10 a = 4'b1010;
        b = 4'b100;
        #10
        
        if(opcode == 4'b1111) $finish;
        opcode = opcode + 1;
    end
    
endmodule
