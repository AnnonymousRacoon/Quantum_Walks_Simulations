clc
clear variables
close all

%-- Graph and Searching Initial Parameters
number_of_nodes = 8;
marked_elements = [1,2];
adjacency = CirculantAdjacency(number_of_nodes,[0,1,1,1,1,1,1,1]);
initial_state = ones(number_of_nodes,1)/sqrt(number_of_nodes);

%-- Adjusting the best gamma parameter
eigens = eig(adjacency);
de = max(eigens) - min(eigens);

gamma = 1/de;

%-- Time steps parameters
initial_time = 0;
final_time = 5; 
number_of_steps = 100;
time_array = linspace(initial_time,final_time,number_of_steps);

%-- Searching Evolution
[searching_probability] = SearchingEvolution(adjacency,gamma,initial_state,marked_elements,time_array);
Plotting(number_of_nodes,searching_probability,time_array,gamma)
