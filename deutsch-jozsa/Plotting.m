function [] = Plotting(probability,N)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
bar(0:N-1,probability,'FaceColor',[.5 .5 .5],'EdgeColor',[0 .9 .9])
set(gca,'FontSize',18)
xlabel('position','FontSize',18)
ylabel('Probability','FontSize',18)
end

