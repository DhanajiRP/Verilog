module Logical(a,b,c,y);
  input a,b,c;
  output y;
  reg y;

  always @(a or b or c)  
  begin

	  y = (a & b)|(b & c);
 end
endmodule  

