function [Mat]=XYARCRadius(Mat,arcRadius,angle,quadrant)

arcRadius = 50;

   
 px = Mat(1,4);
 py = Mat(2,4);   
   for n=1:angle
   dx =-(arcRadius-arcRadius*cosd(n));
   dy=-arcRadius*sind(n);
  
   switch quadrant
       case 1
       Mat(1,4)=px+(dx);
       Mat(2,4)=py+(dy);    
       case 2
       Mat(1,4)=px+(dx);
       Mat(2,4)=py-(dy);   
       case 3
       Mat(1,4)=px-(dx);
       Mat(2,4)=py+(dy);   
       case 4
       Mat(1,4)=px-(dx);
       Mat(2,4)=py-(dy);  
       
   end
    Mat(1,4)=px+(dx);
    Mat(2,4)=py+(dy);
    Mat=Mat*RotaZ(1);
     
    robot.setPose(Mat)
   end

end