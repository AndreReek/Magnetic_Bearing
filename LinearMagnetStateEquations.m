function dxdt = LinearMagnetStateEquations(~, x, A, B, K, target)

dxdt = zeros(3, 1);

inductance = 0.17;
R = 4.1;
m = 0.8766;
gain = B * K;

dxdt(1) = (A(1,2)*x(2) + A(1,3)*x(3));
dxdt(2) = x(1);
dxdt(3) = (gain(3,1)*(-x(1)) + gain(3,2)*(target(1)-x(2))+ ...
    + gain(3,3)*(target(2)-x(3)) - x(3)*R)/(inductance);
end
