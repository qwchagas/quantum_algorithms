function [grover] = DiffusionOperator(N)
s = ones(N,1)/sqrt(N);
grover = 2*s*(s')-eye(N);
grover = sparse(grover);
end

