`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 11:41:30
// Design Name: 
// Module Name: shr_module
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


module shr_module # (parameter N = 8) (
    x, a
    );
    input [N-1:0] a;
    output reg [N-1:0] x;
    
    always @ (a) begin
        x = a >> 1;
    end
    
endmodule
