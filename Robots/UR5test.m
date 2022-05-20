clear all
t0 = 90;
t2=0 ;
t3 = 0;
t4 =0;
t5 =0;
t6 =0;
d3 = 0;
clf
RDK=Robolink
robot=RDK.Item('UR5')


for t10=0:1:90
   cla
   [T04]=UR5(t0,t0,t0,t0,t0,t0)
   robot.setJoints([t0 t0 t0 t0 t0 t0])
   drawnow
   
 
    
end


for t5=0:1:90
   cla
   [T04]=UR5(t1,t2,t3,t4,t5,t6)
   robot.setJoints([t1 t2 t3 t4 t5 t6])
   drawnow

end


for t6=0:1:90
   cla
   [T04]=UR5(t1,t2,t3,t4,t5,t6)
   robot.setJoints([t1 t2 t3 t4 t5 t6])
   drawnow
  
    
end