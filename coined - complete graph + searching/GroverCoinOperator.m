function [grover] = GroverCoinOperator(N)
%GroverCoinOperator 
%Parameter: size of the coin
%What's going on: We construct the Grover coin operator sized N x N

s = ones(N,1)/sqrt(N);

grover = 2*s*(s')-eye(N);
grover = sparse(grover);
end

