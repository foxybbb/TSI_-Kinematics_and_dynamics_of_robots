BB2BA = [-1 0 0 1000;0 -1 0 0;0 0 1 0;0 0 0 1]
TA2TB = [-1 0 0 0;0 1 0 0;0 0 -1 50;0 0 0 1]

RDK = Robolink; 
robotA= RDK.Item('UR5A');
robotB= RDK.Item('UR5B');



for n=1:10000
a = robotA.Pose();

b = robotB.Pose();

BB2EA = BB2BA*a;
new_b = BB2EA*TA2TB;
robotB.setPose(new_b)
pause(.0001)
n
end