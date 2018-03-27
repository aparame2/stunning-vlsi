************************************************************************
* auCdl Netlist:
* 
* Library Name:  Test_425
* Top Cell Name: INV001
* View Name:     schematic
* Netlisted on:  Sep 12 18:47:16 2016
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

.PIN vcc!
+    gnd!

************************************************************************
* Library Name: Test_425
* Cell Name:    INV001
* View Name:    schematic
************************************************************************

.SUBCKT INV001 Vin Vout
*.PININFO Vin:I Vout:O
XMM0 Vout Vin gnd! gnd! n105 m=1 w=420n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM1 Vout Vin vcc! vcc! p105 m=1 w=504n l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

