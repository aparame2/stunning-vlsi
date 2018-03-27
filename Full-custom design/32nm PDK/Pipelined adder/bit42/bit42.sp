************************************************************************
* auCdl Netlist:
* 
* Library Name:  Project
* Top Cell Name: bit42
* View Name:     schematic
* Netlisted on:  Nov 22 16:57:13 2016
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
* Cell Name:    bit42
* View Name:    schematic
************************************************************************

.SUBCKT bit42 A4 A5 A6 A7 B4 B5 B6 B7 Ci Cout S4 S5 S6 S7 clk clkb
*.PININFO A4:I A5:I A6:I A7:I B4:I B5:I B6:I B7:I Ci:I clk:I clkb:I Cout:O 
*.PININFO S4:O S5:O S6:O S7:O
XI20 net37 net43 clk clkb  C2MOS
XI6 net42 net46 clk clkb  C2MOS
XI5 net40 net50 clk clkb  C2MOS
XI4 net41 net45 clk clkb  C2MOS
XI27 net54 S5 clk clkb  C2MOS
XI26 net58 S6 clk clkb  C2MOS
XI25 net55 S7 clk clkb  C2MOS
XI24 net53 S4 clk clkb  C2MOS
XI3 net39 net48 clk clkb  C2MOS
XI19 A7 net37 clk clkb  C2MOS
XI18 B7 net42 clk clkb  C2MOS
XI15 B6 net40 clk clkb  C2MOS
XI14 A6 net41 clk clkb  C2MOS
XI2 net35 net49 clk clkb  C2MOS
XI1 net36 net44 clk clkb  C2MOS
XI0 net38 net47 clk clkb  C2MOS
XI12 B5 net35 clk clkb  C2MOS
XI11 A5 net39 clk clkb  C2MOS
XI9 B4 net38 clk clkb  C2MOS
XI7 A4 net36 clk clkb  C2MOS
XI17 net43 net46 net60 Cout net55  onbit
XI16 net45 net50 net51 net60 net58  onbit
XI13 net48 net49 net61 net51 net54  onbit
XI8 net44 net47 Ci net61 net53  onbit
.ENDS

