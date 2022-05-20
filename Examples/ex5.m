fixsys=eye(3);   
start_angle = 0;
end_angle = 270;

for t=start_angle:0.5:end_angle
clf
hold on
Ry=RotaY(t);
Axyz = (Ry)* (Auvw);
    
drawsist(fixsys)
drawsist(Ry)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end
