

 limit=10;

Auvw = [0,0,0,0]';
Buvw = [0,0,3,0]';
Cuvw = [0,4,3,0]';
Duvw = [0,4,0,0]';
Euvw = [6,0,3,0]';
Fuvw = [6,0,0,0]';
Guvw = [6,4,0,0]';
Huvw = [6,4,3,0]';

for d1=0:0.1:6
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    RC = TranX(d1)*eye(4)
    Axyz=RC*Auvw;
    Bxyz=RC*Buvw;
    Cxyz=RC*Cuvw;
    Dxyz=RC*Duvw;
    Exyz=RC*Euvw;
    Fxyz=RC*Fuvw;
    Gxyz=RC*Guvw;
    Hxyz=RC*Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawnow;
 
 
end




for d2=0:0.1:3
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    RC1 = RC*TranX(d2);
    Axyz=RC1*Auvw;
    Bxyz=RC1*Buvw;
    Cxyz=RC1*Cuvw;
    Dxyz=RC1*Duvw;
    Exyz=RC1*Euvw;
    Fxyz=RC1*Fuvw;
    Gxyz=RC1*Guvw;
    Hxyz=RC1*Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawnow;
 
 
end


for t3=0:-0.5:-90
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
  RC2 = RC1 * RotaX(t3)
    Axyz=RC2*Auvw;
    Bxyz=RC2*Buvw;
    Cxyz=RC2*Cuvw;
    Dxyz=RC2*Duvw;
    Exyz=RC2*Euvw;
    Fxyz=RC2*Fuvw;
    Gxyz=RC2*Guvw;
    Hxyz=RC2*Huvw;
    
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawnow;
 
 
end


for t4=0:0.5:90
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
  RC3 =RC2 * RotaZ(t4)
    Axyz=RC3*Auvw;
    Bxyz=RC3*Buvw;
    Cxyz=RC3*Cuvw;
    Dxyz=RC3*Duvw;
    Exyz=RC3*Euvw;
    Fxyz=RC3*Fuvw;
    Gxyz=RC3*Guvw;
    Hxyz=RC3*Huvw;
    
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawnow;
 
 
end
