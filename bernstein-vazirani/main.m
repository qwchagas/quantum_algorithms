clc
close all
clear variables

n_qubits = 3;
N = 2^(n_qubits);
key = 2;

%-- initial state
initial = zeros(N,1);
initial(1) = 1;

%-- oracle
oracle = BVOracleOperator(key,n_qubits);

%-- hadamard transform
Hn = HadamardTransform(n_qubits);

%-- bernstein-vazirani unitary and evolution: 
%-- initial, H, oracle, H, Measurement
probability = Evolution(Hn,oracle,initial);
Plotting(probability,N)
