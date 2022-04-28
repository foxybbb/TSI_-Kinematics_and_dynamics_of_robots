fixsys=eye(3);   
start_angle = 0;
end_angle = 270;

for t=start_angle:0.5:end_angle
clf
hold on
Rz=RotaZ(t);
Axyz = (Rz)* (Auvw);
    
drawsist(fixsys)
drawsist(Rz)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end
