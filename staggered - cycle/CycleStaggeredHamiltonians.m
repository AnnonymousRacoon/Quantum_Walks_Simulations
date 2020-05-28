function [H_red,H_blue] = CycleStaggeredHamiltonians(n)
%CycleStaggeredHamiltonians
%Parameters: 2*n is the graph size
%What's going on: hamiltonians to attached to each tessellation

hilbert_dimension = 2*n;
H_red = spalloc(hilbert_dimension,hilbert_dimension,8*n);
H_blue = spalloc(hilbert_dimension,hilbert_dimension,8*n);

for x=0:n-1
    p1 = 2*x+1;
    p2 = 2*x+1+(1);
    p3 = mod(2*x+2,hilbert_dimension)+1; 
    
    H_blue(p1,p1)=1; H_blue(p1,p2)=1; H_blue(p2,p1)=1; H_blue(p2,p2)=1;
    H_red(p2,p2)=1; H_red(p2,p3)=1; H_red(p3,p2)=1; H_red(p3,p3)=1;
end
H_red = H_red - sparse(eye(hilbert_dimension)); 
H_blue = H_blue - sparse(eye(hilbert_dimension)); 
end

