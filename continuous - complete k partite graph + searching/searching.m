function [probabilities] = searching(initial_state,adjacency,gamma,time_steps,element)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

H = -gamma*adjacency;
H(element,element) = H(element,element) -1;

index = 1;
for time=time_steps
    U = expm(-1i*time*H);
    aux_p = U*initial_state;
    probabilities(index) = aux_p(element).*conj(aux_p(element));
    index=index+1;
end

end

