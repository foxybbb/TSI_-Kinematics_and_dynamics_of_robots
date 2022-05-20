

clear
table2BA = [0 -1 0 -300;1 0 0 -600;0 0 1 0;0 0 0 1 ];
table2BB = [0 1 0 600;-1 0 0 400;0 0 1 0;0 0 0 1];

BA2EA = [0 0 1 663.8;-1 0 0 -163.9;0 -1 0 836.4; 0 0 0 1];
BB2EB = [1 0 0 434.315;0 -1 0 -835.355; 0 0 -1 184;0 0 0 1];

table2Cam =[-1 0 0 0;0 1 0 0;0 0 -1 1400;0 0 0 1];

Cam2Box0 = [-1 0 0 370;0 1 0 -230;0 0 -1 0;0 0 0 1];
Cam2Box = Cam2Box0*RotaZ(45);

% class work
%End Effector Robot A T box
EA2box = invT(BA2EA)*invT(table2BA)*table2Cam*Cam2Box

%homework
%End Effector Robot B T box
EB2box = invT(BB2EB)*invT(table2BB)*table2Cam*Cam2Box
%End Effector Robot B T End Effector Robot A
EB2EA = invT(BB2EB)*invT(table2BB)*table2BA*BA2EA
%Base Robot A T box
BA2Box=invT(table2BA)*table2Cam*Cam2Box
%Base Robot B T box
BB2Box=invT(table2BB)*table2Cam*Cam2Box
