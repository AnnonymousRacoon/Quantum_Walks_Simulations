function [ ] = Plotting(number_of_nodes,probabilities,time,gamma)
% Plotting
% Parameters: number of vertices, probabilities and time steps
plot(0:number_of_nodes-1,probabilities,'LineWidth',1.6)
set(gca,'FontSize',16)
xlabel('x','FontSize',16)
xlim([0 number_of_nodes-1])
ylabel('Probability','FontSize',16)
title(['\gamma=',num2str(gamma),', t=',num2str(time),' and N=',num2str(number_of_nodes)],'FontSize',14)
end

