function [] = Plotting(probability,N)
bar(0:N-1,probability,'FaceColor',[.5 .5 .5],'EdgeColor',[0 .9 .9])
set(gca,'FontSize',18)
xlabel('position','FontSize',18)
ylabel('Probability','FontSize',18)
end

