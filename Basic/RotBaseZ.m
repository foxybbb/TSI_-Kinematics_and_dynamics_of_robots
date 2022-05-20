function [out]=RotBaseZ(matrix, angle)

p1 = matrix(1,4);
p2 = matrix(2,4);
p3 = matrix(3,4);

Rz=[cosd(angle) -sind(angle) 0 0;...
       sind(angle) cosd(angle) 0 0;...
       0 0 1 0;...
       0 0 0 1];
out = Rz * matrix;
   
out(1,4) = p1;
out(2,4) = p2;
out(3,4) = p3;   
     
end