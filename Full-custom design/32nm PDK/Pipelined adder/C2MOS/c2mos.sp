************************************************************************
* auCdl Netlist:
* 
* Library Name:  Project
* Top Cell Name: C2MOS
* View Name:     schematic
* Netlisted on:  Nov 22 12:26:31 2016
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

