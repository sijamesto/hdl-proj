`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 14:41:29
// Design Name: 
// Module Name: alu_module
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


module alu_module # (parameter N = 8)(
    result, carry, zero_flag, neg_flag, a, b, opcode
    );
    input [N-1:0] a, b;
    input [3:0] opcode;
    output reg [N-1:0] result;
    output reg carry, zero_flag, neg_flag;
    
    
endmodule
