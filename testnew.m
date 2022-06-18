fromPosMatrix = [    -0.000000,     0.000000,     1.000000,   474.430000 ;
     -1.000000,    -0.000000,    -0.000000,  -109.000000 ;
      0.000000,    -1.000000,     0.000000,   607.850000 ;
      0.000000,     0.000000,     0.000000,     1.000000 ]; % start position
  thetas = [0.000000, -90.000000, -90.000000, 0.000000, 90.000000, 0.000000]; % initial thetas value, home position
  
  
  
RDK = Robolink;
robot= RDK.Item('UR5');



MoveL(robot,fromPosMatrix*TranX(-200),100)