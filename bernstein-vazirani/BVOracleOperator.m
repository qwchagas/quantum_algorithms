function [operator] = BVOracleOperator(key,N)
%-- the oracle diagonal is just simply a transformation between X and Z
% basis, for example: 010 -> +-+
plus  = [1,1];
minus = [1,-1];

key_binary = dec2bin(key,N);

if(key_binary(1)==dec2bin(0))
    bv_diagonal = plus;
else
    bv_diagonal = minus;
end

for x = 2:N
    
    if(key_binary(x)==dec2bin(0))
        bv_diagonal = kron(bv_diagonal,plus);
    else
        bv_diagonal = kron(bv_diagonal,minus);
    end

end
operator = diag(bv_diagonal);
end

