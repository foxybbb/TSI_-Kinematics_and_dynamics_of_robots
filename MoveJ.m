function [axis]=MoveJ(p1,p2,nvp)

deltap = p2-p1;

dev =  deltap/nvp;

axis=[];


for n=1:nvp
  
   axis = [axis,p1+(dev*n)];
   
end


end





