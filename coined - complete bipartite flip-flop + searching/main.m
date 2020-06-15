clc, close all, clear variables

%-- parameters
n = 5;
degree = 2^n;
number_of_nodes = 2*degree;
hilbert_dimension = 2*degree^2;
steps = 10;
element_left = [0,1]; % marked vertices on the left
element_right = [0,1]; % and on the right

%-- diffusion operator
S = ShiftBipartiteFlipFlop(degree);
C = GroverCoin(degree); %C = HadamardCoin(degree);
U = S*C;

%-- initial condition
initial = ones(hilbert_dimension,1)/sqrt(hilbert_dimension);

%-- evolution and plotting
probability = Searching(U,initial,steps,element_left,element_right,hilbert_dimension,degree);
plot(0:steps,probability,'LineWidth',3)
xlabel('step')
ylabel('probability')
