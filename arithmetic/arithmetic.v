module arithmetic(a,b,add,sub,mult,div,mod);

  input[2:0]a,b;
  output reg[4:0] add,sub,mult,div,mod;
  always@(a or b)
  begin
    add  = a + b ;   
    sub  = a - b ;
    mult = a * b ;
    div  = a / b ;
    mod  = a % b ;
  end
endmodule
