function [coin] = HadamardCoinOperator(N)
%HadamardCoinOperator 
%Parameter: size of the coin
%What's going on: We construct the Hadamard coin operator sized N x N
hadamard = [1,1;1,-1]/sqrt(2); 
coin = hadamard;

for c=1:log2(H)-1
    coin = kron(coin,hadamard);
end

end

