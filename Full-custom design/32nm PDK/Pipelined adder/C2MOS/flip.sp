************************************************************************
* auCdl Netlist:
* 
* Library Name:  Test_425
* Top Cell Name: flipflop
* View Name:     schematic
* Netlisted on:  Nov 15 00:04:21 2016
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

*.GLOBAL gnd!
+        vcc!

*.PIN gnd!
*+    vcc!

************************************************************************
* Library Name: Test_425
* Cell Name:    flipflop
* View Name:    schematic
************************************************************************

.SUBCKT flipflop CLK D Q
*.PININFO CLK:I D:I Q:O
MM10 Q net013 gnd! gnd! n105 m=1 w=100n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM8 net18 net12 gnd! gnd! n105 m=2 w=100n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM7 net013 CLK net18 gnd! n105 m=2 w=100n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM6 net19 CLK gnd! gnd! n105 m=2 w=100n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM5 net12 net7 net19 gnd! n105 m=2 w=100n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM0 net7 D gnd! gnd! n105 m=1 w=100n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM9 Q net013 vcc! vcc! p105 m=2 w=100n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM4 net013 net12 vcc! vcc! p105 m=4 w=100n l=30n ad=10.5f as=10.5f pd=310n 
+ ps=310n
MM3 net12 CLK vcc! vcc! p105 m=4 w=100n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM2 net7 CLK net21 vcc! p105 m=4 w=100n l=30n ad=10.5f as=10.5f pd=310n ps=310n
MM1 net21 D vcc! vcc! p105 m=4 w=100n l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

