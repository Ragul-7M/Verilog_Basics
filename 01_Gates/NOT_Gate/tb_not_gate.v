module tb_not_gate;
reg a;
wire y;
not_gate uut(.A(a),.Y(y));
initial begin
a=0; #5
a=1; #5
$finish;
end
endmodule