function [position] = Ket2Position(ket,dimensions)
%Ket2Position 
%Parameters: ket |x1,x2,...,xn> and the dimensions of each part
%What's going on: we convert the ket into a position in a vector,
x = ket(1);
y = ket(2);

dx = dimensions(1);
dy = dimensions(2);

position = x*dy + y + 1; 

end

