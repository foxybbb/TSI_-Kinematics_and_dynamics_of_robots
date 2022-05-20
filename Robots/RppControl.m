clear all
close all
t1 = 0;
d1 = 0;
d2 = 0;
alpha = 0.3;
t1Filt = 0;
t2Filt = 0;
t3Filt = 0;
a = arduino('COM4','Uno')

for x=1:1:10000
t1 = (readVoltage(a,'A0'))


  drawnow    
    
end