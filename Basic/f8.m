
function [F]=f8(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
ay=T06(2,3);
day=dM(2,3);
F=ay-day; 
end