clc
close all
clear variables
tic
%-- Parameters
n = 80;% n x n square grid
gamma = 1/4;
time = 38;

%-- Initial State
initial_state = zeros(n^2,1);
position =  ket2position([ceil(n/2)-1 ceil(n/2)-1],[n n]);
initial_state(position) = 1;

%-- Adjacency and Evolution
adjacency = square_adjacency(n);
probabilities = Evolution(sparse(adjacency),gamma,time,sparse(initial_state));
toc
%-- Plotting
SquarePlotting(probabilities,n,gamma,time)
