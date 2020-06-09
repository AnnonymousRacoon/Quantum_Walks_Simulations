function [ ] = PlottingSearching(time_steps,probabilities,vertices_each_set,gamma,element)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
plot(time_steps,probabilities,'LineWidth',1.6)
set(gca,'FontSize',16)
xlabel('t','FontSize',16)

ylabel('Probability','FontSize',16)
title(['\gamma=',num2str(gamma), ', N=',num2str(vertices_each_set), ', Searching Element=', num2str(element)],'Color','b')
end

