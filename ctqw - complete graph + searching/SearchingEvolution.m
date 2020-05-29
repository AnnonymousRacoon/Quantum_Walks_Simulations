function [searching_probability] = SearchingEvolution(adjacency,gamma,initial_state,marked_elements,time_array)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

adjacency = adjacency*gamma;
for x = marked_elements
    adjacency(x+1,x+1) = 1;
end

index = 1;
for t = time_array
    final_state = expm(1i*t*adjacency)*initial_state;
    searching_probability(index) = sum(final_state(marked_elements+1).*conj(final_state(marked_elements+1)));
    index = index + 1;
end

end

