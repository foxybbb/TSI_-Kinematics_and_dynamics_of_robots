clear all
t1 = 0;
t2=0 ;
t4 =0;
d3 = 0;
clf
RDK=Robolink
robot=RDK.Item('Adept')


for t1=0:1:90
   cla
   [T04]=SCARA(t1,t2,d3,t4)
   drawnow
    robot.setJoints([t1 t2 d3 t4])
    
end



for t2=0:-1:-70
   cla
   [T04]=SCARA(t1,t2,d3,t4)
  robot.setJoints([t1 t2 d3 t4])
   drawnow

end


for t4=0:1:40
   cla
   [T04]=SCARA(t1,t2,d3,t4)
   drawnow
  robot.setJoints([t1 t2 d3 t4])
    
end



for d3=0:0.5:5
   cla
   [T04]=SCARA(t1,t2,d3,t4)
   drawnow
    robot.setJoints([t1 t2 d3 t4])
    
end
