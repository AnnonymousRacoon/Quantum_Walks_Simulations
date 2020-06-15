function [pos] = ket2position(position,dimensions)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
pos = 0;
for x=1:length(dimensions)
    pos = pos + position(x)*prod(dimensions(x+1:end));
end

end

