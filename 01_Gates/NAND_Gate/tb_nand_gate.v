module tb_nand_gate;
reg a,b;
wire y;
nand_gate uut(.A(a),.B(b),.Y(y));
initial 
begin
a=0;b=0;#5
a=0;b=1;#5
a=1;b=0;#5
a=1;b=1;#5
$finish;
end

endmodule