table2baseA = [0 -1 0 -300;1 0 0 -600;0 0 1 0;0 0 0 1];


table2baseB = [0 1 0 600;-1 0 0 400;0 0 1 0; 0 0 0 1];





baseA2endA = [0 0 1 663.8;-1 0 0 -163.9;0 -1 0 836.4;0 0 0 1];


baseB2endB = [0.7071 0.7071 0 439.315;0.7071 -0.7071 0 -835.355;0 0 1 184.0;0 0 0 1];






table2cam = [-1 0 0 0;0 1 0 0;0 0 -1 1400;0 0 0 1];



cam2box = [-.7071 -.7071 0 370;-.7071 .7071 0 -230;0 0 -1 0;0 0 0 1];




end2box = invT(baseA2endA)*invT(table2baseA)*table2cam*cam2box;
end2endA = invT(baseB2endB)*invT(table2baseB)*table2baseA*baseA2endA;
baseA2box = invT(table2baseA)*table2cam*cam2box;
baseB2box = invT(table2baseB)*table2cam*cam2box;
 end2box
end2endA
baseA2box
baseB2box
