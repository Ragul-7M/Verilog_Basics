module tb_nor_gate;
reg a,b;
wire y;

nor_gate uut(.A(a),.B(b),.Y(y));
initial 
begin
a=0;b=0; #5
a=0;b=1; #5
a=1;b=0; #5
a=1;b=1; #5
$finish;

end
endmodule