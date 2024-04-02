`timescale 1ns/1ns
`include "comaparator.v"
module comparator_tb;
reg [4:0]a,b;
wire l,g,eq;
comaparator dut(.a(a),.b(b),.l(l),.g(g),.eq(eq));
initial begin
	$dumpfile("a.vcd");
	$dumpvars(0,comparator_tb);

	a=0;
	b=0;

	#20;
	a=1;
	b=0;

	#20
	a=0;
	b=1 ;

	#20;
	a=1;
	b=1;

	#20	
	$display("test complete");
	$finish;
end
endmodule
