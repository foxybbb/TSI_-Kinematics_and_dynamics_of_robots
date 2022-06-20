close all 
clear all

Mat = [0.000000, -0.999923, 0.012400, 491.355400
    -1.000000, -0.000000, -0.000000, -109.000000
    0.000000, -0.012400, -0.999923, 30.624800
    0.000000, 0.000000, 0.000000, 1.000000];

RDK = Robolink;
robot = RDK.Item('UR5');

thetas = [0.000000, -90.000000, -90.000000, 0.000000, 90.000000, 0.000000];

arcRadius = 50;
px = Mat(1, 4);
py = Mat(2, 4);

for n = 0:10:90

    dx =- (arcRadius - arcRadius * cosd(n));
    dy = -arcRadius * sind(n);

    Mat(1, 4) = px + (dx);
    Mat(2, 4) = py + (dy);

    Mat = Mat * RotaZ(9);

    thetas = Newton(Mat,thetas)
    %thetas = robot.SolveIK(Mat);
    robot.setJoints(thetas);

end

[Mat, thetas] = UR5_TranX(robot, thetas, Mat, 100);

arcRadius = 50;
px = Mat(1, 4);
py = Mat(2, 4);

for n = 0:10:90

    dx =- (arcRadius - arcRadius * cosd(n));
    dy = -arcRadius * sind(n);

    Mat(1, 4) = px + (dy);
    Mat(2, 4) = py - (dx);

    Mat = Mat * RotaZ(9);

    thetas = Newton(Mat,thetas)
   % thetas = robot.SolveIK(Mat);
    robot.setJoints(thetas);

end

[Mat, thetas] = UR5_TranX(robot, thetas, Mat, 300);

arcRadius = 50;
px = Mat(1, 4);
py = Mat(2, 4);

for n = 0:10:90

    dx =- (arcRadius - arcRadius * cosd(n));
    dy = -arcRadius * sind(n);

    Mat(1, 4) = px - (dx);
    Mat(2, 4) = py - (dy);

    Mat = Mat * RotaZ(9);

    thetas = Newton(Mat,thetas)
    %thetas = robot.SolveIK(Mat);
    robot.setJoints(thetas);

end

[Mat, thetas] = UR5_TranX(robot, thetas, Mat, 100);

arcRadius = 50;
px = Mat(1, 4);
py = Mat(2, 4);

for n = 0:10:90

    dx =- (arcRadius - arcRadius * cosd(n));
    dy = -arcRadius * sind(n);

    Mat(1, 4) = px - (dy);
    Mat(2, 4) = py + (dx);

    Mat = Mat * RotaZ(9);

    thetas = Newton(Mat,thetas)
    %thetas = robot.SolveIK(Mat);
    robot.setJoints(thetas);

end

[Mat, thetas] = UR5_TranX(robot, thetas, Mat, 300);
