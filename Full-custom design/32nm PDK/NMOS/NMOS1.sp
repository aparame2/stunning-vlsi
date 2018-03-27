************************************************************************
* auCdl Netlist:
* 
* Library Name:  Test_425
* Top Cell Name: NMOS1
* View Name:     schematic
* Netlisted on:  Sep  9 15:15:38 2016
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

*.PIN gnd!

************************************************************************
* Library Name: Test_425
* Cell Name:    NMOS1
* View Name:    schematic
************************************************************************

.SUBCKT NMOS1 Vd Vg
*.PININFO Vd:I Vg:O
XMM0 Vd Vg gnd! gnd! n105 m=1 w=1.2u l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

