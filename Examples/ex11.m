Auvw = [0,0,0]';
Buvw = [0,0,3]';
Cuvw = [0,4,3]';
Duvw = [0,4,0]';
Euvw = [6,0,3]';
Fuvw = [6,0,0]';
Guvw = [6,4,0]';
Huvw = [6,4,3]';

for t=0:0.5:340
    clf
    limit=10;
    view(130,30)
    axis([-limit limit -limit limit -limit limit])
    
line([-10 10], [0 0], [0 0],'Color','r','linewidth',1)
line([0 0], [-10 10], [0 0],'Color','g','linewidth',1)
line([0 0], [0 0], [-10 10],'Color','b','linewidth',1)
    RR=RotaZ(t)
    Axyz=RR*Auvw;
    Bxyz=RR*Buvw;
    Cxyz=RR*Cuvw;
    Dxyz=RR*Duvw;
    Exyz=RR*Euvw;
    Fxyz=RR*Fuvw;
    Gxyz=RR*Guvw;
    Hxyz=RR*Huvw;
    
    drawBox(Axyz,Bxyz,Cxyz,Dxyz,Exyz,Fxyz,Gxyz,Hxyz)
    drawnow;

end



drawBox(Auvw,Buvw,Cuvw,Duvw,Euvw,Fuvw,Guvw,Huvw)
