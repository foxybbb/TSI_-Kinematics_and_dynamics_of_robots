t = 0;
fixsys=[1 0 0;0 1 0;0 0 1];
      

start_angle = 0;
end_angle = 30;
for t=start_angle:0.5:end_angle
clf
hold on
Rx=RotaX(t);

    
drawsist(fixsys)
drawsist(Rx)
drawnow
end