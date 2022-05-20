function []=drawsist(Rx)
view(130,30)
ux=Rx(1,1);
uy=Rx(2,1);
uz=Rx(3,1);
vx=Rx(1,2);
vy=Rx(2,2);
vz=Rx(3,2);
wx=Rx(1,3);
wy=Rx(2,3);
wz=Rx(3,3);


line([0 ux], [0 uy], [0 uz],'Color','r','linewidth',2)
line([0 vx], [0 vy], [0 vz],'Color','g','linewidth',2)
line([0 wx], [0 wy], [0 wz],'Color','b','linewidth',2)
end