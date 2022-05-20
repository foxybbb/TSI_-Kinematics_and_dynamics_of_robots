function [out]=RotBaseY(matrix, angle)

p1 = matrix(1,4);
p2 = matrix(2,4);
p3 = matrix(3,4);

Ry=[cosd(angle) 0 sind(angle) 0;...
       0 1 0 0;...
       -sind(angle) 0 cosd(angle) 0;...
       0 0 0 1];
out = Ry * matrix;
   
out(1,4) = p1;
out(2,4) = p2;
out(3,4) = p3;   
     
end