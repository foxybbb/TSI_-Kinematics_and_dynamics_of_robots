function [F]=f1(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
dnx=dM(1,1);
F=T06(1,1)-dnx; 
end