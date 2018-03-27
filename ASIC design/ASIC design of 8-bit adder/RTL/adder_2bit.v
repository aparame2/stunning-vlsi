// D Flip flop
module DFF(clk,d,q);
  input clk;
  input d;
  output q;
  
  reg q;
  
  always@(posedge clk)
    begin
      q <= d;
    end
endmodule

module halfadder (x, y, cin, A, cout);
   
 input x;
 input y;
 input cin;
 output A; 
 output cout;
  
 assign   	A = x ^ y;
 assign		cout = x * y;
  
endmodule

module fulladder (x, y, cin, A, cout);
 input x;
 input y;
 input cin;
 output A; 
 output cout;
  
   assign  	A = x ^ y ^ cin;
   assign   cout = x*cin + y*cin + x*y;
  
endmodule

// Adder 2 bit
module adder_2bit (clk, a, b, sum, cout);
input clk;
input [1:0] a, b;
output [1:0] sum;
output cout;
  
  wire cin = 1'b0;
  wire a0, a1, b0, b1;
  wire sum0, sum1;
  wire cout0;
  
  DFF f1 (.clk(clk),.d(a[0]),.q(a0));
  DFF f2 (.clk(clk),.d(a[1]),.q(a1));
  DFF f3 (.clk(clk),.d(b[0]),.q(b0));
  DFF f4 (.clk(clk),.d(b[1]),.q(b1));
  
  halfadder HA (.x(a0), .y(b0), .cin(cin), .A(sum0), .cout(cout0));
  
  fulladder FA (.x(a1), .y(b1), .cin(cout0), .A(sum1), .cout(cout1));
  
  DFF f5 (.clk(clk),.d(sum0),.q(sum[0]));
  DFF f6 (.clk(clk),.d(sum1),.q(sum[1]));
  DFF f7 (.clk(clk),.d(cout1),.q(cout));
  
 endmodule
