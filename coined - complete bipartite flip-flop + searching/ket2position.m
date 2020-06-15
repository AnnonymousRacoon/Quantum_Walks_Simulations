function [pos] = ket2position(position,dimensions)

pos = 0;
for x=1:length(dimensions)
    pos = pos + position(x)*prod(dimensions(x+1:end));
end

end

