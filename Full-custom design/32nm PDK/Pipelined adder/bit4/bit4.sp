************************************************************************
* auCdl Netlist:
* 
* Library Name:  Project
* Top Cell Name: bit4
* View Name:     schematic
* Netlisted on:  Nov 22 01:32:27 2016
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

.GLOBAL vcc!
+        gnd!

*.PIN vcc!
*+    gnd!

************************************************************************
* Library Name: Project
* Cell Name:    C2MOS
* View Name:    schematic
************************************************************************

.SUBCKT C2MOS D Q clk clkb
*.PININFO D:I clk:I clkb:I Q:O
MM6 net17 net7 gnd! gnd! n105 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM4 Q clk net17 gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM2 net19 D gnd! gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM0 net7 clkb net19 gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM7 Q clkb net16 vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM5 net16 net7 vcc! vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM3 net7 clk net18 vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM1 net18 D vcc! vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

************************************************************************
* Library Name: Project
* Cell Name:    onbit
* View Name:    schematic
************************************************************************

.SUBCKT onbit A B Ci Coutbar Sumbar
*.PININFO A:I B:I Ci:I Coutbar:O Sumbar:O
MM10 Coutbar net036 gnd! gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM3 Sumbar net023 gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM33 net023 Ci net41 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM29 net41 B net42 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM28 net42 A gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM20 net27 Ci gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM24 net023 net036 net27 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM19 net27 B gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM18 net27 A gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM17 net43 B gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM16 net036 A net43 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM12 net12 B gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM4 net036 Ci net12 gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM5 net12 A gnd! gnd! n105 m=1 w=200n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM9 Coutbar net036 vcc! vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM6 Sumbar net023 vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM32 net023 Ci net40 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM31 net40 B net39 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM30 net39 A vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM23 net26 Ci vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM25 net023 net036 net26 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM22 net26 B vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM21 net26 A vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM15 net44 B vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM14 net036 A net44 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM13 net14 B vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM2 net036 Ci net14 vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM1 net14 A vcc! vcc! p105 m=1 w=240n l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

************************************************************************
* Library Name: Project
* Cell Name:    bit4
* View Name:    schematic
************************************************************************

.SUBCKT bit4 A0 A1 A2 A3 B0 B1 B2 B3 Ci Cout S0 S1 S2 S3 clk clkb
*.PININFO A0:I A1:I A2:I A3:I B0:I B1:I B2:I B3:I Ci:I clk:I clkb:I Cout:O 
*.PININFO S0:O S1:O S2:O S3:O
XI27 net46 S1 clk clkb  C2MOS
XI26 net58 S2 clk clkb  C2MOS
XI25 net48 S3 clk clkb  C2MOS
XI24 net45 S0 clk clkb  C2MOS
XI23 net44 net48 clk clkb  C2MOS
XI19 A3 net24 clk clkb  C2MOS
XI18 B3 net52 clk clkb  C2MOS
XI15 B2 net53 clk clkb  C2MOS
XI14 A2 net60 clk clkb  C2MOS
XI22 net43 net58 clk clkb  C2MOS
XI21 net42 net46 clk clkb  C2MOS
XI20 net25 net45 clk clkb  C2MOS
XI12 A1 net55 clk clkb  C2MOS
XI11 B1 net61 clk clkb  C2MOS
XI9 B0 net57 clk clkb  C2MOS
XI10 Ci net56 clk clkb  C2MOS
XI7 A0 net62 clk clkb  C2MOS
XI17 net24 net52 net50 Cout net44  onbit
XI16 net60 net53 net51 net50 net43  onbit
XI13 net61 net55 net54 net51 net42  onbit
XI8 net62 net57 net56 net54 net25  onbit
.ENDS

