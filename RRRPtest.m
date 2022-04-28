t1 = 0;
t2=0 ;
t3 =0;
d1 = 0;
clf

for t1=0:1:90
   cla
   [T04]=RRPR(t1,t2,d1,t3)
   drawnow
    
    
end



for t2=0:-1:-70
   cla
   [T04]=RRPR(t1,t2,d1,t3)
   drawnow
    
    
end


for t3=0:1:40
   cla
   [T04]=RRPR(t1,t2,d1,t3)
   drawnow
    
    
end



for d1=0:0.5:5
   cla
   [T04]=RRPR(t1,t2,d1,t3)
   drawnow
    
    
end
