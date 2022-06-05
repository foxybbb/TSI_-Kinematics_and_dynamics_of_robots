
function [F]=f12(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
pz=T06(3,4);
dpz=dM(3,4);
F=pz-dpz; 
end
