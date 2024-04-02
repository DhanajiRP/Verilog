`timescale 1ns/1ns
`include "and_data.v"
module and_data_tb;
reg a,b;
wire c;
and_data dut(.a(a),.b(b),.c(c));
initial begin
	$dumpfile("a.vcd");
	$dumpvars(0,and_data_tb);

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
