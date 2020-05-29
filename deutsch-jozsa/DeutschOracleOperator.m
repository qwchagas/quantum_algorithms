function [oracle_operator] = DeutschOracleOperator(N)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
oracle_vector = [ones(N/2,1);-ones(N/2,1)];
oracle_vector = oracle_vector(randperm(N));
oracle_operator = diag(oracle_vector);
end

