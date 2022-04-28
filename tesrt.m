Rx=[1 0 0;...
       0 cosd(x) -sind(x);...
       0 sind(x) cosd(x)];
   
   Ry=[cosd(x) 0 sind(x);...
       0 1 0;...
       -sind(x) 0 cosd(x)];
  Rz=[cosd(x) -sind(x) 0;...
       sind(x) cosd(x) 0;...
       0 0 1];
  
   
   
   ans= Rx*Ry*Rz
   a = mtimes(Rx,Ry)
   \
   
  {1,0,0},{0,cosd(t1),-sind(t1)},{0,sind(t1),cosd(t1)}}
   {cosd(t2),0,sind(t2)},{0,1,0},{-sind(t2),0,cosd(t2)}}
    {cosd(t3),-sind(t3),0},{sind(t3),cosd(t3),0},{0,0,1}}