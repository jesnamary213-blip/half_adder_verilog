module test;

reg A,B;
wire sum,carry;

Half_Adder HA(A,B,sum,carry);

initial begin
  	$monitor("A=%b B=%b Sum=%b Carry=%b",A,B,sum,carry);
  	$dumpfile("dump.vcd");
    $dumpvars(0,test);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
  	$finish;
  

end

endmodule
