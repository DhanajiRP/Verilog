`timescale 1ns/1ns
`include "rel_op.v"
module rel_op_tb;
reg [2:0]a,b,c,d,e,f;
wire y;
rel_op dut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.y(y));
initial begin
	$dumpfile("a.vcd");
	$dumpvars(0,rel_op_tb);

	a=0;
	b=1;
	c=0;
	d=1;
	e=0;
	f=1;

	#20;

	a=2;
	b=3;
	c=1;
	d=2;
	e=0;
	f=1;

	#20	
	$display("test complete");
	$finish;
end
endmodule
