function [] = Plotting(probability,steps)
plot(0:steps,probability,'LineWidth',2)
set(gca,'FontSize',18)
xlabel('step','FontSize',18)
ylabel('Probability','FontSize',18)
end

