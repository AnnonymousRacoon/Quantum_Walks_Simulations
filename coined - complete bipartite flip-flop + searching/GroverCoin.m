function [grover] = GroverCoin(degree)

s = ones(degree,1)/sqrt(degree);

grover = 2*s*(s')-eye(degree);
grover = kron(grover,eye(2*degree));


end

