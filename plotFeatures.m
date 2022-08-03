function [] = plotFeatures(F,LL,current,positions,equilibrium,ncards)

[i0,x0,dfdi,dfdx,F0,dldi,dldx,L0] = equilibriumFeatures(F,LL,current,positions,equilibrium,ncards);

[~, i_index] = min(abs(current - i0));
[~, x_index] = min(abs(positions - x0));

figure(1)
plot(current, F(:, x_index))
hold on
plot(i0,F0, 'x')
hold off
disp(dfdi)


figure(2)
plot(positions, F(i_index, :))
hold on
plot(x0,F0, 'x')
hold off
disp(dfdx)

end

