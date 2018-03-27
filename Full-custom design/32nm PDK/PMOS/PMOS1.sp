************************************************************************
* auCdl Netlist:
* 
* Library Name:  Test_425
* Top Cell Name: PMOS1
* View Name:     schematic
* Netlisted on:  Sep  9 16:20:02 2016
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



************************************************************************
* Library Name: Test_425
* Cell Name:    PMOS1
* View Name:    schematic
************************************************************************

.SUBCKT PMOS1 Vd Vg Vs
*.PININFO Vd:I Vg:I Vs:I
XMM0 Vd Vg Vs Vs p105 m=1 w=1.2u l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

