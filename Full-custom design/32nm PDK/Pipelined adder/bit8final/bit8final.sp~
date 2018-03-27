************************************************************************
* auCdl Netlist:
* 
* Library Name:  Project
* Top Cell Name: bit8final
* View Name:     schematic
* Netlisted on:  Nov 22 21:32:07 2016
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

.SUBCKT C2MOS D Q clkb clk
*.PININFO D:I clkb:I clk:I Q:O
MM6 net17 net7 gnd! gnd! n105 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM4 Q clkb net17 gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM2 net19 D gnd! gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM0 net7 clk net19 gnd! n105 m=1 w=300n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM7 Q clk net16 vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM5 net16 net7 vcc! vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM3 net7 clkb net18 vcc! p105 m=1 w=360n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
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
* Cell Name:    bit41
* View Name:    schematic
************************************************************************

.SUBCKT bit41 A0 A1 A2 A3 B0 B1 B2 B3 Ci Cout S0 S1 S2 S3 SF0 SF1 SF2 SF3 clk 
+ clkb
*.PININFO A0:I A1:I A2:I A3:I B0:I B1:I B2:I B3:I Ci:I clk:I clkb:I Cout:O 
*.PININFO S0:O S1:O S2:O S3:O SF0:O SF1:O SF2:O SF3:O
XI7 A0 net37 clk clkb  C2MOS
XI10 Ci net56 clk clkb  C2MOS
XI9 B0 net57 clk clkb  C2MOS
XI11 A1 net38 clk clkb  C2MOS
XI12 B1 net55 clk clkb  C2MOS
XI20 SF0 net45 clk clkb  C2MOS
XI21 SF1 net46 clk clkb  C2MOS
XI22 SF2 net47 clk clkb  C2MOS
XI14 A2 net39 clk clkb  C2MOS
XI15 B2 net52 clk clkb  C2MOS
XI18 B3 net50 clk clkb  C2MOS
XI19 A3 net40 clk clkb  C2MOS
XI23 SF3 net48 clk clkb  C2MOS
XI24 net45 S0 clk clkb  C2MOS
XI25 net48 S3 clk clkb  C2MOS
XI26 net47 S2 clk clkb  C2MOS
XI27 net46 S1 clk clkb  C2MOS
XI8 net37 net57 net56 net54 SF0  onbit
XI13 net38 net55 net54 net51 SF1  onbit
XI16 net39 net52 net51 net53 SF2  onbit
XI17 net40 net50 net53 Cout SF3  onbit
.ENDS

************************************************************************
* Library Name: Project
* Cell Name:    bit42
* View Name:    schematic
************************************************************************

.SUBCKT bit42 A4 A5 A6 A7 B4 B5 B6 B7 Ci Cout S4 S5 S6 S7 SF4 SF5 SF6 SF7 clk 
+ clkb
*.PININFO A4:I A5:I A6:I A7:I B4:I B5:I B6:I B7:I Ci:I clk:I clkb:I Cout:O 
*.PININFO S4:O S5:O S6:O S7:O SF4:O SF5:O SF6:O SF7:O
XI20 net37 net43 clk clkb  C2MOS
XI6 net42 net46 clk clkb  C2MOS
XI5 net40 net50 clk clkb  C2MOS
XI4 net41 net45 clk clkb  C2MOS
XI27 SF5 S5 clk clkb  C2MOS
XI26 SF6 S6 clk clkb  C2MOS
XI25 SF7 S7 clk clkb  C2MOS
XI24 SF4 S4 clk clkb  C2MOS
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
XI17 net43 net46 net60 Cout SF7  onbit
XI16 net45 net50 net51 net60 SF6  onbit
XI13 net48 net49 net61 net51 SF5  onbit
XI8 net44 net47 Ci net61 SF4  onbit
.ENDS

************************************************************************
* Library Name: Project
* Cell Name:    bit8final
* View Name:    schematic
************************************************************************

.SUBCKT bit8final A0 A1 A2 A3 A4 A5 A6 A7 B0 B1 B2 B3 B4 B5 B6 B7 Ci Cout S0 
+ S1 S2 S3 S4 S5 S6 S7 SF0 SF1 SF2 SF3 SF4 SF5 SF6 SF7 clk clkb
*.PININFO A0:I A1:I A2:I A3:I A4:I A5:I A6:I A7:I B0:I B1:I B2:I B3:I B4:I 
*.PININFO B5:I B6:I B7:I Ci:I clk:I clkb:I Cout:O S0:O S1:O S2:O S3:O S4:O 
*.PININFO S5:O S6:O S7:O SF0:O SF1:O SF2:O SF3:O SF4:O SF5:O SF6:O SF7:O
XI3 A0 A1 A2 A3 B0 B1 B2 B3 Ci net37 S0 S1 S2 S3 SF0 SF1 SF2 SF3 clk clkb  
+ bit41
XI2 net37 net43 clk clkb  C2MOS
XI4 A4 A5 A6 A7 B4 B5 B6 B7 net43 Cout S4 S5 S6 S7 SF4 SF5 SF6 SF7 clk clkb  
+ bit42
.ENDS

