************************************************************************
* auCdl Netlist:
* 
* Library Name:  Test_425
* Top Cell Name: NMINV
* View Name:     schematic
* Netlisted on:  Sep 12 16:56:15 2016
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
* Cell Name:    NMINV
* View Name:    schematic
************************************************************************

.SUBCKT NMINV Vd Vin Vout gnd
*.PININFO Vd:I Vin:I gnd:I Vout:O
XMM1 Vout Vin gnd gnd n105 m=1 w=420n l=30n ad=10.5f as=10.5f pd=310n ps=310n
XMM0 Vd Vd Vout gnd n105 m=1 w=420n l=30n ad=10.5f as=10.5f pd=310n ps=310n
.ENDS

