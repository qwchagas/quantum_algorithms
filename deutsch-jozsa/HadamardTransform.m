function [Hn] = HadamardTransform(n_qubits)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
hadamard = [1,1;1,-1]/sqrt(2); 
Hn = hadamard;

for c=1:n_qubits-1
    Hn = kron(Hn,hadamard);
end

end

