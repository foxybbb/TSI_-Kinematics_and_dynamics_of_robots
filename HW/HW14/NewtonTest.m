
RDK = Robolink; 
robot= RDK.Item('UR5');

dM = robot.Pose()
robot.Joints()
thetas = [0.000000 -90.000000 -90.000000 0.000000 90.000000 0.000000];
disp(Newton(dM,thetas));



