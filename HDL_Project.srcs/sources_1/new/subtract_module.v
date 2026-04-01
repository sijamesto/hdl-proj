`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 20:53:31
// Design Name: 
// Module Name: subtract_module
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


module subtract_module #(parameter N = 8)(
        b, d, x, y
    );
    input [N-1:0] x, y;
    output reg [N-1:0] d;
    output reg b;
    reg [N:0] diff;
    
    always @(x, y) begin
        diff = x - y;
        d = diff[N-1:0];
        b = ~diff[N];
      
    end
endmodule
