.TEMP 25
.OPTION
.param pvcc = 1.05
.param period1 = 2n
.param period2 = 3n
.param tr = 30p
.param tf = 30p
.param pw1 = '(period1/2)-(tr+tf/2)' 
.param pw2 = '(period2/2)-(tr+tf/2)'

.lib '/afs/asu.edu/users/a/p/a/aparame2/425_lab/iPDK/hspice/saed32nm.lib' TT
.include "./c2mos_new.spf"

Vgnd gnd! 0 DC = 0
Vvcc vcc! 0 DC = 1.05V 

X1 clk D clkb gnd! vcc! Q C2MOS_new 

Vclk clk 0 PULSE (0 1.05 50p tr tf pw1 period1)
Vclkb clkb 0 PULSE (1.05 0 50p tr tf pw1 period1)
VD D 0 PULSE (0 1.05 0 tr tf pw2 period2)

Cg Q gnd! 1f

.measure TRAN t_phl  TRIG v(X1.clk) VAL = '0.5*pvcc' RISE = 3 TARG v(X1.Q) VAL ='0.5*pvcc' FALL = 3
.measure TRAN t_plh TRIG v(X1.clk) VAL = '0.5*pvcc' FALL = 3 TARG v(X1.Q) VAL ='0.5*pvcc' RISE = 3   

.tran 2p 12n Start = 0.0
.probe v(*)
.probe i(*)
.option post
.end