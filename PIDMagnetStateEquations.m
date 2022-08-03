function dxdt = PIDMagnetStateEquations(t,x,F,LL,current,positions,target,kpp,kdp,kip,~,~)

dxdt = zeros(4, 1);

R = 4.1;
m = 0.8766;
g = 9.81;

[~, ~, force] = valueExtraction(F, current, positions, x(4), x(2));
[~, ~, inductance] = valueExtraction(LL, current, positions, x(4), x(2));

dxdt(1) = (force / m  - g);
dxdt(2) = x(1);
dxdt(3) = x(2);
dxdt(4) = (kdp*(target(1)-x(1)) + kpp*(target(2)-x(2))+ ...
    + kip*(target(2)*t - x(3)) +...
    - x(3)*R)/(inductance);
dxdt(5) = x(4);

end