function [IT]=invT(matrix)

IT = matrix;
IT(4,:)= []; %remove last row
IT(:,4)= []; %remove last column
IT = IT';

p=[matrix(1,4) matrix(2,4) matrix(3,4)]'; % Express the displacement vector from the original matrix
a = IT * p;

IT(:,4)= a; %Add a column with modified vector
IT(4,:)=matrix(4,:); %saving last row from ariginal matrices


end