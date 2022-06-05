

function [F]=f9(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
az=T06(3,3);
daz=dM(3,3);
F=az-daz; 
end
