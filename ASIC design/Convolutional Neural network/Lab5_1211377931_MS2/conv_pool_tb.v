//################ Setting time scale and precision #################### 
`timescale 1ps/1ps

include "/afs/asu.edu/class/e/e/e/eee525b/library/setup_files/stdcell_verilog_f15.v";

module testbench();
// Modify params.vh based on Your design and point to Your local directory below
`include "/afs/asu.edu/users/a/p/a/aparame2/asap7_rundir/Lab_525/Lab5/Lab5_p2/RTL/params.vh"

reg [127:0] image_tb;
reg signed [71:0] kernel_tb;
reg [1:0] shift_tb;
wire [7:0] y_tb;
reg clk_tb;
integer fh_in, fh_out, index;

// Instantiate top module
conv_pool dut (.clk(clk_tb), .image_4x4(image_tb), .conv_kernel(kernel_tb), .shift(shift_tb), .y(y_tb));


initial begin
	fh_in  = $fopen("/afs/asu.edu/class/e/e/e/eee525b/lab4_f15/conv_pool.input","r");
	fh_out = $fopen("/afs/asu.edu/users/a/p/a/aparame2/asap7_rundir/Lab_525/Lab5/Lab5_p2/RTL/conv_pool.output","w");

end

initial begin

	clk_tb = 0;
	index = 0;      
        image_tb = 128'd0;
        kernel_tb = 128'd0;
        shift_tb = 2'd0;
        #20 ;
end

// For clock period of 2ns 
always #(ClkPeriod/2) clk_tb = ~clk_tb;

always @(posedge clk_tb) begin
	$fscanf(fh_in,"%h %h %h\n", image_tb, kernel_tb, shift_tb);

	index = index+1;
	if(index>2+NumStages) begin
		$fwrite(fh_out,"%h\n", y_tb);
	end
 
	// ### Added Numstages for the pipelined design ###
	if ($feof(fh_in) && index==65638+NumStages) begin
		$fclose(fh_out);
		$fclose(fh_in);
		$finish;		
	end 
end

//##### For generating .vcd.gz for primetime ##########
 initial
  begin
  $dumpfile("current_output.vcd.gz");
  $dumpvars(0,testbench);
end 

endmodule
