close all 
clear all
p1 = [0 -90 -90 0 90 0];
p2 = [-6.390565 -117.323322 -127.558798 -24.411792 90.079079 83.610069];

RDK=Robolink;
robot=RDK.Item('UR5');




Mat = [0.0000   -0.9999    0.0124  491.3554;...
   -1.0000   -0.0000   -0.0000 -109.0000;...
    0.0000   -0.0124   -0.9999   30.6248;...
         0         0         0    1.0000]

robot.setJoints(p1)     
     
robot.MoveJ(Mat)

%0.000000, -119.900000, -122.000000, -27.390000, 90.000000, 0.000000
[th1 Mat] = XYARCRadius(robot,Mat,50,90,1)

[th2 Mat] = translation_UR5_Joints_vector(100,'X');
th = th1+ th2
for n=1:size(th)
    robot.setJoints(th(n,:));
    pause(0.001)
    
end


thetas = robot.Joints()
Mat = robot.SolveFK(thetas)
for n=1:100
    Mat = Mat*TranX(1)   
    thetas = robot.SolveIK(Mat)
    robot.setJoints(thetas)
end
th = XYARCRadius(robot,Mat,50,90,2)


for n=1:size(th)
    robot.setJoints(th(n,:));
    pause(0.001)
    
end
for n=1:100
    Mat = Mat*TranX(1)   
    thetas = robot.SolveIK(Mat)
    robot.setJoints(thetas)
end
th = XYARCRadius(robot,Mat,50,90,4)


for n=1:size(th)
    robot.setJoints(th(n,:));
    pause(0.001)
    
end
th = XYARCRadius(robot,Mat,50,90,3)


for n=1:size(th)
    robot.setJoints(th(n,:));
    pause(0.001)
    
end
for n=1:100
    Mat = Mat*TranX(1)   
    thetas = robot.SolveIK(Mat)
    robot.setJoints(thetas)
end
