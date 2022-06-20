function [th,Mat]=XYARCRadius(robot,Mat,arcRadius,angle,quadrant)
 th = [];
 px = Mat(1,4);
 py = Mat(2,4);  
 thetas = robot.Joints();
 if angle < 0 
     for n=-0:-1:angle
    
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
     
     MoveL(robot,Mat,10)
     end    
   

 else

   for n=0:1:angle
  
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
    
    %thetas = Newton(Mat,thetas)
      thetas = robot.SolveIK(Mat);
    th = [th;thetas];
    
   end   
 end
 
end
 
 

