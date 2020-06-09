clc, close all, clear variables

% Parameters
vertices_each_set = [30,30,30,30]; 
N = sum(vertices_each_set);
gamma = 1/(sum(vertices_each_set(2:end)));
time = 25;
searching_element = 1;
time_steps = linspace(0,time,50);

% Initial State
initial_state = ones(N,1)/sqrt(N);

% Adjacency Matrix
adjacency = CompleteKpartiteAdjacency(vertices_each_set);

% Searching and Evolution
evolution_probability = Evolution(adjacency,gamma,time,initial_state);
searching_probability = searching(initial_state,adjacency,gamma,time_steps,searching_element);

PlottingSearching(time_steps,searching_probability,vertices_each_set,gamma,searching_element)
