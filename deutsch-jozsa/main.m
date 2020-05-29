clc
close all
clear variables

n_qubits = 5;
N = 2^(n_qubits);

%-- initial state
initial = zeros(N,1);
initial(1) = 1;

%-- oracle
oracle = DeutschOracleOperator(N);

%-- hadamard transform
Hn = HadamardTransform(n_qubits);

%-- deutsch unitary and evolution
probability = Evolution(Hn,oracle,initial);
Plotting(probability,N)


