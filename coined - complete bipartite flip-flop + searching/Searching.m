function [probability] = Searching(U,initial,steps,element_left,element_right,hilbert_dimension,degree)
oracle = eye(hilbert_dimension);
dimensions = [degree,2,degree];

for v = 0:degree-1
    
    for e = element_left
        p = ket2position([e,0,v],dimensions)+1;
        oracle(p,p) = -1;
    end
    
    for e = element_right
        p = ket2position([e,1,v],dimensions)+1;
        oracle(p,p) = -1;
    end
    
end
get_op = (oracle - eye(hilbert_dimension))/2;
probability = zeros(steps+1,1);
probability(1) = ((get_op*initial)')*conj(get_op*initial);
U=sparse(U);

for t=1:steps
    initial = U*oracle*initial;
    probability(t+1) = ((get_op*initial)')*conj(get_op*initial);
    

end

end

