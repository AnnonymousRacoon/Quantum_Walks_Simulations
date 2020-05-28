function [adjacency] = CycleAdjacency(number_of_nodes)
% Adjacency matrix for the cycle 
% Version: March 19th 2020
adjacency = sparse(number_of_nodes,number_of_nodes);

for x=0:number_of_nodes-1
    adjacency(x+1,mod(x-1,number_of_nodes)+1) = 1;
    adjacency(mod(x-1,number_of_nodes)+1,x+1) = 1;
end

end

