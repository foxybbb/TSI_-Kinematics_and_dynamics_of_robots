function [T04]=SCARA(t1,t2,d3,t4)
T0= eye(4);

T01=RotaZ(t1)*[1 0 0 425;0 1 0 0;0 0 1 342;0 0 0 1]; 
T12=RotaZ(t2)*[1 0 0 375;0 1 0 0;0 0 1 12;0 0 0 1] 
T23 = [1 0 0 0;0 -1 0 0;0 0 -1 d3-114;0 0 0 1];
T34=RotaZ(t4)*[1 0 0 0;0 1 0 0;0 0 1 56;0 0 0 1];



T02=T01*T12;
T03=T02*T23;
T04=T03*T34;

drawsist(T0,2)
drawsist(T01,2)
drawsist(T02,2)
drawsist(T03,2)
drawsist(T04,2)

P1 =T0*TranZ(342);
line([T0(1,4) P1(1,4)],[T0(2,4) P1(2,4)],[T0(3,4) P1(3,4)]);

line([P1(1,4) T01(1,4)],[P1(2,4) T01(2,4)],[P1(3,4) T01(3,4)]);

P3=T01*TranZ(-2);
line([T01(1,4) P3(1,4)],[T01(2,4) P3(2,4)],[T01(3,4) P3(3,4)]);


line([P3(1,4) T02(1,4)],[P3(2,4) T02(2,4)],[P3(3,4) T02(3,4)]);

line([T02(1,4) T03(1,4)],[T02(2,4) T03(2,4)],[T02(3,4) T03(3,4)]);


line([T03(1,4) T04(1,4)],[T03(2,4) T04(2,4)],[T03(3,4) T04(3,4)]);



end