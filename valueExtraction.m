function [dfdi, dfdx, F0] = valueExtraction(F, current, positions, i0, x0)
% This function takes as an input the value of the 2D Function F as input,
% as well as both its two axes and the point where I want its value
% computed ad (i0, x0). As Output I will obtain the corresponding value.

[~, i_index] = min(abs(current - i0));
[~, x_index] = min(abs(positions - x0));


if(i0 < current(12))

    i_index = 12;
    
elseif(i0 > current(end-12))
    
    i_index = length(current) - 12;
    
end


% Differentiation around the point.
dx = positions(2) - positions(1);
di = 0.001;

if(x0 < positions(12))
    F0 = F(i_index, 1);
    
    dfdi = (F(i_index+1, 1) - F(i_index-1, 1)) / (2*di);
    dfdx = (F(i_index, 1) - F(i_index, 1)) / (dx);
    
elseif(x0 > positions(12) && x0 < positions(end-12))

    F0 = F(i_index, x_index);
    
    dfdi = (F(i_index+10, x_index) - F(i_index-10, x_index)) / (20*di);
    dfdx = (F(i_index, x_index+10) - F(i_index, x_index-10)) / (20*dx);
    
else
    F0 = F(i_index, end);
    
    dfdi = (F(i_index+1, end) - F(i_index-1, end)) / (2*di);
    dfdx = (F(i_index, end) - F(i_index, end-1)) / (dx);
    
end



end

