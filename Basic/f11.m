
function [F]=f11(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
py=T06(2,4);
dpy=dM(2,4);
F=py-dpy; 
end
