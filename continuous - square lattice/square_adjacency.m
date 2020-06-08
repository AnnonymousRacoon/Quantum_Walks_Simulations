function [A] = square_adjacency(n)
A=zeros(n^2,n^2);
d = [n,n];
for x=0:n-1
    for y=0:n-1
    A(ket2position([x y],d),ket2position([mod(x+1,n) y],d)) = 1;   
    A(ket2position([x y],d),ket2position([x mod(y+1,n)],d)) = 1;   
    A(ket2position([x y],d),ket2position([mod(x-1,n) y],d)) = 1;   
    A(ket2position([x y],d),ket2position([x mod(y-1,n)],d)) = 1;   
    end
end


end

