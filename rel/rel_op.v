module rel_op(a,b,c,d,e,f,y);

  input[2:0]a,b,c,d,e,f;
  output reg y;
  always@(a or b or c or d or e or f) 
  begin
     if((a == b) && ((c > d) || !(e < f)))
	     y=1;
     else
	     y=0;
  end
endmodule
