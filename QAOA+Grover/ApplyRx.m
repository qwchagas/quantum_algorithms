function [B] = ApplyRx(n_qubits,theta)
    N = 2^n_qubits;
    X = [0,1;1,0];
    B = zeros(N);
    
    for index = 0:n_qubits-1
        B = B + kron(kron(eye(2^index), X), eye(2^(n_qubits-index-1)));
    end
    
   B = sparse(expm(1i*theta*B));
end

