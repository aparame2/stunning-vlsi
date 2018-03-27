.TEMP 25
.OPTION

.param pvcc = 1.05
.param period = 1n
.param tr = 30p
.param tf = 30p
.param pw = '(period/2)-(tr+tf/2)'

.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' TT
.include "./NAND2X04.spf"

Vgnd gnd! 0 DC = 0
Vvcc  vcc! 0 DC = 1.05V
*VA A 0 DC = 0V

X1 B A Y vcc! gnd! 
Cload Y gnd! 20f

VA A 0 PULSE (0 1.05 0 tr tf pw period)
VB B 0 PULSE (0 1.05 0 tr tf pw period)

*.DC VA 0 1.05 0.15

.tran 2p 12n Start = 0.0

.probe v(*)
.probe i(*)
.option post
.end
