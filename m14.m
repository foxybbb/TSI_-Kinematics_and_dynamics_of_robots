

 limit=10;

Auvw = [0,0,0,1]';
Buvw = [0,0,3,1]';
Cuvw = [0,4,3,1]';
Duvw = [0,4,0,1]';
Euvw = [6,0,3,1]';
Fuvw = [6,0,0,1]';
Guvw = [6,4,0,1]';
Huvw = [6,4,3,1]';



TO1=[0 -1 0 6;...
     0 0 1 0;...
     -1 0 0 3;...
     0 0 0 1];


TO2 =[-1 0 0 6;...
    0 -1 0 4;...
    0 0 1 0;...
    0 0 0 1];




TO3=[0 1 0 0;...
     0 0 -1 4;...
     -1 0 0 3;...
     0 0 0 1];

 
 
for d1=0:0.1:6
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    RC = TranX(d1)*eye(4)
    Axyz=Auvw;
    Bxyz=Buvw;
    Cxyz=Cuvw;
    Dxyz=Duvw;
    Exyz=Euvw;
    Fxyz=Fuvw;
    Gxyz=Guvw;
    Hxyz=Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawsist(RC,2)
 
 drawsist(TO1,2)
 drawsist(TO2,2)
 drawsist(TO3,2)  
 
 drawnow;
 
 
end




for d2=0:0.1:3
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    RC1 = RC*TranZ(d2);
    Axyz=Auvw;
    Bxyz=Buvw;
    Cxyz=Cuvw;
    Dxyz=Duvw;
    Exyz=Euvw;
    Fxyz=Fuvw;
    Gxyz=Guvw;
    Hxyz=Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawsist(RC1,2)
 
 drawsist(TO1,2)
 drawsist(TO2,2)
 drawsist(TO3,2)  
 
 drawnow;
  
 
end


for t3=0:-1:-90
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
  RC2 = RC1 * RotaX(t3)
    Axyz=Auvw;
    Bxyz=Buvw;
    Cxyz=Cuvw;
    Dxyz=Duvw;
    Exyz=Euvw;
    Fxyz=Fuvw;
    Gxyz=Guvw;
    Hxyz=Huvw;
    
    
    
 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
  drawsist(RC2,2)
   drawsist(TO1,2)
 drawsist(TO2,2)
 drawsist(TO3,2)  
 
 drawnow;
 
 
end


for t4=0:1:90
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
  RC3 =RC2 * RotaZ(t4)
    Axyz=Auvw;
    Bxyz=Buvw;
    Cxyz=Cuvw;
    Dxyz=Duvw;
    Exyz=Euvw;
    Fxyz=Fuvw;
    Gxyz=Guvw;
    Hxyz=Huvw;
    
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
  drawsist(RC3,2)
   drawsist(TO1,2)
 drawsist(TO2,2)
 drawsist(TO3,2)  
 
 drawnow;
 
 
end




for d3=0:0.1:4
 clf

 view(130,30)
 axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    
    RC4 = RC3*TranZ(d3);
    Axyz=Auvw;
    Bxyz=Buvw;
    Cxyz=Cuvw;
    Dxyz=Duvw;
    Exyz=Euvw;
    Fxyz=Fuvw;
    Gxyz=Guvw;
    Hxyz=Huvw;
    

 drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
 drawsist(RC4,2)
 
 drawsist(TO1,2)
 drawsist(TO2,2)
 drawsist(TO3,2)  
 
 drawnow;
  
 
end






