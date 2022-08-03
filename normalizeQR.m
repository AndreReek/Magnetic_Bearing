function [Q, R] = normalizeQR(Q,R,maxX1, maxX2, maxX3,maxR)

Q(1,1) = Q(1,1)/maxX1^2;
Q(2,2) = Q(2,2)/maxX2^2;
Q(3,3) = Q(3,3)/maxX3^2;
R = R/maxR^2;

end

