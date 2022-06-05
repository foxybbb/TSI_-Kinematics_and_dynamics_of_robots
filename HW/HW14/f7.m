
function [F]=f7(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
ax=T06(1,3);
dax=dM(1,3);
F=ax-dax; 
end