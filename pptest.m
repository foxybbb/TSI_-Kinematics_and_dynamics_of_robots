d1 = 0;
a = [ 0.5150   -0.8572         0         0;...
    0.4286    0.2575   -0.8660    2.5000;...
    0.7423    0.4460    0.5000    4.3301;...
         0         0         0    1.0000]
     b = eye(4);
     
    c=[1 0 0 4;...
    0 1 0 0;...
    0 0 1 0;...
    0 0 0 1]
g = eye(4);
for d1=0:0.1:5
 clf
 limit=10;
 view(130,30)
 axis([-limit limit -limit limit -limit limit])
c =invT(a)* b*TranZ(d1)
c =c
drawsist(c,3)
drawsist(a,2)
drawsist(g,2)
drawnow

end