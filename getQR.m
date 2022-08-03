function [Q, R] = getQR(maxX1, maxX2, maxX3)

Q = eye(3);
Q(1,1) = 1/maxX1^2;
Q(2,2) = 1/maxX2^2;
Q(3,3) = 1/maxX3^2;
R = eye(1)/maxR^2;

end

