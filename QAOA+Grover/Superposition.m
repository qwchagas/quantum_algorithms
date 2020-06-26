function [qs] = Superposition(n_qubits)
% Superposition with n qubits
qs = ones(2^n_qubits,1)/sqrt(2^n_qubits);
end

