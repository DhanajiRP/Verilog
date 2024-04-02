module comaparator(a,b,l,g,eq);
  input [4:0]a,b;
  output reg l,g,eq;
  always @(a,b)  
  begin
	 if( a < b)
	 begin
		 l = 1;
		 g = 0;
		 eq = 0;
	 end
	 else if(a>b) 
	 begin
		 l = 0;
		 g = 1;
		 eq = 0;
	 end
         else
	 begin
		 l = 0;
		 g = 0;
		 eq = 1;
	 end
 end
endmodule  
