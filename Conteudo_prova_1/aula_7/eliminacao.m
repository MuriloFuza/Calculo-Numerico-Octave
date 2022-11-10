clc;
A = [6 4 2 5 40; -18 -15 -5 -12 -111; -30 -14 -10 -24 -184; 12 -1 15 43 227]

m21 = - (A(2,1) / A(1,1)); %elemento que deve ser eliminado divido pelo elemento pivo

L2 = m21 * A(1,:) + A(2,:);

A(2,:) = L2

% ----------- % 

m31 = - (A(3,1) / A(1,1)); %elemento que deve ser eliminado divido pelo elemento pivo

L3 = m31 * A(1,:) + A(3,:);
A(3,:) = L3


% ----------- % 

m41 = - (A(4,1) / A(1,1)); %elemento que deve ser eliminado divido pelo elemento pivo

L4 = m41 * A(1,:) + A(4,:);
A(4,:) = L4


% ----------- % 

m32 = - (A(3,2) / A(2,2)); % elemento que deve ser eliminado divido pelo elemento pivo

L3_2 = m32 * A(2,:) + A(3,:); % multiplica pela linha do elemento pivo
A(3,:) = L3_2

% ----------- % 

m42 = - (A(4,2) / A(2,2)); % elemento que deve ser eliminado divido pelo elemento pivo

L4_2 = m42 * A(2,:) + A(4,:); % multiplica pela linha do elemento pivo
A(4,:) = L4_2

% ----------- % 

m43 = - (A(4,3) / A(3,3)); % elemento que deve ser eliminado divido pelo elemento pivo

L4_3 = m43 * A(3,:) + A(4,:); % multiplica pela linha do elemento pivo
A(4,:) = L4_3

% ----------- % 