
function [F]=f10(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
px=T06(1,4);
dpx=dM(1,4);
F=px-dpx; 
end
