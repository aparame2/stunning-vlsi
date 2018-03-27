`timescale 1ns/100ps

module tb_adder_2bit;

reg clk_tb;
reg [1:0] a;
reg [1:0] b;
wire [1:0] sum;
wire cout;

adder_2bit dut (
    .clk (clk_tb),
    .a (a),
    .b (b),
    .sum (sum),
    .cout (cout)
);


initial
  begin
    clk_tb = 1'b0;
  end

always
  begin
    #2 clk_tb =~ clk_tb; //defines your clock period.
  end

initial 
  begin
    a = 2'b00;
    b = 2'b00; //case1
	
    #11 
    a = 2'b01;
    b = 2'b01; //case2
 
    #8
    a = 2'b10;
    b = 2'b01; //case3
  
    #8
    a = 2'b10;
    b = 2'b10; //case4
  
    #8
    a = 2'b11;
    b = 2'b11; //case5

    #12 $finish;
  end


initial 
  begin
    $monitor("time=",$time,, "a=%d b=%d : sum=%d cout=%b", a, b, sum, cout);
  end

initial
   begin
      $dumpfile("adder_2bit.vcd");
      $dumpvars(0,tb_adder_2bit);
   end

endmodule
