************************************************************************
* auCdl Netlist:
* 
* Library Name:  Project
* Top Cell Name: bit8adder
* View Name:     schematic
* Netlisted on:  Nov 19 17:39:09 2016
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

.GLOBAL gnd!
+        vcc!

*.PIN gnd!
*+    vcc!

************************************************************************
* Library Name: Test_425
* Cell Name:    onbit
* View Name:    schematic
************************************************************************

.SUBCKT onbit A B Ci Coutbar Sumbar
*.PININFO A:I B:I Ci:I Coutbar:O Sumbar:O
XMM10 Coutbar net036 gnd! gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM3 Sumbar net023 gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM33 net023 Ci net41 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM29 net41 B net42 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM28 net42 A gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM20 net27 Ci gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM24 net023 net036 net27 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM19 net27 B gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM18 net27 A gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM17 net43 B gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM16 net036 A net43 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM12 net12 B gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM4 net036 Ci net12 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM5 net12 A gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM9 Coutbar net036 vcc! vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM6 Sumbar net023 vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM32 net023 Ci net40 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM31 net40 B net39 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM30 net39 A vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM23 net26 Ci vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM25 net023 net036 net26 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM22 net26 B vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM21 net26 A vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM15 net44 B vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM14 net036 A net44 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM13 net14 B vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM2 net036 Ci net14 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM1 net14 A vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

************************************************************************
* Library Name: Project
* Cell Name:    C2MOS
* View Name:    schematic
************************************************************************

.SUBCKT C2MOS D Q clk clkb
*.PININFO D:I clk:I clkb:I Q:O
XMM6 net17 net7 gnd! gnd! n105 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM4 Q clk net17 gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM2 net19 D gnd! gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM0 net7 clkb net19 gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM7 Q clkb net16 vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM5 net16 net7 vcc! vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
XMM3 net7 clk net18 vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM1 net18 D vcc! vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

************************************************************************
* Library Name: Project
* Cell Name:    bit8adder
* View Name:    schematic
************************************************************************

.SUBCKT bit8adder A0 A1 A2 A3 A4 A5 A6 A7 B0 B1 B2 B3 B4 B5 B6 B7 clk clkb Ci 
+ Cout S0 S1 S2 S3 S4 S5 S6 S7 SF0 SF1 SF2 SF3 SF4 SF5 SF6 SF7
*.PININFO A0:I A1:I A2:I A3:I A4:I A5:I A6:I A7:I B0:I B1:I B2:I B3:I B4:I 
*.PININFO B5:I B6:I B7:I clk:I clkb:I Ci:I Cout:O S0:O S1:O S2:O S3:O S4:O 
*.PININFO S5:O S6:O S7:O SF0:O SF1:O SF2:O SF3:O SF4:O SF5:O SF6:O SF7:O
XI6 net109 net108 net107 C0 SF0 / onbit
XI7 net112 net136 C0 net139 SF1 / onbit
XI9 net115 net78 net139 net138 SF2 / onbit
XI13 net118 net82 net138 net119 SF3 / onbit
XI15 net122 net121 net120 net140 SF4 / onbit
XI19 net126 net124 net140 net142 SF5 / onbit
XI21 net128 net143 net142 C7 SF6 / onbit
XI25 net133 net131 C7 Cout SF7 / onbit
XI46 SF6 S6 clk clkb / C2MOS
XI4 B0 net109 clk clkb / C2MOS
XI45 SF5 S5 clk clkb / C2MOS
XI47 SF7 S7 clk clkb / C2MOS
XI5 A1 net136 clkb clk / C2MOS
XI42 net84 S3 clk clkb / C2MOS
XI14 A3 net82 clk clkb / C2MOS
XI41 net80 S2 clk clkb / C2MOS
XI16 net86 net121 clk clkb / C2MOS
XI24 net134 net133 clk clkb / C2MOS
XI40 SF2 net80 clk clkb / C2MOS
XI23 net129 net128 clk clkb / C2MOS
XI39 net76 S1 clk clkb / C2MOS
XI10 A2 net78 clk clkb / C2MOS
XI44 SF4 S4 clk clkb / C2MOS
XI8 B1 net112 clk clkb / C2MOS
XI43 SF3 net84 clk clkb / C2MOS
XI22 net96 net143 clk clkb / C2MOS
XI20 net91 net124 clk clkb / C2MOS
XI18 net127 net126 clk clkb / C2MOS
XI17 net90 net122 clk clkb / C2MOS
XI12 B3 net118 clk clkb / C2MOS
XI11 B2 net115 clk clkb / C2MOS
XI3 A0 net108 clk clkb / C2MOS
XI2 Ci net107 clk clkb / C2MOS
XI38 SF1 net76 clk clkb / C2MOS
XI30 B5 net127 clk clkb / C2MOS
XI37 net73 S0 clk clkb / C2MOS
XI28 A4 net86 clk clkb / C2MOS
XI35 SF0 net73 clk clkb / C2MOS
XI26 net102 net131 clk clkb / C2MOS
XI34 A7 net102 clk clkb / C2MOS
XI33 B7 net134 clk clkb / C2MOS
XI29 A5 net91 clk clkb / C2MOS
XI31 A6 net96 clk clkb / C2MOS
XI32 B6 net129 clk clkb / C2MOS
XI27 B4 net90 clk clkb / C2MOS
XI48 net119 net120 clk clkb / C2MOS
.ENDS
