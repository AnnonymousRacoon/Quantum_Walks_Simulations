function [ ] = SquarePlotting(probabilities,n,gamma,time)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[X,Y] = meshgrid(0:n-1,0:n-1);
Z = zeros(n,n);

for x=0:n-1
    for y=0:n-1
        position =  ket2position([x y],[n n]);
        Z(y+1,x+1) = probabilities(position);
    end
end
surf(X,Y,Z)
shading interp
lighting gouraud
material shiny 
view(45,55)
set(gca,'FontSize',16)
xlabel('x','FontSize',16)
ylabel('y','FontSize',16)
xlim([0 n-1])
ylim([0 n-1])
title(['steps=',num2str(time),', N=',num2str(n),' x ',num2str(n), ' ,\gamma =',num2str(gamma)],'Color','b')

end

