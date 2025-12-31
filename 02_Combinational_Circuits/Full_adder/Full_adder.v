module Full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    wire s1,c1,c2;
    
    Half_adder HA1(
    .A(a),
    .B(b),
    .Sum(s1),
    .Cout(c1)
    );
    
    Half_adder HA2(
    .A(s1),
    .B(cin),
    .Sum(sum),
    .Cout(c2)
    );
    
    assign cout= c1 | c2;
    
endmodule