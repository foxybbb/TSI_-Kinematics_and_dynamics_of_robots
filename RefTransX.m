function [Tx]=RefTransX(ref,d)
Tx = ref;
Tx(4,:)= []; %remove last row
Tx(:,4)= []; %remove last column
p = [d 0 0];
Tx(:,4)= p; %Add a column with modified vector
Tx(4,:)=[0 0 0 1]; %saving last row from ariginal matrices



end