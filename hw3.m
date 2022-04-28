

limit=15;

Auvw = [0,0,0,1]';
Buvw = [0,0,3,1]';
Cuvw = [0,4,3,1]';
Duvw = [0,4,0,1]';
Euvw = [6,0,3,1]';
Fuvw = [6,0,0,1]';
Guvw = [6,4,0,1]';
Huvw = [6,4,3,1]';


angleStep = 1;
TranslationStep = 0.1;

for d1=0:TranslationStep:5
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    RC=TranY(d1);
    Axyz=RC*Auvw;
    Bxyz=RC*Buvw;
    Cxyz=RC*Cuvw;
    Dxyz=RC*Duvw;
    Exyz=RC*Euvw;
    Fxyz=RC*Fuvw;
    Gxyz=RC*Guvw;
    Hxyz=RC*Huvw;
    
    drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
    drawsist(RC,2)
 drawnow;
 
 
end






for t2=0:angleStep:60
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Ru = RotaX(t2)
    RC1 =Ru*RC 
    Axyz=RC1*Auvw;
    Bxyz=RC1*Buvw;
    Cxyz=RC1*Cuvw;
    Dxyz=RC1*Duvw;
    Exyz=RC1*Euvw;
    Fxyz=RC1*Fuvw;
    Gxyz=RC1*Guvw;
    Hxyz=RC1*Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawsist(RC1,2)
 drawnow;
 
 
end





for t3=0:angleStep:150
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Ru = RotaZ(t3)
    RC2 =RC1* Ru
    Axyz=RC2*Auvw;
    Bxyz=RC2*Buvw;
    Cxyz=RC2*Cuvw;
    Dxyz=RC2*Duvw;
    Exyz=RC2*Euvw;
    Fxyz=RC2*Fuvw;
    Gxyz=RC2*Guvw;
    Hxyz=RC2*Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawsist(RC2,2)
 drawnow;
 
 
end


for d2=0:-TranslationStep:-4
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Tz=TranZ(d2);
    RC3 = RC2*Tz;
    Axyz=RC3*Auvw;
    Bxyz=RC3*Buvw;
    Cxyz=RC3*Cuvw;
    Dxyz=RC3*Duvw;
    Exyz=RC3*Euvw;
    Fxyz=RC3*Fuvw;
    Gxyz=RC3*Guvw;
    Hxyz=RC3*Huvw;
    
    drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
    drawsist(RC3,2)
 drawnow;
 
 
end



for d3=0:TranslationStep:7
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Tz=TranX(d3);
    RC4 = Tz* RC3;
    Axyz=RC4*Auvw;
    Bxyz=RC4*Buvw;
    Cxyz=RC4*Cuvw;
    Dxyz=RC4*Duvw;
    Exyz=RC4*Euvw;
    Fxyz=RC4*Fuvw;
    Gxyz=RC4*Guvw;
    Hxyz=RC4*Huvw;
    
    drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
    drawsist(RC4,2)
 drawnow;
 
 
end




for t3=0:angleStep:300
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Ru = RotaX(t3)
    RC5 =Ru*RC4 ;
    Axyz=RC5*Auvw;
    Bxyz=RC5*Buvw;
    Cxyz=RC5*Cuvw;
    Dxyz=RC5*Duvw;
    Exyz=RC5*Euvw;
    Fxyz=RC5*Fuvw;
    Gxyz=RC5*Guvw;
    Hxyz=RC5*Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawsist(RC5,2)
 drawnow;
 
 
end

for t4=0:angleStep:40
 clf
 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Ru = RotaX(t4)
    RC6 =RC5*Ru
    Axyz=RC6*Auvw;
    Bxyz=RC6*Buvw;
    Cxyz=RC6*Cuvw;
    Dxyz=RC6*Duvw;
    Exyz=RC6*Euvw;
    Fxyz=RC6*Fuvw;
    Gxyz=RC6*Guvw;
    Hxyz=RC6*Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawsist(RC6,2)
 drawnow;
 
 
end
