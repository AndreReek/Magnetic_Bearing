function dxdt = magnetStateEquations(~, x, F, LL, current, positions, B, K, target)

dxdt = zeros(3, 1);

R = 4.1;
m = 0.8766;
g = 9.81;
gain = B * K;

[~, ~, force] = valueExtraction(F, current, positions, x(3), x(2));
[~, ~, inductance] = valueExtraction(LL, current, positions, x(3), x(2));

dxdt(1) = (force / m  - g);
dxdt(2) = x(1);
dxdt(3) = (gain(3,1)*(target(1)-x(1)) + gain(3,2)*(target(2)-x(2))+ ...
    + gain(3,3)*(target(3)-x(3)) - x(3)*R)/(inductance);
end

