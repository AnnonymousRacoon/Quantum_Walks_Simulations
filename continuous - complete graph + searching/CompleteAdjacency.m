function [adjacency] = CompleteAdjacency(number_of_nodes)
%CompleteAdjacency 
% What's going on: adjacency matrix of a complete graph
adjacency = ones(number_of_nodes) - eye(number_of_nodes);

end

