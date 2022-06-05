clear all
a = arduino('COM4','Uno')




posX0 = -readVoltage(a,'A0')/2.5;
posY0 = readVoltage(a,'A1')/2.5;



posY = 0;
posX = 0;
errorX= 0;
errorY= 0;  
%
%For the robot
%

RDK=Robolink;
robot=RDK.Item('UR5');

RobotMatrix = robot.Pose();

%
%For the robot
%


for x=0:1:1000
posX = posX - errorX / 3;
posY = posY - errorY / 3;
pause(0.1)
%ploting
plot(posX,posY,'.')
xlim([-5 5])
ylim([-5 5])

errorX = posX0 - (-readVoltage(a,'A0'))/2.5;
errorY = posY0 -(readVoltage(a,'A1'))/2.5;

%dead zone
if (abs(errorX)<0.15)
    errorX = 0;
end
if (abs(errorY)<0.15)
    errorY = 0;
end



errorX = floor(errorX*10);
errorY = floor(errorY*10);
if  errorX > 10
   errorX = 10;  
end
if  errorX < -10
    errorX = -10;  
end

if  errorY > 10
   errorY = 10;  
end
if  errorY < -10
    errorY = -10;  
end

fprintf("ErX: %f   ErY: %f\n",errorX,errorY);




%
%For the robot
%


RobotMatrix = RobotMatrix*TranZ(errorX);
%RobotMatrix = TranZ(errorX)*RobotMatrix;
robot.setPose(RobotMatrix);

%
%For the robot
%




end