.TEMP25
.OPTION

.param pvcc = 1.05
.param period1 = 1n
.param period2 = 2n
.param period3 = 3n

.param tr = 30p
.param tf = 30p
.param pw1 = '(period1/2)-(tr+tf/2)'
*.param pw2 = '(period2/2)-(tr+tf/2)'
*.param pw3 = '(period3/2)-(tr+tf/2)'

.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' TT
.include "./onbit.spf"

Vgnd! gnd!  0 DC 0
Vvdd! vdd!  0 DC 1.05

X1 B A Ci gnd! Coutbar Sumbar vcc! onbit

co Coutbar gnd 25.64E-15F

vA  A  0 PULSE (0 1.05 0 tr tf pw1 period1)
vB  B  0 PULSE (0 1.05 0 tr tf pw1 period2)
vCi Ci 0 PULSE (0 1.05 0 tr tf pw1 period3)

.measure TRAN tphl1 TRIG v(A) VAL = '0.5*pvcc' FALL = 1 TARG v(Co) VAL = '0.5*pvcc' FALL = 1
.measure TRAN tplh1 TRIG v(A) VAL = '0.5*pvcc' RISE = 1 TARG v(Co) VAL = '0.5*pvcc' RISE = 1
.measure TRAN tphl2 TRIG v(A) VAL = '0.5*pvcc' FALL = 1 TARG v(S)  VAL = '0.5*pvcc' FALL = 1
.measure TRAN tplh2 TRIG v(A) VAL = '0.5*pvcc' RISE = 1 TARG v(S)  VAL = '0.5*pvcc' RISE = 1


.tran 2p 12n start = 0.0

.probe v(*)
.option post
.end

