clc
close all
clear variables
%-- parameters
n_qubits = 7;
N = 2^n_qubits;
marked_elements = [0,2,6];
steps = floor(pi*sqrt(N/length(marked_elements))/4); % best choice

%-- initial state
initial_state = ones(N,1);
initial_state = initial_state/sqrt(N);

%-- oracle operator
oracle = OracleOperator(N,marked_elements);

%-- diffusion operator
diffusion = DiffusionOperator(N);

%-- evolution and plotting
probability = Evolution(oracle,diffusion,initial_state,marked_elements,steps);
Plotting(probability,steps)