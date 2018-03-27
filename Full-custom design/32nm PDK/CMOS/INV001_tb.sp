.TEMP 25
.OPTION

*.param pvcc = 1.05
*.param period = 1n
*.param tr = 30p
*.param tf = 30p
*.param pw = '(period/2)-(tr+tf/2)' 

.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' TT
.include "./INV001.sp"

Vgnd gnd! 0 DC = 0
Vvcc  vcc! 0 DC = 1.05V
Vvin vin 0 DC = 0V
 

X Vin Vout INV001
Cload Y gnd! 20f

.DC Vvin 0 1.05 0.15


*Vvin vin 0 PULSE (0 2.5 0 tr tf pw period)

*.measure TRAN t_rise TRIG v(X.Vout) VAL = '0.1*pvcc' RISE = 3 TARG v(X.Vout) VAL ='0.9*pvcc' RISE = 3
*.measure TRAN t_fall TRIG v(X.Vout) VAL = '0.9*pvcc' FALL = 3 TARG v(X.Vout) VAL ='0.1*pvcc' FALL = 3  
*.measure TRAN t_phl  TRIG v(X.Vin) VAL = '0.5*pvcc' RISE = 3 TARG v(X.Vout) VAL ='0.5*pvcc' FALL = 3
*.measure TRAN t_plh TRIG v(X.Vin) VAL = '0.5*pvcc' FALL = 3 TARG v(X.Vout) VAL ='0.5*pvcc' RISE = 3   


*.tran 2p 12n Start = 0.0 sweep wp 400n 1200n 100n

.probe v(*)
.probe i(*)
.option post
.end
