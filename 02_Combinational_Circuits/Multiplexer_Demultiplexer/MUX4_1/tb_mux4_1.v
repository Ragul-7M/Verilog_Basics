module tb_MUX4_1;
reg i0,i1,i2,i3;
reg s0,s1;
wire y;

  MUX4_1 uut(.I0(i0),.I1(i1),.I2(i2),.I3(i3),.S0(s0),.S1(s1),.Y(y));
  initial 
  begin
   i0 = 1; i1 = 0; i2 = 1; i3 = 0;

    s1 = 0; s0 = 0; #10;  // Y = I0
    s1 = 0; s0 = 1; #10;  // Y = I1
    s1 = 1; s0 = 0; #10;  // Y = I2
    s1 = 1; s0 = 1; #10;  // Y = I3
$finish;
end
endmodule