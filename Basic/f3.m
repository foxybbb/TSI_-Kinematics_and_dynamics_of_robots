
function [F]=f3(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
nz=T06(3,1);
dnz=dM(3,1);
F=nz-dnz; 
end