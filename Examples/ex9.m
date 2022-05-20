fixsys=[1 0 0;0 1 0;0 0 1];

start_angle = 0;
end_angle = 360;
a=0

for t=start_angle:0.5:end_angle
clf

Rc=RotaComp(t,t,t);
    
drawsist(fixsys,1)
drawsist(Rc,2)
drawnow
end
