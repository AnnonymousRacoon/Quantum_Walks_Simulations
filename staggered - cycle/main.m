clc 
close all
clear variables
%-- parameters
n = 200; 
number_of_vertices = 2*n; 
steps = 70;
theta = pi/3;
%-- hamiltonians to each tessellation
[H_red,H_bue] = CycleStaggeredHamiltonians(n);
%-- initial state
elements = [n,n+1];
initial_state = InitialSuperpositionBox(elements,number_of_vertices);
%-- evolution
[probabilities] = Evolution(H_bue,H_red,initial_state,number_of_vertices,theta,steps);
%-- plotting
Plotting(number_of_vertices,probabilities,steps)