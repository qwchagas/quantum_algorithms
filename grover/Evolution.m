function [probability] = Evolution(oracle,diffusion,initial,marked_elements,steps)
probability = zeros(1,steps+1);
probability(1) = sum(initial(marked_elements+1).*conj(initial(marked_elements+1)));
U = diffusion*oracle;
for t = 2:steps+1
    initial = U*initial;
    probability(t) = sum(initial(marked_elements+1).*conj(initial(marked_elements+1)));
end
end

