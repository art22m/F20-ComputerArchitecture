module fullAdder(a,b, carryi, sum, carryo);
  input  a, b, carryi;
  output sum, carryo;
 
  wire   w1, w2, w3;
       
  assign w1 = a ^ b;
  assign w2 = w1 & carryi;
  assign w3 = a & b;
 
  assign sum   = w1 ^ carryi;
  assign carryo = w2 | w3;
   
endmodule 