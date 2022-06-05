
function [F]=f2(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
ny=T06(2,1);
dny=dM(2,1);
F=ny-dny; 
end