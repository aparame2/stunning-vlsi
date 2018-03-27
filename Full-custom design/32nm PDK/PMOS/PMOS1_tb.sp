.TEMP 25
.OPTION

.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' TT
.include "./PMOS1.sp"

Vvs vd 0 DC = 0V
Vvg vg 0 DC = 0V
Vvd vs 0 DC = 0V

X_mypmos1 Vd Vg Vs PMOS1

*.DC Vvs -1.05 0 .001 Vvg -1.05 -0.05 .15

.DC Vvg -1.05 0 0.001 Vvs -1.05 -0.15 0.90 

.probe i(*)
.probe v(*)
.option post
.end
