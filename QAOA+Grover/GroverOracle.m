function [C] = GroverOracle(n_qubits,gamma,marked)
% Grover Oracle
    C = zeros(2^n_qubits,1);
    C(marked) = -1;
    C = diag(C);

    C = sparse(expm(1i*gamma*C));

end

