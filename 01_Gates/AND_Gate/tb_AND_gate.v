`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 16:58:53
// Design Name: 
// Module Name: tb_AND_gate
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


module tb_AND_gate;
reg a,b;
wire y;
AND_gate uut(.A(a),.B(b),.Y(y));
initial
begin
a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10
$finish;
end
endmodule
