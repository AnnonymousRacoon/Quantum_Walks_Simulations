function [S] = ShiftBipartiteFlipFlop(n)

dimensions = [n,2,n];
S = zeros(2*n^2,2*n^2);
for c = 0:n-1
    for s = 0:1
        for x = 0:n-1
            row    = ket2position([x,mod(s+1,2),c],dimensions) + 1;
            column = ket2position([c,s,x],dimensions) + 1;
            S(row,column) = 1;
        end
    end
end
        
end

