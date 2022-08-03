function [i0,x0,dfdi, dfdx, F0,dldi, dldx, L0] = equilibriumFeatures(F,LL,current,positions,equilibrium,ncards)

i0 = equilibrium{ncards, 3};
x0 = positionConversion(equilibrium{ncards, 4});

% Corresponding value of F(i0, x0). Just change i0, x0
[dfdi, dfdx, F0] = valueExtraction(F, current, positions, i0, x0);
[dldi, dldx, L0] = valueExtraction(LL, current, positions, i0, x0);

end

