%ejercicio 4;

A = [1 2 -2; 1 1 1; 2 2 1];
b = [7 2 5]'
xe = [1 2 -1]';

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

Tj = -inv(D)*(L+U)
Tg = -inv(L+D)*U

re_gauss = max(abs(eig(Tg)))
re_jacobi = max(abs(eig(Tj)))

for i = 1:20
    xg = Tg*x0+inv(L+D)*b;
    x0 = xg;

end

display(xg)
error_gauss = norm(x0-xg)


for i = 1:20
    xj = Tj*x0+inv(D)*b;
    x0 = xj;

end

display(xj)
error_jacobi = norm(x0-xg)
