function [probabilities] = SearchingEvolution(D,Oracle,initial_state,steps,marked_elements,number_of_nodes)
%SearchingEvolution
%Parameters:  Diffusion Operator, Oracle Operator, Initial State,
%              Steps, Marked Elements and Number of Nodes
%What's going on: We apply the diffusion with oracle operator and
%                  we get the probabilities in the marked vertices
U = D*Oracle;
probabilities = zeros(steps+1,1);
probabilities(1) = SearchingProbability(initial_state,marked_elements,number_of_nodes);
for t=2:steps+1
    initial_state = U*initial_state;
    probabilities(t) = SearchingProbability(initial_state,marked_elements,number_of_nodes);
end

end

