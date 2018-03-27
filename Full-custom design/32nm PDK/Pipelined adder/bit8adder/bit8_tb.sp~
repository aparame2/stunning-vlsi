.TEMP 25
.OPTION

**Change your periOd here**
.param period=0.152n

**Change the library path to your path**
.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' FF

**Include your .spf file here**
.include "./bit8.spf"

************************************************
****DO NOT CHANGE ANYTHING BELOW THIS LINE!!****
************************************************
.param pvcc =1.05
.param period1='period*2'
.param period2='period*4'
.param period3='period*8'
.param tr='30p'
.param tf='30p'
.param d='period-100p'
.param pw = '(period/2)-((tr+tf)/2)'
.param pw1 = '(period1/2)-((tr+tf)/2)'
.param pw2 = '(period2/2)-((tr+tf)/2)'
.param pw3 = '(period3/2)-((tr+tf)/2)'


Vgnd gnd! 0 DC=0
Vvcc vcc! 0 DC=1.05

X2 vcc! gnd! SF0 S0 SF1 S1 SF2 S2 SF3 S3 SF4 S4 SF5 S5 SF6 S6 Cout SF7 S7 clk clkb Ci A0 B0 A1 B1 A2 B2 A3 B3 A4 B4 A5 B5 A6 B6 A7 B7 bit8final

.SUBCKT INVx04 a y
*.PININFO a:I y:O
XMM0 y a gnd! gnd! n105 m=1 w=1.419u l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM1 y a vcc! vcc! p105 m=1 w=1.701u l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

xinv0 SF0 Sinvload<0> INVx04
xinv1 SF1 Sinvload<1> INVx04
xinv2 SF2 Sinvload<2> INVx04
xinv3 SF3 Sinvload<3> INVx04
xinv4 SF4 Sinvload<4> INVx04
xinv5 SF5 Sinvload<5> INVx04
xinv6 SF6 Sinvload<6> INVx04
xinv7 SF7 Sinvload<7> INVx04

vA7 A7 0 PULSE (0 1.05 d tr tf pw3 period3)
vA6 A6 0 PULSE (0 1.05 d tr tf pw3 period3)
vA5 A5 0 PULSE (0 1.05 d tr tf pw2 period2)
vA4 A4 0 PULSE (0 1.05 d tr tf pw2 period2)
vA3 A3 0 PULSE (0 1.05 d tr tf pw1 period1)
vA2 A2 0 PULSE (0 1.05 d tr tf pw1 period1)
vA1 A1 0 PULSE (0 1.05 d tr tf pw2 period2)
vA0 A0 0 PULSE (0 1.05 d tr tf pw2 period2)

vB7 B7 0 PULSE (0 1.05 d tr tf pw3 period3)
vB6 B6 0 PULSE (0 1.05 d tr tf pw3 period3)
vB5 B5 0 PULSE (0 1.05 d tr tf pw2 period2)
vB4 B4 0 PULSE (0 1.05 d tr tf pw2 period2)
vB3 B3 0 PULSE (0 1.05 d tr tf pw1 period1)
vB2 B2 0 PULSE (0 1.05 d tr tf pw1 period1)
vB1 B1 0 PULSE (0 1.05 d tr tf pw2 period2)
vB0 B0 0 PULSE (0 1.05 d tr tf pw2 period2)

vCi Ci 0 PULSE (1.05 0 d tr tf pw1 period1)
vclk clk 0 PULSE (0 1.05 0 tr tf pw period)
vclkb clkb 0 PULSE (1.05 0 0 tr tf pw period)


.measure tran Pow AVG power from='period*3' to='9*period'
.measure tran current INTEGRAL i(Vvcc) from='3*period' to='9*period'

.measure tran S_0_0 FIND v(S0) WHEN v(clk)=0 FALL=4
.measure tran S_0_1 FIND v(S1) WHEN v(clk)=0 FALL=4
.measure tran S_0_2 FIND v(S2) WHEN v(clk)=0 FALL=4
.measure tran S_0_3 FIND v(S3) WHEN v(clk)=0 FALL=4
.measure tran S_0_4 FIND v(S4) WHEN v(clk)=0 FALL=4
.measure tran S_0_5 FIND v(S5) WHEN v(clk)=0 FALL=4
.measure tran S_0_6 FIND v(S6) WHEN v(clk)=0 FALL=4
.measure tran S_0_7 FIND v(S7) WHEN v(clk)=0 FALL=4

.measure tran S_1_0 FIND v(S0) WHEN v(clk)=0 FALL=5
.measure tran S_1_1 FIND v(S1) WHEN v(clk)=0 FALL=5
.measure tran S_1_2 FIND v(S2) WHEN v(clk)=0 FALL=5
.measure tran S_1_3 FIND v(S3) WHEN v(clk)=0 FALL=5
.measure tran S_1_4 FIND v(S4) WHEN v(clk)=0 FALL=5
.measure tran S_1_5 FIND v(S5) WHEN v(clk)=0 FALL=5
.measure tran S_1_6 FIND v(S6) WHEN v(clk)=0 FALL=5
.measure tran S_1_7 FIND v(S7) WHEN v(clk)=0 FALL=5

.measure tran S_2_0 FIND v(S0) WHEN v(clk)=0 FALL=6
.measure tran S_2_1 FIND v(S1) WHEN v(clk)=0 FALL=6
.measure tran S_2_2 FIND v(S2) WHEN v(clk)=0 FALL=6
.measure tran S_2_3 FIND v(S3) WHEN v(clk)=0 FALL=6
.measure tran S_2_4 FIND v(S4) WHEN v(clk)=0 FALL=6
.measure tran S_2_5 FIND v(S5) WHEN v(clk)=0 FALL=6
.measure tran S_2_6 FIND v(S6) WHEN v(clk)=0 FALL=6
.measure tran S_2_7 FIND v(S7) WHEN v(clk)=0 FALL=6

.measure tran S_3_0 FIND v(S0) WHEN v(clk)=0 FALL=7
.measure tran S_3_1 FIND v(S1) WHEN v(clk)=0 FALL=7
.measure tran S_3_2 FIND v(S2) WHEN v(clk)=0 FALL=7
.measure tran S_3_3 FIND v(S3) WHEN v(clk)=0 FALL=7
.measure tran S_3_4 FIND v(S4) WHEN v(clk)=0 FALL=7
.measure tran S_3_5 FIND v(S5) WHEN v(clk)=0 FALL=7
.measure tran S_3_6 FIND v(S6) WHEN v(clk)=0 FALL=7
.measure tran S_3_7 FIND v(S7) WHEN v(clk)=0 FALL=7

.measure tran S_4_0 FIND v(S0) WHEN v(clk)=0 FALL=8
.measure tran S_4_1 FIND v(S1) WHEN v(clk)=0 FALL=8
.measure tran S_4_2 FIND v(S2) WHEN v(clk)=0 FALL=8
.measure tran S_4_3 FIND v(S3) WHEN v(clk)=0 FALL=8
.measure tran S_4_4 FIND v(S4) WHEN v(clk)=0 FALL=8
.measure tran S_4_5 FIND v(S5) WHEN v(clk)=0 FALL=8
.measure tran S_4_6 FIND v(S6) WHEN v(clk)=0 FALL=8
.measure tran S_4_7 FIND v(S7) WHEN v(clk)=0 FALL=8

.measure tran S_5_0 FIND v(S0) WHEN v(clk)=0 FALL=9
.measure tran S_5_1 FIND v(S1) WHEN v(clk)=0 FALL=9
.measure tran S_5_2 FIND v(S2) WHEN v(clk)=0 FALL=9
.measure tran S_5_3 FIND v(S3) WHEN v(clk)=0 FALL=9
.measure tran S_5_4 FIND v(S4) WHEN v(clk)=0 FALL=9
.measure tran S_5_5 FIND v(S5) WHEN v(clk)=0 FALL=9
.measure tran S_5_6 FIND v(S6) WHEN v(clk)=0 FALL=9
.measure tran S_5_7 FIND v(S7) WHEN v(clk)=0 FALL=9


.tran 2p '9*period' Start=0.0
.probe v(*)
.option MEASDGT=5
.option post
.end
