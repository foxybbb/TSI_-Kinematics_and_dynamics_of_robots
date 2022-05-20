p1 = [0 -90 -90 0 90 0];
p2 = [48.250986 -100.143448 -78.886642 -0.969910 41.749014 -0.000000];

RDK = robolink() ;

deltap = p2-p1;

dev =  deltap/10;

axis=[];


for n=1:10
  
   axis = [axis;p1+(dev*n)];
   
end

axis

for n=1:size(axis)
    
Newton(dM,axis)


end


