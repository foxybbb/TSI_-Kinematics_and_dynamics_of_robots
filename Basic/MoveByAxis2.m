



Auvw = [0,0,0,1]';
Buvw = [0,0,3,1]';
Cuvw = [0,4,3,1]';
Duvw = [0,4,0,1]';
Euvw = [6,0,3,1]';
Fuvw = [6,0,0,1]';
Guvw = [6,4,0,1]';
Huvw = [6,4,3,1]';


for d1=0:0.1:2
 clf
 limit=10;
 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    RC=TranX(d1);
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






for t2=0:1:300
 clf
 limit=10;
 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Ru = RotaZ(t2)
    RC1 = Ru * RC
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



for t3=0:-0.5:-45
 clf
 limit=10;
 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Ru = RotaY(t3);
    RC2 =  RC1*Ru;
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



for d2=0:0.1:2
 clf
 limit=10;
 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    Tx=TranX(d2);
    RC3=RC2*Tx;
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


