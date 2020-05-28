function [ ] = Plotting(number_of_vertices,probabilities,steps)
% Plotting
% Parameters: number of vertices, probabilities and time steps
plot(0:number_of_vertices-1,probabilities,'LineWidth',1.4)
set(gca,'FontSize',16)
xlabel('x','FontSize',16)

ylabel('Probability','FontSize',16)
title(['steps = ',num2str(steps),' and N = ',num2str(number_of_vertices)],'FontSize',14)
end

