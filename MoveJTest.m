function []=MoveJTest(p1,p2,nvp)

deltap = p2-p1;

dev =  deltap/nvp;

RDK=Robolink;
robot=RDK.Item('UR5');
for n=1:nvp
   axis = p1+(dev*n)
   robot.setJoints(axis)
   
end


end





