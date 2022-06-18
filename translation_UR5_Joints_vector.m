function [th Mat]=translation_UR5_Joints_vector(robot,translation_value)
th = []

for n=0:translation_value
     Mat = Mat*TranX(1);
     thetas = robot.SolveIK(Mat);
     th = [th;thetas];
end



    

end