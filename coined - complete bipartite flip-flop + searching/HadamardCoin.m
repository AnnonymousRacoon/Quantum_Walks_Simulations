function [operator] = HadamardCoin(degree)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
operator = zeros(2*degree^2);
hadamard = [1,1;1,-1]/sqrt(2); 
coin = hadamard;

for c=1:log2(degree)-1
    coin = kron(coin,hadamard);
end

operator = kron(eye(2*degree),coin);

end

