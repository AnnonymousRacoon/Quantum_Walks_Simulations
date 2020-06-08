function [position] = ket2position(ket,dimensions)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x = ket(1);
y = ket(2);

dx = dimensions(1);
dy = dimensions(2);

position = x*dy + y + 1; 

end

