function [oracle_operator] = OracleOperator(N,marked_elements)
oracle_list = ones(N,1);
oracle_list(marked_elements+1) = -1;
oracle_operator = diag(oracle_list);
oracle_operator = sparse(oracle_operator);
end

