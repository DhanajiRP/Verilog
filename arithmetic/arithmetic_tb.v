`timescale 1ns/1ns
`include "arithmetic.v"
module and_data_tb;
reg [2:0]a,b;
wire [4:0]add,sub,mult,div,mod;
arithmetic dut(.a(a),.b(b),.add(add),.sub(sub),.mult(mult),.div(div),.mod(mod));
initial begin
	$dumpfile("a.vcd");
	$dumpvars(0,and_data_tb);

	a=0;
	b=1;

	#20;

	a=3;
	b=4;

	#20	
	$display("test complete");
	$finish;
end
endmodule
