function [T06]=DKM_UR5(t1,t2,t3,t4,t5,t6)
t2=-t2+180;
t3=-t3;
t4=-t4;
t5=t5-90;


T0=eye(4);
A01=[0 cosd(t1) -sind(t1) 134.2*sind(t1);...
0 sind(t1) cosd(t1) -134.2*cosd(t1);...
1 0 0 89.2;...
0 0 0 1];
A12=[cosd(t2) -sind(t2) 0 -425*sind(t2);...
sind(t2) cosd(t2) 0 425*cosd(t2);...
0 0 1 118.95;
0 0 0 1];
A02=A01*A12;
A23=[cosd(t3) -sind(t3) 0 -392.25*sind(t3);
sind(t3) cosd(t3) 0 392.25*cosd(t3);...
0 0 1 0;...
0 0 0 1];
A03=A02*A23;
A34=[-sind(t4) 0 cosd(t4) 0;...
cosd(t4) 0 sind(t4) 0;...
0 1 0 -94.75;
0 0 0 1];

A04=A03*A34;
A45=[sind(t5) 0 cosd(t5) 0;...
-cosd(t5) 0 sind(t5) 0;...
0 -1 0 94.75;
0 0 0 1];
A05=A04*A45;
A56=[cosd(t6) -sind(t6) 0 0;
sind(t6) cosd(t6) 0 0;...
0 0 1 82.5;...
0 0 0 1];
T06=A05*A56;



end