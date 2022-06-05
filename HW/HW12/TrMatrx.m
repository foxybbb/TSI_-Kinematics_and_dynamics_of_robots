function [Ai]=TrMatrx(phi,alpha,ai,di)


Ai = [cosd(phi) (-cosd(alpha)*sind(phi)) sind(alpha)*sind(phi) ai*cosd(phi);sind(phi) cosd(alpha)*cosd(phi) -sind(alpha)*cosd(phi) ai*sind(phi);0 sind(alpha) cosd(alpha) di; 0 0 0 1];



end