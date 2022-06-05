function [Mat]=XYARCRadius(robot,Mat,arcRadius,angle,quadrant)
 
 px = Mat(1,4);
 py = Mat(2,4);  
 
 if angle < 0 
     for n=-0:-5:angle
   n
   dx =-(arcRadius-arcRadius*cosd(n));
   dy=-arcRadius*sind(n);
  
   switch quadrant
       case 2
        Mat(1,4)=px+(dy);
       Mat(2,4)=py-(dx);  
       case 1
       Mat(1,4)=px+(dx);
       Mat(2,4)=py+(dy);   
       
       case 3
       Mat(1,4)=px-(dy);
       Mat(2,4)=py+(dx);   
       case 4
       Mat(1,4)=px-(dx);
       Mat(2,4)=py-(dy);  
       
   end
   
    Mat=Mat*RotaZ(-1);
     
    robot.setPose(Mat)
     end    
   

 else

   for n=0:5:angle
  
   dx =-(arcRadius-arcRadius*cosd(n));
   dy=-arcRadius*sind(n);
  
   switch quadrant
       case 2
        Mat(1,4)=px+(dy);
       Mat(2,4)=py-(dx);  
       case 1
       Mat(1,4)=px+(dx);
       Mat(2,4)=py+(dy);   
       
       case 3
       Mat(1,4)=px-(dy);
       Mat(2,4)=py+(dx);   
       case 4
       Mat(1,4)=px-(dx);
       Mat(2,4)=py-(dy);  
       
   end
   
    Mat=Mat*RotaZ(1);
     
    robot.setPose(Mat)
   end   
 end
 
end
 
 

