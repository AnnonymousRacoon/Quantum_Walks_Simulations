function [operator] = FourierCoinOperator(N)
%FourierCoinOperator 
%Parameter: Size of the coin
%What' going on: We construct the Fourier coin operator sized N x N

omega = exp(2*pi*1i/N);
operator = zeros(N,N);
for k=0:N-1
    for l=0:N-1
        operator(k+1,l+1) = omega^(k*l)/sqrt(N);
    end
end

end

