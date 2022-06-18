fromPosMatrix = [    -0.000000,     0.000000,     1.000000,   474.430000 ;
     -1.000000,    -0.000000,    -0.000000,  -109.000000 ;
      0.000000,    -1.000000,     0.000000,   607.850000 ;
      0.000000,     0.000000,     0.000000,     1.000000 ]; % start position


toPosMatrix =[    -0.279829,    -0.000000,     0.960050,   544.430000 ;
     -0.960050,    -0.000000,    -0.279829,   141.000000 ;
      0.000000,    -1.000000,    -0.000000,   542.850000 ;
      0.000000,     0.000000,     0.000000,     1.000000 ];







thetas = [0.000000, -90.000000, -90.000000, 0.000000, 90.000000, 0.000000]; % initial thetas value, home position
  
delta = (fromPosMatrix - toPosMatrix );
STEPS = 10;
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
    pause(1);
end
 
 