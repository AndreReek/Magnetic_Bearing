function [out] = positionConversion(pos)
% This function converts scope units into m.

out = ((pos * 0.0053) + 3.16)/1000;

end

