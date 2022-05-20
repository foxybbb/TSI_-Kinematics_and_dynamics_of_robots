clear all
a = arduino('COM4','Uno')

pos1 = 0;
pos2 = 0;


for x=0:1:1000

    
posX1 = (readVoltage(a,'A0'))
posY1 = -(readVoltage(a,'A1')/5);


if (0.5<posX1) && (posX1<-.5)
    posX1 = 0
end
if (0.5<posY1) && (posY1<-.5)
    posY1 = 0
end   

pos1 = pos1 + posX1;
pos2 = pos2 + posY1;
    
   
plot(pos1,pos2,'.')
xlim([-5 5])
ylim([-5 5])

end
