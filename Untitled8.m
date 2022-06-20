
p1 = [0 -90 -90 0 90 0];
p2 = [-6.390565 -117.323322 -127.558798 -24.411792 90.079079 83.610069];

RDK=Robolink;
robot=RDK.Item('UR5');


for n=1:5:size(path)
    robot.setJoints(path(n,:));
    
end
