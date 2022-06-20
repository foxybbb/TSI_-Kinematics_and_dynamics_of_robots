function [Mat,thetas]=UR5_TranX(robot,thetas,Mat,travel) 
steps = travel / 10;

for n=0:steps
    Mat = Mat*TranX(10);
    thetas = Newton(Mat,thetas)
    % thetas = robot.SolveIK(Mat);
    robot.setJoints(thetas); 
end


end