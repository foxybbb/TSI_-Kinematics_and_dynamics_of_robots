p1 = [0 -90 -90 0 90 0];
p2 = [-6.390565 -117.323322 -127.558798 -24.411792 90.079079 83.610069];

RDK=Robolink;
robot=RDK.Item('UR5');




Mat = [0.0000   -0.9999    0.0124  491.3554;...
   -1.0000   -0.0000   -0.0000 -109.0000;...
    0.0000   -0.0124   -0.9999   30.6248;...
         0         0         0    1.0000]

robot.Pose()

%0.000000, -119.900000, -122.000000, -27.390000, 90.000000, 0.000000

 
Mat = XYARCRadius(robot,Mat,50,90,1)
for n=1:100
  Mat = Mat*TranX(1) 

  robot.setPose(Mat)   
end
Mat = XYARCRadius(robot,Mat,50,90,2)
for n=1:300
  Mat = Mat*TranX(1) 
  robot.setPose(Mat)   
end
Mat = XYARCRadius(robot,Mat,50,90,4)
for n=1:100
  Mat = Mat*TranX(1) 
  robot.setPose(Mat)   
end
Mat = XYARCRadius(robot,Mat,50,90,3)
for n=1:300
  Mat = Mat*TranX(1) 
  robot.setPose(Mat)   
end
