
function [F]=f5(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
sy=T06(2,2);
dsy=dM(2,2);
F=sy-dsy; 
end