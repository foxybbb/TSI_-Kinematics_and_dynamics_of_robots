fixsys=eye(3);   
start_angle = 0;
end_angle = 270;
Auvw = [0.3;0.4;0.5];



for t1=start_angle:0.5:30
clf
hold on
Rc1=RotaY(t1);


Axyz = (Rc1)* (Auvw);
    
drawsist(fixsys,1)
drawsist(Rc1,2)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end
 
for t1=start_angle:0.5:30
clf
hold on
Ru=RotaX(t1);
Rc2=Rc1*Ru

Axyz = (Rc2)*(Auvw);
    
drawsist(fixsys,1)
drawsist(Rc2,2)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end

for t1=start_angle:0.5:30
clf
hold on
Rw=RotaZ(t1);
Rc3=Rc2*Rw

Axyz = (Rc3)*(Auvw);
    
drawsist(fixsys,1)
drawsist(Rc3,2)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end

for t1=start_angle:0.5:30
clf
hold on
Rz=RotaZ(t1);
Rc4=Rz*Rc3;

Axyz = (Rc4)*(Auvw);
    
drawsist(fixsys,1)
drawsist(Rc4,2)
plot3(Axyz(1,1),Axyz(2,1),Axyz(3,1),'Marker','*')
drawnow
end

