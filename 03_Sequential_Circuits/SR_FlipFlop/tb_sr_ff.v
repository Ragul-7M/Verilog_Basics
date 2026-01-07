module tb_sr_ff;
reg S;
reg R;
reg clk;
wire Q;
wire Qbar;

sr_ff uut(.S(S),.R(R),.clk(clk),.Q(Q),.Qbar(Qbar));

initial 
begin
clk=0;
forever #5 clk=~clk;
end
initial 
begin
S=0;R=0; #5; //Hold
S=1;R=0; #5; //Set
S=0;R=0; #5; //Hold
S=0;R=1; #5; //Reset
S=1;R=1; #5; //Invalid
S=0;R=0; #5; //Hold

$finish;
end
endmodule