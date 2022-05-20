function [thetas]=Neuton(dM,iniGuess)
t1=iniGuess(1);
t2=iniGuess(2);
t3=iniGuess(3);
t4=iniGuess(4);
t5=iniGuess(5);
t6=iniGuess(6);
dT=0.001

for n=1:100000
t1p=t1+t1+dT;
t2p=t2+t2+dT;
t3p=t3+t3+dT;
t4p=t4+t4+dT;
t5p=t5+t5+dT;
t6p=t6+t6+dT;

    J(1,1)=f1(t1p,t2,t3,t4,t5,t6,dM)-f1(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(1,2)=f1(t1,t2p,t3,t4,t5,t6,dM)-f1(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(1,3)=f1(t1,t2,t3p,t4,t5,t6,dM)-f1(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(1,4)=f1(t1,t2,t3,t4p,t5,t6,dM)-f1(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(1,5)=f1(t1,t2,t3,t4,t5p,t6,dM)-f1(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(1,6)=f1(t1,t2,t3,t4,t5,t6p,dM)-f1(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(2,1)=f2(t1p,t2,t3,t4,t5,t6,dM)-f2(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(2,2)=f2(t1,t2p,t3,t4,t5,t6,dM)-f2(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(2,3)=f2(t1,t2,t3p,t4,t5,t6,dM)-f2(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(2,4)=f2(t1,t2,t3,t4p,t5,t6,dM)-f2(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(2,5)=f2(t1,t2,t3,t4,t5p,t6,dM)-f2(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(2,6)=f2(t1,t2,t3,t4,t5,t6p,dM)-f2(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(3,1)=f3(t1p,t2,t3,t4,t5,t6,dM)-f3(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(3,2)=f3(t1,t2p,t3,t4,t5,t6,dM)-f3(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(3,3)=f3(t1,t2,t3p,t4,t5,t6,dM)-f3(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(3,4)=f3(t1,t2,t3,t4p,t5,t6,dM)-f3(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(3,5)=f3(t1,t2,t3,t4,t5p,t6,dM)-f3(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(3,6)=f3(t1,t2,t3,t4,t5,t6p,dM)-f3(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(4,1)=f4(t1p,t2,t3,t4,t5,t6,dM)-f4(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(4,2)=f4(t1,t2p,t3,t4,t5,t6,dM)-f4(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(4,3)=f4(t1,t2,t3p,t4,t5,t6,dM)-f4(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(4,4)=f4(t1,t2,t3,t4p,t5,t6,dM)-f4(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(4,5)=f4(t1,t2,t3,t4,t5p,t6,dM)-f4(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(4,6)=f4(t1,t2,t3,t4,t5,t6p,dM)-f4(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(5,1)=f5(t1p,t2,t3,t4,t5,t6,dM)-f5(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(5,2)=f5(t1,t2p,t3,t4,t5,t6,dM)-f5(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(5,3)=f5(t1,t2,t3p,t4,t5,t6,dM)-f5(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(5,4)=f5(t1,t2,t3,t4p,t5,t6,dM)-f5(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(5,5)=f5(t1,t2,t3,t4,t5p,t6,dM)-f5(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(5,6)=f5(t1,t2,t3,t4,t5,t6p,dM)-f5(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(6,1)=f6(t1p,t2,t3,t4,t5,t6,dM)-f6(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(6,2)=f6(t1,t2p,t3,t4,t5,t6,dM)-f6(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(6,3)=f6(t1,t2,t3p,t4,t5,t6,dM)-f6(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(6,4)=f6(t1,t2,t3,t4p,t5,t6,dM)-f6(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(6,5)=f6(t1,t2,t3,t4,t5p,t6,dM)-f6(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(6,6)=f6(t1,t2,t3,t4,t5,t6p,dM)-f6(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(7,1)=f7(t1p,t2,t3,t4,t5,t6,dM)-f7(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(7,2)=f7(t1,t2p,t3,t4,t5,t6,dM)-f7(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(7,3)=f7(t1,t2,t3p,t4,t5,t6,dM)-f7(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(7,4)=f7(t1,t2,t3,t4p,t5,t6,dM)-f7(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(7,5)=f7(t1,t2,t3,t4,t5p,t6,dM)-f7(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(7,6)=f7(t1,t2,t3,t4,t5,t6p,dM)-f7(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(8,1)=f7(t1p,t2,t3,t4,t5,t6,dM)-f7(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(8,2)=f8(t1,t2p,t3,t4,t5,t6,dM)-f8(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(8,3)=f8(t1,t2,t3p,t4,t5,t6,dM)-f8(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(8,4)=f8(t1,t2,t3,t4p,t5,t6,dM)-f8(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(8,5)=f8(t1,t2,t3,t4,t5p,t6,dM)-f8(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(8,6)=f8(t1,t2,t3,t4,t5,t6p,dM)-f8(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(9,1)=f7(t1p,t2,t3,t4,t5,t6,dM)-f9(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(9,2)=f7(t1,t2p,t3,t4,t5,t6,dM)-f9(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(9,3)=f7(t1,t2,t3p,t4,t5,t6,dM)-f9(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(9,4)=f7(t1,t2,t3,t4p,t5,t6,dM)-f9(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(9,5)=f7(t1,t2,t3,t4,t5p,t6,dM)-f9(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(9,6)=f7(t1,t2,t3,t4,t5,t6p,dM)-f9(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(10,1)=f10(t1p,t2,t3,t4,t5,t6,dM)-f10(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(10,2)=f10(t1,t2p,t3,t4,t5,t6,dM)-f10(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(10,3)=f10(t1,t2,t3p,t4,t5,t6,dM)-f10(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(10,4)=f10(t1,t2,t3,t4p,t5,t6,dM)-f10(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(10,5)=f10(t1,t2,t3,t4,t5p,t6,dM)-f10(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(10,6)=f10(t1,t2,t3,t4,t5,t6p,dM)-f10(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(11,1)=f11(t1p,t2,t3,t4,t5,t6,dM)-f11(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(11,2)=f11(t1,t2p,t3,t4,t5,t6,dM)-f11(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(11,3)=f11(t1,t2,t3p,t4,t5,t6,dM)-f11(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(11,4)=f11(t1,t2,t3,t4p,t5,t6,dM)-f11(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(11,5)=f11(t1,t2,t3,t4,t5p,t6,dM)-f11(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(11,6)=f11(t1,t2,t3,t4,t5,t6p,dM)-f11(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    J(12,1)=f12(t1p,t2,t3,t4,t5,t6,dM)-f12(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(12,2)=f12(t1,t2p,t3,t4,t5,t6,dM)-f12(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(12,3)=f12(t1,t2,t3p,t4,t5,t6,dM)-f12(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(12,4)=f12(t1,t2,t3,t4p,t5,t6,dM)-f12(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(12,5)=f12(t1,t2,t3,t4,t5p,t6,dM)-f12(t1,t2,t3,t4,t5,t6,dM)/dT;
    J(12,6)=f12(t1,t2,t3,t4,t5,t6p,dM)-f12(t1,t2,t3,t4,t5,t6,dM)/dT;
    
    f(1)=f1(t1,t2,t3,t4,t5,t6,dM);
    f(2)=f2(t1,t2,t3,t4,t5,t6,dM);
    f(3)=f3(t1,t2,t3,t4,t5,t6,dM);
    f(4)=f4(t1,t2,t3,t4,t5,t6,dM);
    f(5)=f5(t1,t2,t3,t4,t5,t6,dM);
    f(6)=f6(t1,t2,t3,t4,t5,t6,dM);
    f(7)=f7(t1,t2,t3,t4,t5,t6,dM);
    f(8)=f8(t1,t2,t3,t4,t5,t6,dM);
    f(9)=f9(t1,t2,t3,t4,t5,t6,dM);
    f(10)=f10(t1,t2,t3,t4,t5,t6,dM);
    f(11)=f11(t1,t2,t3,t4,t5,t6,dM);
    f(12)=f12(t1,t2,t3,t4,t5,t6,dM);
    
    ds=pinv(J)*(-f');
    
    t1=t1+d1(1);
    t2=t2+d2(2);
    t3=t3+d3(3);
    t4=t4+d4(4);
    t5=t5+d5(5);
    t6=t6+d6(6);

   n 
    if(abs(f(1))<1.0e-9 && abs(f(2))<1.0e-9 &&abs(f(3))<1.0e-9 && abs(f(4))<1.0e-9 && ...
            abs(f(5))<1.0e-9 && abs(f(6))<1.0e-9 && abs(f(7))<1.0e-9 && abs(f(8))<1.0e-9 &&...
            abs(f(10))<1.0e-9 && abs(f(11))<1.0e-9 && abs(f(12))<1.0e-9)
     
        break;
     
    end
    
end

T06=UR5(t1,t2,t3,t4,t5,t6);
end
