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
    parameter N = 8;
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
        
        #10 a = 8'b11110000;
        b = 8'b00011100;
        #10 a = 8'b10010000;
        b = 8'b11011111;
        #10 a = 8'b00111100;
        b = 8'b01111110;
        #10 a = 8'b10101100;
        b = 8'b10011110;
        #10
        
        if(opcode == 4'b1111) $finish;
        opcode = opcode + 1;
    end
    
endmodule
