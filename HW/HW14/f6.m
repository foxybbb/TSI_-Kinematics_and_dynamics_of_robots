
function [F]=f6(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
sz=T06(3,2);
dsz=dM(3,2);
F=sz-dsz; 
end