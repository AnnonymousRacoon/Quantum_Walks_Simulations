function [grover] = GroverCoin(degree)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

s = ones(degree,1)/sqrt(degree);

grover = 2*s*(s')-eye(degree);
grover = kron(grover,eye(2*degree));


end

