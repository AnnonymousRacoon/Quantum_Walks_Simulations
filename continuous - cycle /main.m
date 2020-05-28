clc
close all
clear variables
%-- parameters
number_of_nodes = 200;
gamma = 1/2;
time = 70;
%-- adjacency matrix
cycle_adjacency = CycleAdjacency(number_of_nodes);
%-- initial state
elements = [number_of_nodes/2,number_of_nodes/2+1];
initial_state = InitialSuperpositionBox(elements,number_of_nodes);
%-- evolution
probabilities = Evolution(cycle_adjacency,gamma,time,initial_state);
%-- plotting
Plotting(number_of_nodes,probabilities,time,gamma)