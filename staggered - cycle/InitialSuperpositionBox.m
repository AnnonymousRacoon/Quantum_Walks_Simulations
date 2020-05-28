function [initial_state] = InitialSuperpositionBox(elements,N)
%InitialSuperpositionBox
%What's going on: uniformm superposition in the chosen elements in a box
initial_state = zeros(N,1);
for e = elements
    initial_state(e) = 1;
end
initial_state = initial_state/norm(initial_state);
end

