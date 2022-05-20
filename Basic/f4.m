

function [F]=f4(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
sx=T06(1,2);
dsx=dM(1,2);
F=sx-dsx; 
end