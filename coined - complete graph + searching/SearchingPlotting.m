function [] = SearchingPlotting(prob,element,steps)
%SearchingPlotting
% What's going on: we plot the probabilities by steps
plot(0:steps,prob,'-o','MarkerFaceColor','red','LineWidth',3)
set(gca,'FontSize',18)
xlabel('Step','FontSize',18)
ylabel('Probabilities','FontSize',18)
title(['Steps = ',num2str(steps),', Number of Marked Elements = ',num2str(length(element))],'FontSize',14)
end

