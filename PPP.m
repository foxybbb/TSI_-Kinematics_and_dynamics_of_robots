function [T03]=PPP(d1,d2,d3)
T0= eye(4);
T01=TranZ(d1)*RotaX(-90);
T12=TranZ(d2)*RotaX(90)*RotaY(90);
T23=TranZ(d3);
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