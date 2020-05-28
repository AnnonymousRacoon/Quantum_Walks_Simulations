function [S] = CompleteGraphShiftOperator(n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
S = zeros(2^(2*n));
dimensions = [2^n,2^n];

for x = 0:2^n-1
    for y = 0:2^n-1
        v1 = Ket2Position([x,y],dimensions);
        v2 = Ket2Position([y,x],dimensions);
        S(v1,v2) = 1;   
    end
end

end

