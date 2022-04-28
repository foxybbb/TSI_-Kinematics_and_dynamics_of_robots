t1 = 0
d1=0 
d2 =0
clf

for d1=0:0.5:5
   cla
   [T03]=RPP(t1,d1,d2);
   drawnow
    
    
end

for d2=0:0.1:5
   cla
   [T03]=RPP(t1,d1,d2);
   drawnow
    
    
end

for t1=0:0.1:270
   cla
   [T03]=RPP(t1,d1,d2);
   drawnow
    
    
end

