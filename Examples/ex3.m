t = 0;
fixsys=[1 0 0;0 1 0;0 0 1];
      

start_angle = 0;
end_angle = 30;

for t=start_angle:0.5:end_angle
clf
hold on
Rz=RotaZ(t);

    
drawsist(fixsys)
drawsist(Rz)
drawnow
end
