function [b] = horner(p,x)
n = length(p);
b = [];
b = p(1);

for i = 1:n
b = b.*x + p(i);
end
end
