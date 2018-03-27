************************************************************************
* auCdl Netlist:
* 
* Library Name:  Project
* Top Cell Name: onbit
* View Name:     schematic
* Netlisted on:  Nov 19 17:27:26 2016
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

