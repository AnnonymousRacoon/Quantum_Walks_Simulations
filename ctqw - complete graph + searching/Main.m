clc
close all
clear variables

%-- parameters
number_of_nodes = 8;
gamma = 1/number_of_nodes; % best choice
marked_elements = [0,1]; % numbering 0 to N-1

%-- discretization in time
initial_time = 0;
final_time = pi*sqrt(number_of_nodes/length(marked_elements))/2; % towards the peak
number_of_steps = 100;
time_array = linspace(initial_time,final_time,number_of_steps);

%-- initial state
initial_state = ones(number_of_nodes,1)/sqrt(number_of_nodes);

%-- adjacency matrix and evolution
adjacency_complete = CompleteAdjacency(number_of_nodes);
probability = SearchingEvolution(adjacency_complete,gamma,initial_state,marked_elements,time_array);
Plotting(number_of_nodes,probability,time_array,gamma)