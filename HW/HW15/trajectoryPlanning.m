fromPosMatrix = [    -0.000000,     0.000000,     1.000000,   474.430000 ;
     -1.000000,    -0.000000,    -0.000000,  -109.000000 ;
      0.000000,    -1.000000,     0.000000,   607.850000 ;
      0.000000,     0.000000,     0.000000,     1.000000 ]; % start position


toPosMatrix = [     0.000000,     0.000000,     1.000000,   474.430000 ;
     -1.000000,    -0.000000,     0.000000,  -584.000000 ;
      0.000000,    -1.000000,     0.000000,   607.850000 ;
      0.000000,     0.000000,     0.000000,     1.000000 ]; % end postion 


thetas = [0.000000, -90.000000, -90.000000, 0.000000, 90.000000, 0.000000]; % initial thetas value, home position
  
delta = (fromPosMatrix - toPosMatrix );
STEPS = 100;
increment = delta / STEPS; 

queue = [];
for i=1:STEPS % calculate thetas array
  
  queue = [queue;Newton((fromPosMatrix-increment*i),thetas)];
  
 end 
disp(queue);


RDK = Robolink;
robot= RDK.Item('UR5');

for i=1:STEPS % drawing on robot DK
   
    robot.setJoints(queue(i,:))
    pause(0.01);
end
 
 