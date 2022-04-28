function [T03]=RPP(t1,t2,t3)
T0= eye(4);


T01=[cosd(t1) 0 sind(t1) 0;sind(t1)  0 -cosd(t1) 0; 0 1 0 4;0 0 0 1 ]
T12=[cosd(t2) -sind(t2) 0 4*cosd(t2);sind(t2) cosd(t2) 0 4*sind(t2);0 0 1 0;0 0 0 1]
T23=[sind(t3) 0 cosd(t3) 4*cosd(t3);-cosd(t3) 0 sind(t3) 4*sind(t3);0 -1 0 0; 0 0 0 1]
T02=T01*T12;
T03=T02*T23;

drawsist(T0,2)
drawsist(T01,2)
drawsist(T02,2)
drawsist(T03,2)
line([T0(1,4) T01(1,4)],[T0(2,4) T01(2,4)],[T0(3,4) T01(3,4)])
line([T01(1,4) T02(1,4)],[T01(2,4) T02(2,4)],[T01(3,4) T02(3,4)])
line([T02(1,4) T03(1,4)],[T02(2,4) T03(2,4)],[T02(3,4) T03(3,4)])
end