// Main Module
module conv_pool(  
			clk, 
			image_4x4, 
			conv_kernel, 
			shift, 
			y
 		);
// Input ports  
  input clk;
  input [127:0] image_4x4;
  input [71:0] conv_kernel;
  input [1:0] shift;
  output [7:0] y;

// Flopped inputs
  wire signed [7:0] kernel1,kernel2,kernel3,kernel4,kernel5,kernel6,kernel7,kernel8,kernel9;
  wire signed [8:0] img1,img2,img3,img4,img5,img6,img7,img8;
  wire signed [8:0] img9,img10,img11,img12,img13,img14,img15,img16; 

// Partial products  
  wire signed [15:0] a01,a02,a03,a04,a05,a06,a07,a08,a09;
  wire signed [15:0] a11,a12,a13,a14,a15,a16,a17,a18,a19;
  wire signed [15:0] a21,a22,a23,a24,a25,a26,a27,a28,a29;
  wire signed [15:0] a31,a32,a33,a34,a35,a36,a37,a38,a39;

// Flopped Partial products  
  wire signed [15:0] af01,af02,af03,af04,af05,af06,af07,af08,af09;
  wire signed [15:0] af11,af12,af13,af14,af15,af16,af17,af18,af19;
  wire signed [15:0] af21,af22,af23,af24,af25,af26,af27,af28,af29;
  wire signed [15:0] af31,af32,af33,af34,af35,af36,af37,af38,af39;

// Sum variables  
  wire signed [19:0] sum0,sum1,sum2,sum3;
  wire signed [19:0] v0,v1,v2,v3;
  wire signed [19:0] sum0_ff,sum1_ff,sum2_ff,sum3_ff;

// Shift registers  
  wire [1:0] sh_reg_1,sh_reg_2,sh_reg_3;

// Final output
  wire [7:0] y_reg;

//assign sh_reg_1 = shift;   

//Flipflop Stage 1  
  flipflop1 f1 ( 
			  .clk(clk), 
			  .shift(shift), 
			  .image_4x4(image_4x4),
			  .conv_kernel(conv_kernel),
			  .kernel1(kernel1),
			  .kernel2(kernel2),
			  .kernel3(kernel3),
			  .kernel4(kernel4),
			  .kernel5(kernel5),
			  .kernel6(kernel6),
			  .kernel7(kernel7),
			  .kernel8(kernel8),
			  .kernel9(kernel9),
			  .img1(img1),
			  .img2(img2),
			  .img3(img3),
			  .img4(img4),
			  .img5(img5),
			  .img6(img6),
			  .img7(img7),
			  .img8(img8),
			  .img9(img9),
			  .img10(img10),
			  .img11(img11),
			  .img12(img12),
			  .img13(img13),
			  .img14(img14),
			  .img15(img15),
			  .img16(img16), 
			  .sh_reg(sh_reg_1)
  		);  

// Multiplication stage  
  mul a0 ( 
			  .kernel1(kernel1),
			  .kernel2(kernel2),
			  .kernel3(kernel3),
			  .kernel4(kernel4),
			  .kernel5(kernel5),
			  .kernel6(kernel6),
			  .kernel7(kernel7),
			  .kernel8(kernel8),
			  .kernel9(kernel9),
			  .img1(img1),
			  .img2(img2),
			  .img3(img3),
			  .img4(img4),
			  .img5(img5),
			  .img6(img6),
			  .img7(img7),
			  .img8(img8),
			  .img9(img9),
			  .img10(img10),
			  .img11(img11),
			  .img12(img12),
			  .img13(img13),
			  .img14(img14),
			  .img15(img15),
			  .img16(img16),
			  .shift(sh_reg_1),
			  .a01(a01),
			  .a02(a02),
			  .a03(a03),
			  .a04(a04),
			  .a05(a05),
			  .a06(a06),
			  .a07(a07),
			  .a08(a08),
			  .a09(a09),
			  .a11(a11),
			  .a12(a12),
			  .a13(a13),
			  .a14(a14),
			  .a15(a15),
			  .a16(a16),
			  .a17(a17),
			  .a18(a18),
			  .a19(a19),
			  .a21(a21),
			  .a22(a22),
			  .a23(a23),
			  .a24(a24),
			  .a25(a25),
			  .a26(a26),
			  .a27(a27),
			  .a28(a28),
			  .a29(a29),
			  .a31(a31),
			  .a32(a32),
			  .a33(a33),
			  .a34(a34),
			  .a35(a35),
			  .a36(a36),
			  .a37(a37),
			  .a38(a38),
			  .a39(a39), 
			  .sh_reg(sh_reg_2)
		);
  
// Flipflop stage 2   
  flipflop2 f2 ( 
			.clk(clk),
			.shift(sh_reg_2),
			.a01(a01),
			.a02(a02),
			.a03(a03),
			.a04(a04),
			.a05(a05),
			.a06(a06),
			.a07(a07),
			.a08(a08),
			.a09(a09),
			.a11(a11),
			.a12(a12),
			.a13(a13),
			.a14(a14),
			.a15(a15),
			.a16(a16),
			.a17(a17),
			.a18(a18),
			.a19(a19),
			.a21(a21),
			.a22(a22),
			.a23(a23),
			.a24(a24),
			.a25(a25),
			.a26(a26),
			.a27(a27),
			.a28(a28),
			.a29(a29),
			.a31(a31),
			.a32(a32),
			.a33(a33),
			.a34(a34),
			.a35(a35),
			.a36(a36),
			.a37(a37),
			.a38(a38),
			.a39(a39),
			.af01(af01),
			.af02(af02),
			.af03(af03),
			.af04(af04),
			.af05(af05),
			.af06(af06),
			.af07(af07),
			.af08(af08),
			.af09(af09),
			.af11(af11),
			.af12(af12),
			.af13(af13),
			.af14(af14),
			.af15(af15),
			.af16(af16),
			.af17(af17),
			.af18(af18),
			.af19(af19),
			.af21(af21),
			.af22(af22),
			.af23(af23),
			.af24(af24),
			.af25(af25),
			.af26(af26),
			.af27(af27),
			.af28(af28),
			.af29(af29),
			.af31(af31),
			.af32(af32),
			.af33(af33),
			.af34(af34),
			.af35(af35),
			.af36(af36),
			.af37(af37),
			.af38(af38),
			.af39(af39),
			.sh_reg(sh_reg_3)
		);
  
// Addition Stage
  addd a1( 
			.af01(af01),
			.af02(af02),
			.af03(af03),
			.af04(af04),
			.af05(af05),
			.af06(af06),
			.af07(af07),
			.af08(af08),
			.af09(af09),
			.af11(af11),
			.af12(af12),
			.af13(af13),
			.af14(af14),
			.af15(af15),
			.af16(af16),
			.af17(af17),
			.af18(af18),
			.af19(af19),
			.af21(af21),
			.af22(af22),
			.af23(af23),
			.af24(af24),
			.af25(af25),
			.af26(af26),
			.af27(af27),
			.af28(af28),
			.af29(af29),
			.af31(af31),
			.af32(af32),
			.af33(af33),
			.af34(af34),
			.af35(af35),
			.af36(af36),
			.af37(af37),
			.af38(af38),
			.af39(af39),
			.shift(sh_reg_3),
			.sum0(sum0),
			.sum1(sum1),
			.sum2(sum2),
			.sum3(sum3),
			.v0(v0),
			.v1(v1),
			.v2(v2),
			.v3(v3)
		);  

// Flipflop stage 3  
flipflop3 f3 ( 
			.clk(clk),
			.sum0(v0), 
			.sum1(v1),
			.sum2(v2), 
			.sum3(v3),  
			.sum0_ff(sum0_ff),
			.sum1_ff(sum1_ff), 
			.sum2_ff(sum2_ff), 
			.sum3_ff(sum3_ff) 
	       	);
  
//Max-pooling stage  
max_pool max ( 
			.sum0_ff(sum0_ff), 
			.sum1_ff(sum1_ff),
			.sum2_ff(sum2_ff), 
			.sum3_ff(sum3_ff), 
			.y_reg(y_reg)
	   	      );
  
// Flipflop stage 4 
flipflop4 f4 ( 
			.clk(clk), 
			.y_reg(y_reg),  
			.y(y) 
		  );
               
endmodule

// Flipflop stage 1
module flipflop1  ( 
				clk, 
				shift, 
				image_4x4,
				conv_kernel, 
				kernel1,
				kernel2,
				kernel3,
				kernel4,
				kernel5,
				kernel6,
				kernel7,
				kernel8,
				kernel9,
				img1,
				img2,
				img3,
				img4,
				img5,
				img6,
				img7,
				img8,
				img9,
				img10,
				img11,
				img12,
				img13,
				img14,
				img15,
				img16,
				sh_reg
			);
  
  input clk;
  input  signed [71:0]   conv_kernel;
  input  signed [127:0]  image_4x4;
  input  [1:0] shift; 
  
  output reg signed [7:0]   kernel1,kernel2,kernel3,kernel4,kernel5,kernel6,kernel7,kernel8,kernel9;
  output reg signed [8:0]   img1,img2,img3,img4,img5,img6,img7,img8;
  output reg signed [8:0]   img9,img10,img11,img12,img13,img14,img15,img16;
  
  output reg [1:0] sh_reg; 
  
always @(posedge clk)
	begin
		 img1 <= image_4x4[7:0];
		 img2 <= image_4x4[15:8];
		 img3 <= image_4x4[23:16];
		 img4 <= image_4x4[31:24];
		 img5 <= image_4x4[39:32];
		 img6 <= image_4x4[47:40];
		 img7 <= image_4x4[55:48];
		 img8 <= image_4x4[63:56];
		 img9 <= image_4x4[71:64];
		 img10 <= image_4x4[79:72];
		 img11 <= image_4x4[87:80];
		 img12 <= image_4x4[95:88];
		 img13 <= image_4x4[103:96];
		 img14 <= image_4x4[111:104];
		 img15 <= image_4x4[119:112];
		 img16 <= image_4x4[127:120];

		 kernel1 <= conv_kernel[7:0];
		 kernel2 <= conv_kernel[15:8];
		 kernel3 <= conv_kernel[23:16];
		 kernel4 <= conv_kernel[31:24];
		 kernel5 <= conv_kernel[39:32];
		 kernel6 <= conv_kernel[47:40];
		 kernel7 <= conv_kernel[55:48];
		 kernel8 <= conv_kernel[63:56];
		 kernel9 <= conv_kernel[71:64];
		      
		 sh_reg <= shift;
	end
endmodule

// Multiplication
module mul  ( 
				kernel1,
				kernel2,
				kernel3,
				kernel4,
				kernel5,
				kernel6,
				kernel7,
				kernel8,
				kernel9,
				img1,
				img2,
				img3,
				img4,
				img5,
				img6,
				img7,
				img8,
				img9,
				img10,
				img11,
				img12,
				img13,
				img14,
				img15,
				img16, 
				shift, 
				a01,
				a02,
				a03,
				a04,
				a05,
				a06,
				a07,
				a08,
				a09,
				a11,
				a12,
				a13,
				a14,
				a15,
				a16,
				a17,
				a18,
				a19,
				a21,
				a22,
				a23,
				a24,
				a25,
				a26,
				a27,
				a28,
				a29,
				a31,
				a32,
				a33,
				a34,
				a35,
				a36,
				a37,
				a38,
				a39,
				sh_reg
		);

  input  signed [7:0] kernel1,kernel2,kernel3,kernel4,kernel5,kernel6,kernel7,kernel8,kernel9;
  input  signed [8:0] img1,img2,img3,img4,img5,img6,img7,img8;
  input  signed [8:0] img9,img10,img11,img12,img13,img14,img15,img16;

  input  signed [1:0] shift;
  output signed [1:0] sh_reg;
  
  output signed [15:0] a01,a02,a03,a04,a05,a06,a07,a08,a09;
  output signed [15:0] a11,a12,a13,a14,a15,a16,a17,a18,a19;
  output signed [15:0] a21,a22,a23,a24,a25,a26,a27,a28,a29;
  output signed [15:0] a31,a32,a33,a34,a35,a36,a37,a38,a39;
 
assign a01 = img1 * kernel1;
assign a02 = img2 * kernel2;
assign a03 = img3 * kernel3;
assign a04 = img5 * kernel4;
assign a05 = img6 * kernel5;
assign a06 = img7 * kernel6;
assign a07 = img9 * kernel7;
assign a08 = img10 * kernel8;
assign a09 = img11 * kernel9;
  
assign a11 = img2 * kernel1;
assign a12 = img3 * kernel2;
assign a13 = img4 * kernel3;
assign a14 = img6 * kernel4;
assign a15 = img7 * kernel5;
assign a16 = img8 * kernel6;
assign a17 = img10 * kernel7;
assign a18 = img11 * kernel8;
assign a19 = img12 * kernel9; 

assign a21 = img5 * kernel1;
assign a22 = img6 * kernel2;
assign a23 = img7 * kernel3;
assign a24 = img9 * kernel4;
assign a25 = img10 * kernel5;
assign a26 = img11 * kernel6;
assign a27 = img13 * kernel7;
assign a28 = img14 * kernel8;
assign a29 = img15 * kernel9;  

assign a31 = img6 * kernel1;
assign a32 = img7 * kernel2;
assign a33 = img8 * kernel3;
assign a34 = img10 * kernel4;
assign a35 = img11 * kernel5;
assign a36 = img12 * kernel6;
assign a37 = img14 * kernel7;
assign a38 = img15 * kernel8;
assign a39 = img16 * kernel9;
  
assign sh_reg  =  shift;
endmodule

//Flipflop stage 2
module flipflop2 ( 
				clk,
				shift,
				a01,
				a02,
				a03,
				a04,
				a05,
				a06,
				a07,
				a08,
				a09,
				a11,
				a12,
				a13,
				a14,
				a15,
				a16,
				a17,
				a18,
				a19,
				a21,
				a22,
				a23,
				a24,
				a25,
				a26,
				a27,
				a28,
				a29,
				a31,
				a32,
				a33,
				a34,
				a35,
				a36,
				a37,
				a38,
				a39,
				af01,
				af02,
				af03,
				af04,
				af05,
				af06,
				af07,
				af08,
				af09,
				af11,
				af12,
				af13,
				af14,
				af15,
				af16,
				af17,
				af18,
				af19,
				af21,
				af22,
				af23,
				af24,
				af25,
				af26,
				af27,
				af28,
				af29,
				af31,
				af32,
				af33,
				af34,
				af35,
				af36,
				af37,
				af38,
				af39, 
				sh_reg
		);

	input  clk;
	input  [1:0] shift;
	input  signed [15:0] a01,a02,a03,a04,a05,a06,a07,a08,a09;
	input  signed [15:0] a11,a12,a13,a14,a15,a16,a17,a18,a19;
	input  signed [15:0] a21,a22,a23,a24,a25,a26,a27,a28,a29;
	input  signed [15:0] a31,a32,a33,a34,a35,a36,a37,a38,a39;

	output reg signed [15:0] af01,af02,af03,af04,af05,af06,af07,af08,af09;
	output reg signed [15:0] af11,af12,af13,af14,af15,af16,af17,af18,af19;
	output reg signed [15:0] af21,af22,af23,af24,af25,af26,af27,af28,af29;
	output reg signed [15:0] af31,af32,af33,af34,af35,af36,af37,af38,af39;
  
	output reg [1:0] sh_reg;

always @ ( posedge clk)
    begin

      af01 <= a01;
      af02 <= a02;
      af03 <= a03;
      af04 <= a04;
      af05 <= a05;
      af06 <= a06;
      af07 <= a07;
      af08 <= a08;
      af09 <= a09;
      
      af11 <= a11;
      af12 <= a12;
      af13 <= a13;
      af14 <= a14;
      af15 <= a15;
      af16 <= a16;
      af17 <= a17;
      af18 <= a18;
      af19 <= a19;
      
      af21 <= a21;
      af22 <= a22;
      af23 <= a23;
      af24 <= a24;
      af25 <= a25;
      af26 <= a26;
      af27 <= a27;
      af28 <= a28;
      af29 <= a29;
      
      af31 <= a31;
      af32 <= a32;
      af33 <= a33;
      af34 <= a34;
      af35 <= a35;
      af36 <= a36;
      af37 <= a37;
      af38 <= a38;
      af39 <= a39;
     
      sh_reg <= shift;   

    end
endmodule

// Addition computation
module addd ( 
			shift,
			af01,
			af02,
			af03,
			af04,
			af05,
			af06,
			af07,
			af08,
			af09,
			af11,
			af12,
			af13,
			af14,
			af15,
			af16,
			af17,
			af18,
			af19,
			af21,
			af22,
			af23,
			af24,
			af25,
			af26,
			af27,
			af28,
			af29,
			af31,
			af32,
			af33,
			af34,
			af35,
			af36,
			af37,
			af38,
			af39,
			sum0,
			sum1,
			sum2,
			sum3,
			v0,
			v1,
			v2,
			v3
		);
  
  input  [1:0] shift;
  input  signed [15:0] af01,af02,af03,af04,af05,af06,af07,af08,af09;
  input  signed [15:0] af11,af12,af13,af14,af15,af16,af17,af18,af19;
  input  signed [15:0] af21,af22,af23,af24,af25,af26,af27,af28,af29;
  input  signed [15:0] af31,af32,af33,af34,af35,af36,af37,af38,af39;
  
  input signed [19:0] sum0, sum1, sum2, sum3;
  
  output signed [19:0] v0, v1, v2, v3;

  assign sum0 = af01 + af02 + af03 + af04 + af05 + af06 + af07 + af08 + af09;
  assign sum1 = af11 + af12 + af13 + af14 + af15 + af16 + af17 + af18 + af19;
  assign sum2 = af21 + af22 + af23 + af24 + af25 + af26 + af27 + af28 + af29;
  assign sum3 = af31 + af32 + af33 + af34 + af35 + af36 + af37 + af38 + af39; 
  
  assign v0 = (sum0[19] == 1'b1) ? 20'b0 : (sum0>>shift); 
  assign v1 = (sum1[19] == 1'b1) ? 20'b0 : (sum1>>shift); 
  assign v2 = (sum2[19] == 1'b1) ? 20'b0 : (sum2>>shift); 
  assign v3 = (sum3[19] == 1'b1) ? 20'b0 : (sum3>>shift); 

endmodule  

//Flipflop stage 3
module flipflop3 (
			clk,
			sum0, 
			sum1,
			sum2, 
			sum3,  
			sum0_ff,
			sum1_ff, 
			sum2_ff, 
			sum3_ff 
);
  input clk;
  input signed [19:0] sum0, sum1, sum2, sum3;
  output reg signed [19:0] sum0_ff, sum1_ff, sum2_ff, sum3_ff;
  
always @ (posedge clk)
  begin
		sum0_ff <= sum0;
		sum1_ff <= sum1;
		sum2_ff <= sum2;
		sum3_ff <= sum3;
  end
endmodule

//Maxpooling
module max_pool (
			sum0_ff,
			sum1_ff,
			sum2_ff,
			sum3_ff,
			y_reg
		  );
  
        input signed [19:0] sum0_ff, sum1_ff, sum2_ff, sum3_ff;
        output reg [7:0] y_reg;

	reg [7:0] temp0_reg,temp1_reg;
	wire unsigned [7:0] c0,c1,c2,c3;
                    
        assign c0 = (sum0_ff[18:8]> 11'b0)? 8'd255 : sum0_ff[7:0];
        assign c1 = (sum1_ff[18:8]> 11'b0)? 8'd255 : sum1_ff[7:0];
        assign c2 = (sum2_ff[18:8]> 11'b0)? 8'd255 : sum2_ff[7:0];
        assign c3 = (sum3_ff[18:8]> 11'b0)? 8'd255 : sum3_ff[7:0];
                    
always @ (c0,c1,c2,c3) 
	begin
		temp0_reg = (c0 >= c1) ? c0 : c1;
		temp1_reg = (c2 >= c3) ? c2 : c3;
		y_reg = (temp0_reg >= temp1_reg) ? temp0_reg : temp1_reg;	
	end
endmodule

// Flipflop_stage4
module flipflop4 ( clk, y_reg, y );
                      
          input clk;
          input [7:0] y_reg;
          output reg [7:0] y;
                      
always @ (posedge clk)
          begin
                   y <= y_reg;
          end
endmodule    
