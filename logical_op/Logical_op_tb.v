`timescale 1ns/1ns
`include "Logical_op.v"
module Logical_op_tb;
reg a,b,c;
wire y;
Logical dut(.a(a),.b(b),.c(c),.y(y));
initial begin
	$dumpfile("a.vcd");
	$dumpvars(0,Logical_op_tb);

	a=0;
	b=0;
        c=0;

	#20;
	a=1;
	b=0;
        c=1;

	#20
	a=0;
	b=1 ;
        c =0;

	#20;
	a=1;
	b=1;
        c =1;

	#20	
	$display("test complete");
	$finish;
end 
endmodule
