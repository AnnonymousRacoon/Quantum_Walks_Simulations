function [adjacency] = CompleteKpartiteAdjacency(vertices_each_set)
% Adjacency matrix of a complete k-partite graph, given
% [N1,N2,...,Nm] the number o vertices in each set
m = length(vertices_each_set);
N = sum(vertices_each_set);
adjacency = ones(N,N);

begin = zeros(m,1);
begin(1) = 1;

for x=2:m
    begin(x) = begin(x-1) + vertices_each_set(x-1);
end

for set=1:m
    begin_end_set_vector = begin(set):begin(set)+vertices_each_set(set)-1;
    adjacency(begin_end_set_vector,begin_end_set_vector) = 0;
end
adjacency = sparse(adjacency);


end

