.TEMP 25
.OPTION

.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' TT
.include "./NMINV.sp"

Vvd vd 0 DC = 1.05V
Vvin vin gnd DC = 0V
Vgnd gnd 0 DC = 0V 

X_myninv Vd Vin Vout gnd NMINV

.DC Vvin 0 1.05 2m

.probe i(*)
.probe v(*)
.option post
.end
