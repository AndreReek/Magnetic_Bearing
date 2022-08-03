function [A, B, C, D] = magnetABCD(current, positions, F, LL, i0, x0)

[dfdi, dfdx, ~] = valueExtraction(F, current, positions, i0, x0);
[~, ~, L0] = valueExtraction(LL, current, positions, i0, x0);
res = 4.1;
m = 0.8766;

A = [0, dfdx/m, dfdi/m;
     1, 0, 0;
     0, 0, -res/L0];

B = [0;
     0;
     1/L0];
 
C = zeros(2,3);

C(1,2) = 1;
C(2, 3) = 1;

D = zeros(2,1);

end

