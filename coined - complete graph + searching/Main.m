clc
close all
clear variables
tic
%--- Parameters
number_of_nodes = 6;
hilbert_dimension = 2^number_of_nodes;
marked_elements = [0];
steps = 40; %floor(2*pi*sqrt(hilbert_dimension/length(marked_elements))/4);

%--- Coin Operator
Coin = GroverCoinOperator(hilbert_dimension); % or HadamardCoinOperator, FourierCoinOperator
I = sparse(eye(hilbert_dimension));
C = kron(I,Coin);

%--- Shift Operator
S = CompleteGraphShiftOperator(number_of_nodes);

%--- Diffusion Operator
U = S*C;

%--- Oracle Operator
Oracle = SearchingOracleOperator(marked_elements,number_of_nodes);

%--- Initial State
initial = ones(2^(2*number_of_nodes),1)/sqrt(2^(2*number_of_nodes));

%--- Searching Evolution
probabilities = SearchingEvolution(U,Oracle,initial,steps,marked_elements,number_of_nodes);
SearchingPlotting(probabilities,marked_elements,steps)

toc