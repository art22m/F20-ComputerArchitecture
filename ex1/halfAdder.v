module halfAdder (a, b, sum, carry);
input a, b;
output sum, carry;
xor ff(sum, a, b);
and ss(carry, a, b);
endmodule


