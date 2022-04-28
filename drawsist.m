function []=drawsist(T,size)
 limit=2000;
 axis([-limit limit -limit limit -limit limit])
% 
grid on
view(130,30)
ux=T(1,1);
uy=T(2,1);
uz=T(3,1);
vx=T(1,2);
vy=T(2,2);
vz=T(3,2);
wx=T(1,3);
wy=T(2,3);
wz=T(3,3);
px=T(1,4);
py=T(2,4);
pz=T(3,4);
scale = 100;

line([px (ux*scale)+px], [py (uy*scale)+py], [pz (uz*scale)+pz],'Color','r','linewidth',size)
line([px (vx*scale)+px], [py (vy*scale)+py], [pz (vz*scale)+pz],'Color','g','linewidth',size)
line([px (wx*scale)+px], [py (wy*scale)+py], [pz (wz*scale)+pz],'Color','b','linewidth',size)
end




