function [F]=f1(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
dnx=dM(1,1);
F=T06(1,1)-dnx; 
end
function [F]=f2(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
ny=T06(2,1);
dny=dM(2,1);
F=ny-dny; 
end
function [F]=f3(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
nz=T06(3,1);
dnz=dM(3,1);
F=nz-dnz; 
end

function [F]=f4(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
sx=T06(1,2);
dsx=dM(1,2);
F=sx-dsx; 
end
function [F]=f5(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
sy=T06(2,2);
dsy=dM(2,2);
F=sy-dsy; 
end
function [F]=f6(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
sz=T06(3,2);
dsz=dM(3,2);
F=sz-dsz; 
end

function [F]=f7(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
ax=T06(1,3);
dax=dM(1,3);
F=ax-dax; 
end
function [F]=f8(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
ay=T06(2,3);
day=dM(2,3);
F=ay-day; 
end
function [F]=f9(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
az=T06(3,3);
daz=dM(3,3);
F=az-daz; 
end


function [F]=f10(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
px=T06(1,4);
dpx=dM(1,4);
F=px-dpx; 
end
function [F]=f11(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
py=T06(2,4);
dpy=dM(2,4);
F=py-dpy; 
end
function [F]=f12(t1,t2,t3,t4,t5,t6,dM)
[T06] = DKM_UR5(t1,t2,t3,t4,t5,t6);
pz=T06(3,4);
dpz=dM(3,4);
F=pz-dpz; 
end

