function [probabilities] = Evolution(adjacency,gamma,time,initial_state)
%Evolution of Continuous-Time Quantum Walk
%Version: March 19th 2020
U = expm(-1i*time*gamma*adjacency);
probabilities = U*initial_state;
probabilities = probabilities.*conj(probabilities);
end

