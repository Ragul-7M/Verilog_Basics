module tb_jk_ff;
reg J;
reg K;
reg clk;
wire Q;
wire Qbar;

jk_ff uut(.J(J),.K(K),.clk(clk),.Q(Q),.Qbar(Qbar));

initial 
begin
clk=0;
forever #5 clk=~clk;
end
initial 
begin
J=0;K=0; #5; //Hold
J=1;K=0; #5; //Set
J=0;K=0; #5; //Hold
J=0;K=1; #5; //Reset
J=1;K=1; #5; //Toggle
J=0;K=0; #5; //Hold

$finish;
end
endmodule