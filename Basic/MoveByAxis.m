



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
 drawnow;
 
 
end




for t2=0:0.5:300
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
 drawnow;
 
 
end
