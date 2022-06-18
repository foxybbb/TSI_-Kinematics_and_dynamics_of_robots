function [Mat]=robotMoveL(robot,target,steps)
Mat = robot.Pose() 
delta = Mat - target;
thetas = robot.Joints();
increment= delta/steps
for n=0:steps
thetas = Newton(Mat-increment*n,thetas);
robot.setJoints(thetas);  

end

end