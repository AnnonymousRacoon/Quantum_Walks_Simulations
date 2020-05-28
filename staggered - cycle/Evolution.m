function [probabilities] = Evolution(H_blue,H_red,initial_state,number_of_vertices,theta,steps)
%Evolution:
%Parameters: hamiltonians to each tessellation, initial state, number of
%vertices, an angle to the hamiltonians and time steps
Id = speye(number_of_vertices);
U = (cos(theta)*Id+1i*sin(theta)*H_red)*(cos(theta)*Id+1i*sin(theta)*H_blue);

for t=1:steps
    initial_state = U*initial_state;
end
probabilities = initial_state.*(conj(initial_state));
end

