clc
close all 
clear variables

n_qubits = 6;

theta = (pi/n_qubits)*1.0;
gamma = pi*(1.0);
marked = [1];
steps = 12;

qs = Superposition(n_qubits);
UCplus = GroverOracle(n_qubits,gamma,marked);
UCminus = GroverOracle(n_qubits,-gamma,marked);
UB = ApplyRx(n_qubits,-theta);


for t=1:steps
    qs = UCminus*qs;
    qs = UB*qs;
    qs = UCplus*qs;
    qs = UB*qs;
    prob(t) = (sum(qs(marked).*conj(qs(marked))));
end

bar(prob)
xlabel('steps')
ylabel('searching probability')
