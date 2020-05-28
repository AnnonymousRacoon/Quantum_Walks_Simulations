function [R_prime] = SearchingOracleOperator(marked_elements,number_of_nodes)
%SearchingOracleOperator
%Parameters: vector with marked elements, number of the nodes
%What's going on: we construct the oracle with the marked vertices
hilbert_dimension = 2^(2*number_of_nodes);
dimensions = [2^number_of_nodes,2^number_of_nodes];
R_prime = zeros(hilbert_dimension);
for v=0:2^number_of_nodes-1
    for e=marked_elements
        p = Ket2Position([e,v],dimensions);
        R_prime(p,p) = 1;
    end
end
R_prime = eye(hilbert_dimension) - 2*R_prime;
end

