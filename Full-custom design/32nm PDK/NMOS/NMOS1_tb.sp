.TEMP 25
.OPTION

.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' TT
.include "./NMOS1.sp"

Vgnd gnd! 0 DC = 0V
Vvg vg gnd! DC = 0V
Vvd vd gnd! DC = 0V

X_mynmos1 Vd Vg NMOS1

*.DC Vvd 0 1.05 .001 Vvg 0.05 1.05 .15

.DC Vvg 0 1.05 0.001 Vvd 0.15 1.05 0.90

.probe i(*)
.probe v(*)
.option post
.end
