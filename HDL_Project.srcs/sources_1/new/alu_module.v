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
    result, carry, zero_flag, overflow_flag, neg_flag, a, b, opcode
    );
    input [N-1:0] a, b;
    input [3:0] opcode;
    output reg [N-1:0] result;
    output reg carry, zero_flag, neg_flag, overflow_flag;
    
    wire add_carry, add_overflow;
    wire [N-1:0] add_sum;
    add_module #(N) add1 (add_carry, add_sum, add_overflow, a, b);
    
    wire sub_borrow, sub_overflow;
    wire [N-1:0] sub_diff;
    subtract_module #(N) sub1 (sub_borrow, sub_diff, sub_overflow, a, b);
    
    wire [N-1:0] and_result;
    and_module #(N) and1(and_result, a, b);
    
    wire [N-1:0] or_result;
    or_module #(N) or1(or_result, a, b);
    
    wire [N-1:0] xor_result;
    xor_module #(N) xor1(xor_result, a, b);
    
    wire [N-1:0] not_result;
    not_module #(N) not1(not_result, a, b);
    
    wire shl_carry;
    wire [N-1:0] shl_result;
    shl_module #(N) shl1(shl_carry, shl_result, a);
    
    wire shr_carry;
    wire [N-1:0] shr_result;
    shr_module #(N) shr1 (shr_carry, shr_result, a);
    
    wire inc_carry, inc_overflow;
    wire [N-1:0] inc_result;
    inc_module #(N) inc1 (inc_carry, inc_result, inc_overflow, a);
    
    wire dec_borrow, dec_overflow;
    wire [N-1:0] dec_result;
    dec_module #(N) dec1 (dec_borrow, dec_result, dec_overflow, a);
    
endmodule
