function [probability] = Evolution(Hn,oracle,initial)
final = Hn*oracle*Hn*initial;
probability = final.*conj(final);
end

