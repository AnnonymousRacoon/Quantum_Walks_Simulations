function [] = Plotting(number_of_nodes,probabilities,time_array,gamma)
% Plotting
% Parameters: number of vertices, probabilities, time discretization and
% gamma
plot(time_array,probabilities,'LineWidth',2.0)
set(gca,'FontSize',16)
xlabel('time','FontSize',16)
ylabel('probability','FontSize',16)
title(['\gamma=',num2str(gamma),' and N=',num2str(number_of_nodes)],'FontSize',14)
end

