function [T06]=ABB(t1,t2,t3,t4,t5,t6,t7)
T0=eye(4)*RotaZ(t1);
T01=T0*TrMatrx(0,-90,200,680)*RotaZ(t2);
T02=T01*TrMatrx(90,0,-890,0)*RotaZ(t3);
T03=T02*TrMatrx(0,90,-150,0)*RotaZ(t4);
T04=T03*TrMatrx(0,-90,0,880)*RotaZ(t5);
T05=T04*TrMatrx(0,90,0,0)*RotaZ(t6);
T06=T05*TrMatrx(0,0,0,140)*RotaZ(t7);


drawsist(T0,2);
drawsist(T01,2);
drawsist(T02,2);
drawsist(T04,2);
drawsist(T05,2);
drawsist(T06,2);



P1 =T0*TranZ(680);
line([T0(1,4) P1(1,4)],[T0(2,4) P1(2,4)],[T0(3,4) P1(3,4)]);
line([P1(1,4) T01(1,4)],[P1(2,4) T01(2,4)],[P1(3,4) T01(3,4)]);

line([T01(1,4) T02(1,4)],[T01(2,4) T02(2,4)],[T01(3,4) T02(3,4)]);


line([T02(1,4) T03(1,4)],[T02(2,4) T03(2,4)],[T02(3,4) T03(3,4)]);



line([T03(1,4) T04(1,4)],[T03(2,4) T04(2,4)],[T03(3,4) T04(3,4)]);
line([T04(1,4) T05(1,4)],[T04(2,4) T05(2,4)],[T04(3,4) T05(3,4)]);
line([T05(1,4) T06(1,4)],[T05(2,4) T06(2,4)],[T05(3,4) T06(3,4)]);


end