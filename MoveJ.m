function []=MoveJ(robot,p1,p2,nvp)

deltap = p2-p1;

dev =  deltap/nvp;




for n=1:nvp
  
   p1+(dev*n);
   
end


end





