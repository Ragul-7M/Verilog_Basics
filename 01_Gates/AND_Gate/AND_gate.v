`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Engineer: Ragul M
// 
// Create Date: 30.12.2025 16:58:03
// Design Name: AND Gate
// Module Name: AND_gate
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

module AND_gate(
    input A,
    input B,
    output Y
    );
    assign Y= A & B;
endmodule
