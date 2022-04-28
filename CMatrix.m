function [Rc]=CMatrix(t1,t2,t3,t4,t5,t6)
I=eye(4);
Rc=RotaY(t2)*RotaZ(t1)*I*RotaZ(t3)*RotaX(t4)*RotaY(t5)*RotaZ(t6);

end