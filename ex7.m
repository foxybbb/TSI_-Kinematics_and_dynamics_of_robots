fixsys=eye(3);   
start_angle = 0;
end_angle = 270;
Auvw = [0.3;0.4;0.5];

for t1=start_angle:0.5:30
clf
hold on
Rx=RotaX(t1);


Axyz = (Rx)* (Auvw);
    
drawsist(fixsys,1)
drawsist(Rx,2)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end

for t2=start_angle:0.5:45
clf
hold on
Ry=RotaY(t2);
Rc1=Ry*Rx


Axyz = (Rc1)* (Auvw);
    
drawsist(fixsys,1)
drawsist(Rc1,2)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end

for t3=start_angle:0.5:45
clf
hold on
Rz=RotaZ(t3);
Rc2=Rz*Rc1


Axyz = (Rc2)* (Auvw);
    
drawsist(fixsys,1)
drawsist(Rc2,2)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end
