function [prob] = SearchingProbability(final,element,n)
%SearchingProbability
%What's going on: we join the probabilities inside each node, because the
%coin has some contribution
prob=0;
dimensions = [2^n,2^n];
for x=0:2^n-1
    for e=element
        position = Ket2Position([e,x],dimensions);
        amplitude = final(position);
        prob = prob + amplitude*conj(amplitude);
    end
end

end

